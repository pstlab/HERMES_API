package it.cnr.istc.hermes.hai.planning.strategy;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import it.cnr.istc.pst.platinum.ai.deliberative.solver.SearchSpaceNode;
import it.cnr.istc.pst.platinum.ai.deliberative.strategy.SearchStrategy;
import it.cnr.istc.pst.platinum.ai.framework.domain.component.DomainComponent;
import it.cnr.istc.pst.platinum.ai.framework.domain.component.pdb.DecisionVariable;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.lang.plan.Plan;

/**
 * 
 */
public class TripHeuristicSearchStrategy extends SearchStrategy {

    /**
	 * 
	 */
	protected TripHeuristicSearchStrategy() {
		super("TripHeuristicSearchStrategy");
	}
	
	/**
	 * 
	 */
	@Override
	public void enqueue(SearchSpaceNode node) {
		
		// compute heuristic cost
		Map<DomainComponent, Double[]> h = this.computeHeuristicCost(node);
		// set heuristic estimation
		node.setHeuristicCost(h);
		
		// get component data
		Plan plan = node.getPlan();
		// initialize path metric
		PathMetric metric = new PathMetric();
		
		// set planned visit duration bounds
		long[] tripDurationBounds = new long[] {
				-1,
				-1
		};
		
		// set path duration bounds
		long[] pathDurationBounds = new long[] {
				0, 
				0		
		};
		
		// get trip window
		List<DecisionVariable> wind = plan.getDecisions(this.pdb.getComponentByName("TripWindow"));
		for (DecisionVariable var : wind) {
			// check window variable
			if (var.getValue().equalsIgnoreCase("Visit")) {
				// get duration
				tripDurationBounds = var.getDuration();
			}
		}
		
		// set data
		metric.setTripDurationBounds(tripDurationBounds);
		// get planned path
		List<DecisionVariable> path = plan.getDecisions(this.pdb.getComponentByName("TripPath"));
		for (DecisionVariable hop : path) {
			
			// update path duration bounds
			pathDurationBounds[0] += hop.getDuration()[0];
			pathDurationBounds[1] += hop.getDuration()[1];
			
			// add hop to the traversed list
			metric.addTraversed(hop);
			metric.updatePoiCounter(hop);
		}
		
		// set duration bound
		metric.setPathDurationBounds(pathDurationBounds);
		// set domain specific metric
		node.setDomainSpecificMetric(metric);		
		
		// check computed coverage
		if (!metric.isCyclicPath()) {
			// add the node to the priority queue
			this.fringe.offer(node);
		}
	}
	
	/**
	 * 
	 */
	@Override
	public int compare(SearchSpaceNode o1, SearchSpaceNode o2) {
		
		// get metrics
		PathMetric m1 = (PathMetric) o1.getDomainSpecificMetric();
		PathMetric m2 = (PathMetric) o2.getDomainSpecificMetric();
		// maximize the coverage of the path
		return m1.getCoverage() > m2.getCoverage() ? -1 : m1.getCoverage() < m2.getCoverage() ? 1 :
					m1.getTraversed().size() > m2.getTraversed().size() ? -1 : m1.getTraversed().size() < m2.getTraversed().size() ? 1 : 
						o1.getPlanHeuristicCost()[0] < o2.getPlanHeuristicCost()[0] ? -1 : o1.getPlanHeuristicCost()[0] > o2.getPlanHeuristicCost()[0] ? 1 :
							o1.getDepth() > o2.getDepth() ? -1 : o1.getDepth() < o2.getDepth() ? 1 :
			 0;
	}
	
	/**
	 * 
	 * @param threshold
	 */
	public void prune(double threshold) {
		
		// list of nodes to remove
		List<SearchSpaceNode> toRemove = new ArrayList<>();
		for (SearchSpaceNode node : this.fringe) {
			// check metric
			PathMetric metric = (PathMetric) node.getDomainSpecificMetric();
			if (metric.getCoverage() < threshold) {
				toRemove.add(node);
			}
		}
		
		// remove the nodes from the fringe
		for (SearchSpaceNode node : toRemove) {
			this.fringe.remove(node);
		}
	}

}
