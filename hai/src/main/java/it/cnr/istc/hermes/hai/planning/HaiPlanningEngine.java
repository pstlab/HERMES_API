package it.cnr.istc.hermes.hai.planning;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import it.cnr.istc.hermes.hai.model.Poi;
import it.cnr.istc.hermes.hai.model.TangibleCulturalEntity;
import it.cnr.istc.hermes.hai.model.TripRequest;
import it.cnr.istc.pst.platinum.ai.deliberative.Planner;
import it.cnr.istc.pst.platinum.ai.deliberative.PlannerBuilder;
import it.cnr.istc.pst.platinum.ai.framework.domain.PlanDataBaseBuilder;
import it.cnr.istc.pst.platinum.ai.framework.domain.component.PlanDataBase;
import it.cnr.istc.pst.platinum.ai.framework.domain.component.Token;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.lang.ex.NoSolutionFoundException;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.lang.plan.SolutionPlan;
import it.cnr.istc.pst.platinum.ai.framework.microkernel.lang.plan.Timeline;

/**
 * 
 */
public class HaiPlanningEngine {

    private String homePath;

    /**
     * 
     * @param homePath
     */
    public HaiPlanningEngine(String homePath) {
        this.homePath = homePath;
    }

    /**
     * Create a domain specification file (DDL) and returns the file system path to the file
     * 
     * @param pois
     * @param request
     * @return
     */
    public synchronized String generatePlanningModel(List<Poi> pois, TripRequest request) throws IOException {

        // get random generator
        Random rand = new Random(System.currentTimeMillis());
        // compute trip delta
        double trpDelta = rand.nextInt(1, 100);
        String ddl = "DOMAIN TRIP_PLANNING {\n\n";
        // set temporal module
        ddl += "\tTEMPORAL_MODULE tm = [0, " + (request.getDuration() + Math.round(trpDelta)) + "], 1000;\n\n";

        // list of generated path values
        List<String> pathValues = new ArrayList<>();


        // generate SV of planning decisions
        ddl += "\tCOMP_TYPE SingletonStateVariable PlanningDecisionType(Idle(), MakeVisitDecision()) {\n\n";
        ddl += "\t\tVALUE Idle() [1, +INF]\n";
        ddl += "\t\tMEETS {\n";
        ddl += "\t\t\tMakeVisitDecision();\n";
        ddl += "\t\t}\n";

        ddl += "\t\tVALUE MakeVisitDecision() [1, +INF]\n";
        ddl += "\t\tMEETS {\n";
        ddl += "\t\t\tIdle();\n";
        ddl += "\t\t}\n";

        // close SV 
        ddl += "\n\t}\n\n";

        // generate SV of possible paths
        ddl += "\tCOMP_TYPE SingletonStateVariable TripPathType(\n\t\tHome(), Finish(), \n";
        for (int index = 0; index < pois.size(); index++) {
            
            // get source POI
            Poi s = pois.get(index);
            String pathValue = "Visit_" + s.getId() + "()";
            // generate value
            ddl +="\t\t " + pathValue + ", ";
            pathValues.add(pathValue);


            // add transition from Home
            ddl += "Move_Home_" + s.getId() + "(), ";


            // generate values of pssible transitions
            for (int jndex = 0; jndex < pois.size(); jndex++) {

                // check index
                if (index != jndex) {

                    // get target POI
                    Poi t = pois.get(jndex);
                    pathValue = "Move_" + s.getId() + "_" + t.getId() + "()";
                    // generate value transition    
                    ddl += pathValue + ", ";
                }
            }

            ddl += "\n";
        }

        // close value declaration
        ddl += "\t) {\n\n";


        // set home value specification Home() and related transition constraints: Home() -> Move_Home_POI_X()
        ddl += "\t\tVALUE Home() [1, 1]\n";
        ddl += "\t\tMEETS {\n";
        for (int index = 0; index < pois.size(); index++) {
            // get target POI
            Poi t = pois.get(index);   
            ddl += "\t\t\tMove_Home_" + t.getId() + "();\n";
        }
        ddl += "\t\t}\n\n";

        // set finish value specification Finish() and related transition constraints: Finish() -> Home()
        ddl += "\t\tVALUE Finish() [1, +INF]\n";
        ddl += "\t\tMEETS {\n";
        ddl += "\t\t\tHome();\n";
        ddl += "\t\t}\n\n";

        for (int index = 0; index < pois.size(); index++) {
            // get target POI
            Poi t = pois.get(index);
            // get random traverse time
            long st = rand.nextInt(1, 10);
            double stDelta = st * .2;

            ddl += "\t\tVALUE Move_Home_" + t.getId() + "() [" + Math.max(1, Math.round(st - stDelta)) + ", " + Math.round(st + stDelta) + "]\n";
            ddl += "\t\tMEETS {\n";
            ddl += "\t\t\tVisit_" + t.getId() + "();\n";
            ddl += "\t\t}\n\n";
        }

        // set value specification Visit_POI_X() and related transition constraints: Visit_POI_X() -> Move_POI_X_POI_Y()
        for (int index = 0; index < pois.size(); index++) {
            
            // get source POI
            Poi s = pois.get(index);
            // set poi duration
            long poiDuration = ((TangibleCulturalEntity) s.getTangible()).getVisitingTime();
            // set duration delta
            double delta = poiDuration * .2; 

            // generate value and set the expected duration of the visit 
            ddl +="\t\tVALUE Visit_" + s.getId() + "() [" + 
                Math.max(1, Math.round(poiDuration - delta)) + ", " + Math.round(poiDuration + delta) +"]\n";

            ddl += "\t\tMEETS {\n";
            // generate possible transitions
            for (int jndex = 0; jndex < pois.size(); jndex++) {

                // check index
                if (index != jndex) {

                    // get target POI
                    Poi t = pois.get(jndex);
                    // generate value transition    
                    ddl += "\t\t\tMove_" + s.getId() + "_" + t.getId() + "();\n";
                }
            }

            // add closing transition: Visit_POI_X() -> Finish()
            ddl += "\t\t\tFinish();\n";

            // close transition constraint of SV's value
            ddl += "\t\t}\n\n";

            // set transition constraints: Move_POI_X_POI_Y() -> Visit_POI_Y()
            for (int jndex = 0; jndex < pois.size(); jndex++) {

                // check index
                if (index != jndex) {

                    // get target POI
                    Poi t = pois.get(jndex);
                    // get random traverse time
                    long st = rand.nextInt(1, 10);
                    double stDelta = st * .2;

                    // set value and transition
                    ddl += "\t\tVALUE Move_" + s.getId() + "_" + t.getId() + "() [" + Math.max(1, Math.round(st - stDelta)) + ", " + Math.round(st + stDelta) +"]\n";
                    ddl += "\t\tMEETS {\n";
                    ddl += "\t\t\tVisit_" + t.getId() + "();\n";
                    ddl += "\t\t}\n\n";
                }
            }
        }

        // close SV of possible paths
        ddl += "\n\t}\n\n";


        // generate trip window SV
        ddl += "\tCOMP_TYPE SingletonStateVariable TripWindowType(None(), Visit()) {\n\n";
        ddl += "\t\tVALUE None() [1, 1]\n\t\tMEETS {\n\t\t\tVisit();\n\t\t}\n\n";
        ddl += "\t\tVALUE Visit() [" + request.getDuration() + ", " + request.getDuration() + "]\n\t\tMEETS {\n\t\t\tNone();\n\t\t}\n\n";
        // close SV
        ddl += "\n\t}\n\n";


        // specify components
        ddl += "\tCOMPONENT TripPlanning {FLEXIBLE decisions(functional)} : PlanningDecisionType;\n";
        ddl += "\tCOMPONENT TripPath {FLEXIBLE hops(primitive)} : TripPathType;\n";
        ddl += "\tCOMPONENT TripWindow {FLEXIBLE visit(uncontrollable)} : TripWindowType;\n";
        ddl += "\n\n";

        // generate synchronizations
        ddl += "\tSYNCHRONIZE TripPlanning.decisions {\n\n";
        // decompose according to possible POIs to visit
        for (String pValue : pathValues) {

            // expansion with recursion
            ddl += "\t\tVALUE MakeVisitDecision() {\n\n";
            ddl += "\t\t\tcd0 <!> TripPath.hops." + pValue + ";\n";
            ddl += "\t\t\tCONTAINS [0, +INF] [0, +INF] cd0;\n";
            // set recursive call
            ddl += "\t\t\tcd1 <!> TripPlanning.decisions.MakeVisitDecision();\n";
            ddl += "\t\t\tMEETS cd1;\n";

            // schedule the hop within the visit window
            ddl += "\t\t\tcd3 <?> TripWindow.visit.Visit();\n";
            ddl += "\t\t\tcd0 DURING [0, +INF] [0, +INF] cd3;\n\n";

            ddl += "\t\t}\n\n";
        }

        // add decomposition to stop recursion
        ddl += "\t\tVALUE MakeVisitDecision() {\n\n";
        ddl += "\t\t\tcd0 TripPath.hops.Finish();\n";
        ddl += "\t\t\tCONTAINS [0, +INF] [0, +INF] cd0;\n";
        ddl += "\t\t}\n\n";

        // close synch
        ddl += "\t}\n\n";

        // close domain specification
        ddl += "\n}\n\n";

        // set the path to the file
        String ddlPath = this.homePath + "/hermes_req_" + request.getId() + ".ddl";

        // create the file
        File file = new File(ddlPath);
        // check if file exists
        if (!file.exists()) {
            file.createNewFile();
        }

        // write content 
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(file))) {
            // actually writer content
            writer.write(ddl);
            writer.flush();
        }

        // get the path
        return file.getAbsolutePath();
    }

    /**
     * Create a problem description file (PDL) and returns the file system path to the file
     * 
     * @param request
     * @return
     */
    public synchronized String generatePlanningProblem(TripRequest request) throws IOException {

        // prepare problem description
        String pdl = "PROBLEM TRIP_PLANNING_PROBLEM (DOMAIN TRIP_PLANNING) {\n\n";
        
        // set facts
        pdl += "\tf0 <fact> TripPath.hops.Home() AT [0, 0] [1, 1] [1, 1];\n";
        pdl += "\tf1 <fact> TripWindow.visit.Visit() AT [0, 0] [" + request.getDuration() + ", " + request.getDuration() + "] [" + request.getDuration() + ", " + request.getDuration() + "];\n";

        // set goal
        pdl += "\tg0 <goal> TripPlanning.decisions.MakeVisitDecision() AT [0, +INF] [0, +INF] [0, +INF];\n";

        // close problem specification
        pdl += "\n}\n";

        // prepare PDL file path
        String pdlPath = homePath + "/hermes_req_" + request.getId() + ".pdl";

        // create the file
        File file = new File(pdlPath);
        // check if file exists
        if (!file.exists()) {
            file.createNewFile();
        }
        
        // write content 
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(file))) {
            // actually writer content
            writer.write(pdl);
            writer.flush();
        }
        // get the path
        return file.getAbsolutePath();
    }

    /**
     * Instantiate and run a planning instance over the generated problem description. 
     * 
     * The method returns an oredered list of Poi IDs representing the path planned after user request.
     * @param ddl
     * @param pdl
     * @return
     */
    public List<String> plan(String ddl, String pdl) {

        // list of computed POI IDs composing the generated plan
        List<String> path = new ArrayList<>();

        try {

            // build the plan database
            PlanDataBase pdb = PlanDataBaseBuilder.createAndSet(ddl, pdl);

            // set a planning instance of the plan database
            Planner planner = PlannerBuilder.createAndSet(TripPlanner.class, pdb);

            // start planning
            SolutionPlan plan = planner.plan();
            // get timelines
            List<Timeline> tls = plan.getTimelines();
            // check timelines
            for (Timeline tl : tls) {

                // check component name
                if (tl.getComponent().getName().equalsIgnoreCase("TripPath")) {

                    // get the planned Pois
                    for (Token token : tl.getTokens()) {
                        // check token 
                        if (token.getPredicate().getGroundSignature().contains("Visit_POI")) {
                            // get Poi ID
                            String poiId = token.getPredicate().getGroundSignature().replace("Visit_", "");
                            // add ID to the result list
                            path.add(poiId);                            
                        }
                    }
                    
                }
            }
            
        } catch (NoSolutionFoundException ex) {
            System.out.println("[HermesPlanner] No solution found - " + ex.getMessage());

        } catch (Exception ex) {
            System.out.println("[HermesPlanner] Error while calling the planner - " + ex.getMessage());
        }

        // get the computed path
        return path;
    }
}
