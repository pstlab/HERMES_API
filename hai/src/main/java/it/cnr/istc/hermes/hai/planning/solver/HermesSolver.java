package it.cnr.istc.hermes.hai.planning.solver;

import java.util.ArrayList;
import java.util.List;

import it.cnr.istc.hermes.hai.planning.strategy.PathMetric;
import it.cnr.istc.hermes.hai.planning.strategy.TripHeuristicSearchStrategy;
import it.cnr.istc.pst.platinum.ai.deliberative.solver.Operator;
import it.cnr.istc.pst.platinum.ai.deliberative.solver.SearchSpaceNode;
import it.cnr.istc.pst.platinum.ai.deliberative.solver.Solver;
import it.cnr.istc.pst.platinum.ai.deliberative.strategy.ex.EmptyFringeException;
import it.cnr.istc.pst.platinum.ai.framework.domain.component.Decision;
import it.cnr.istc.pst.platinum.ai.framework.domain.component.DomainComponent;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.lang.ex.NoFlawFoundException;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.lang.ex.NoSolutionFoundException;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.lang.ex.PlanRefinementException;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.lang.flaw.Flaw;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.resolver.ex.UnsolvableFlawException;

/**
 * 
 */
public class HermesSolver extends Solver {
		
	private static final double QUALITY_THRESHOLD = .5;
	
	/**
	 * 
	 * @param timeout
	 */
	protected HermesSolver(long timeout) {
		super("HermesSolver", timeout);
	}
	
	/**
	 * 
	 */
	@Override
	public SearchSpaceNode solve() 
			throws NoSolutionFoundException {
		
		// set solving start time
		long start = System.currentTimeMillis();
		// set solving step counter
		this.stepCounter = 0;
		// last extracted node
		SearchSpaceNode last = null, node = null;
		// search condition
		boolean search = true;
		// solution flag
		boolean solution = false;
		
		// search a solution
		while (search) {
			
			try {
				
				// update step counter
				this.stepCounter++;
				// get time passed from the start 
				long now = System.currentTimeMillis() - start;
				// check timeout
				if (this.timeout > 0 && now > this.timeout) {
					
					// no solution found stop search
					search = false;
					// set solving time
					this.time = System.currentTimeMillis() - start;
					// backtrack from the last propagated node
					this.backtrack(last);
					// timeout exception
					throw new NoSolutionFoundException("Timeout: no solution found after " + this.time + " msecs and " + this.stepCounter + " solving steps");
				}
				
				
				// extract a node from the fringe
				node = this.fringe.dequeue();
				// info message
				String info = "Extracted node [step = " + this.stepCounter + "]:\n"
						+ "- Node: " + node + "\n";
				// check operators 
				if (last != null) {
					
					// add operator info
					info += "- Operators (chronological order):\n";
					// print last node operations
					for (int i = 0; i < node.getOperators().size(); i++) {
						// get operator
						Operator op = node.getOperators().get(i);
						// print operator information
						info += "- Op[" + i + "]: " + op + "\n";
					}
				}
				
				// info log 
				info(info);
				
				// propagate extracted node
				this.contextSwitch(last, node);
				// updated last propagated node
				last = node;
		
				// get computed metric
				PathMetric metric = (PathMetric) node.getDomainSpecificMetric();
				// print path
				DomainComponent comp = this.pdb.getComponentByName("TripPath");
				String timeline ="Path Timeline: ";
				for (Decision dec : comp.getActiveDecisions()) {
					timeline += " -> " + dec.getToken().getPredicate().getGroundSignature() + " ";
                }
				
				// context switch done
				info("[Context Switch] successfully done [step = " + this.stepCounter + "]:\n"
						+ "Plan: " + last.getPlan() + "\n");

				// print information concerning current partial plan	
				debug("Detailed plan after propagation: "  + node.getGenerator() + "\n"
							+ "\tplan:\n"
							+ "\t\tdecisions= " + this.pdb.getPlan().getDecisions() + "\n"
							+ "\t\trelations= " + this.pdb.getPlan().getRelations() + "\n\n");
				
                // print computed path
				info("Metric for the current node:\n" + metric + "\n" + timeline + "\n");
				
				try {
					
					
					// check if the quality is above the desired threshold
					if (metric.getCoverage()  >= QUALITY_THRESHOLD) {
						// prune the search space
						((TripHeuristicSearchStrategy) this.fringe).prune(metric.getCoverage());
					}
					
					// choose the best flaws to solve
					List<Flaw> flaws = new ArrayList<>(this.heuristic.choose());
					// create a branch for each "equivalent" flaw to solve next
					for (Flaw flaw : flaws) {
						
						// expand the search space with the available solutions of the flaw
						for (SearchSpaceNode child : this.expand(node, flaw)) {
							
							// add the node to the fringe
							this.fringe.enqueue(child);
							// expand the search space
							info("Search tree expansion:\n"
									+ "node: " + child + "\n"
									+ "generator: " + child.getGenerator() + "\n");
						}
					}
					
				} catch (NoFlawFoundException ex) {
					
					// check the quality of the computed solution 
					if (metric.getCoverage() < QUALITY_THRESHOLD) {
						
						// skip the current solution and continue the search - no plan refinement is performed
						info("Discard solution under quality threshold (" + QUALITY_THRESHOLD + "):\n" + metric + "\nSearch node: " + node + "\n");
						// set flags (not really necessary)
						search = true;
						solution = false;
						
					} else {
						
						// solution found stop the search
						search = false;
						// set solution flag
						solution = true;
						// set solving time
						this.time = System.currentTimeMillis() - start;
						// pseudo-controllable solution found
						info("Pseudo-controllable solution found after " + (this.time / 1000) + " (secs) and " + this.stepCounter + " solving steps\n");
					}
					
				}
				
			} catch (PlanRefinementException ex) {
				
				// refinement error
				warning("Refinement error [step = " + this.stepCounter + "]:"
						+ "- Solver step: [ContextSwitch]\n"
						+ "- Message: " + ex.getMessage() + "\n"
						+ "- Discarded node: " + node + "\n"
						+ "- Current node: " + last + "\n"
						+ "- Plan:\n" + last.getPlan() + "\n");
				
			} catch (UnsolvableFlawException ex) {
				
				// refinement error
				warning("Unsolvable flaw found  [step = " + this.stepCounter + "]:\n"
						+ "- Solver step: [ChooseFlaws]\n"
						+ "- Message: " + ex.getMessage() + "\n"
						+ "- Backtrack from node: " + last + "\n"
						+ "- Plan:\n" + last.getPlan() + "\n");
				
			}  catch (EmptyFringeException ex)  {
				
				// no solution found stop search
				search = false;
				// set solving time
				this.time = System.currentTimeMillis() - start;
				// throw exception
				throw new NoSolutionFoundException("No pseudo-controllable solution found after " + (this.time / 1000) + " (secs) and " + this.stepCounter + " solving steps\n");
			
			} finally {
				
				// check if stopping search with a solution
				if (!search && solution) {
					
					// clear search data structures
					this.clear();
				}
				
				// check if stopping search without a solution
				if (!search && !solution)  {
					
					// backtrack from the last propagated node
					this.backtrack(last);
					// clear search data structures
					this.clear();
					
				}
			}
			
		} // end while
		
		// get last expanded node
		return last;
	}
	
	/**
	 * 
	 */
	@Override
	public void clear() {
		
		// clear heuristics
		this.heuristic.clear();
		// clear the fringe
		this.fringe.clear();
	}

}
