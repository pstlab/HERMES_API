package it.cnr.istc.hermes.hai.planning;

import it.cnr.istc.hermes.hai.planning.solver.HermesSolver;
import it.cnr.istc.hermes.hai.planning.strategy.TripHeuristicSearchStrategy;
import it.cnr.istc.pst.platinum.ai.deliberative.Planner;
import it.cnr.istc.pst.platinum.ai.deliberative.heuristic.HierarchicalFlawSelectionHeuristic;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.annotation.cfg.FrameworkLoggerConfiguration;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.annotation.cfg.deliberative.FlawSelectionHeuristicsConfiguration;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.annotation.cfg.deliberative.PlannerSolverConfiguration;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.annotation.cfg.deliberative.SearchStrategyConfiguration;
import it.cnr.istc.pst.platinum.ai.framework.utils.log.FrameworkLoggingLevel;


/**
 * 
 */
@PlannerSolverConfiguration(

    // set custom solver 
    solver = HermesSolver.class,

    // set timeout to 3 minute
    timeout = 180000
)
@FlawSelectionHeuristicsConfiguration(
    heuristics = HierarchicalFlawSelectionHeuristic.class
)
@SearchStrategyConfiguration(
    strategy = TripHeuristicSearchStrategy.class
)
@FrameworkLoggerConfiguration(
    level = FrameworkLoggingLevel.OFF
)
public class TripPlanner extends Planner {

    protected TripPlanner() {
        super();
    }
}
