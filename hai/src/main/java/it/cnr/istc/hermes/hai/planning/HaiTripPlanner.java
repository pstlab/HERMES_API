package it.cnr.istc.hermes.hai.planning;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import it.cnr.istc.hermes.hai.model.Poi;
import it.cnr.istc.hermes.hai.model.TangibleCulturalEntity;

/**
 * 
 */
public class HaiTripPlanner {

    /**
     * 
     * @param pois
     * @param tripDuration
     * @return
     */
    public synchronized String generatePlanningModel(List<Poi> pois, long tripDuration) {

        // get random generator
        Random rand = new Random(System.currentTimeMillis());
        // compute trip delta
        double trpDelta = rand.nextInt(1, 100);
        String ddl = "DOMAIN TRIP_PLANNING {\n\n";
        // set temporal module
        ddl += "\tTEMPORAL_MODULE tm = [0, " + (tripDuration + Math.round(trpDelta)) + "], 1000;\n\n";

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
            ddl += "Move_Home_" + s.getId() + ", ";


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
        ddl += "\t\tVALUE Visit() [" + tripDuration + ", " + tripDuration+ "]\n\t\tMEETS {\n\t\t\tNone();\n\t\t}\n\n";
        // close SV
        ddl += "\n\t}\n\n";


        // specify components
        ddl += "\tCOMPONENT TriPlanning {FLEXIBLE decisions(functional)} : PlanningDecisionType;\n";
        ddl += "\tCOMPONENT TripPath {FLEXIBLE hops(primitive)} : TripPathType;\n";
        ddl += "\tCOMPONENT TripWindow {FLEXIBLE visit(uncontrollable)} : TripWindowType;\n";
        ddl += "\n\n";

        // generate synchronizations
        ddl += "\tSYNCHRONIZE TripPlanning.decisions {\n\n";
        // decompose according to possible POIs to visit
        for (String pValue : pathValues) {

            ddl += "\t\tVALUE MakeVisitDecision() {\n\n";
            ddl += "\t\t\tcd0 <!> TripPath.hops." + pValue + ";\n";
            ddl += "\t\t\tCONTAINS [0, +INF] [0, +INF] cd0;\n";
            // set recursive call
            ddl += "\t\t\tcd1 <!> TripPlanning.decisions.MakeVisitDecision();\n";
            ddl += "\t\t\tMEETS cd1;\n";
            ddl += "\t\t}\n\n";
        }

        // add decomposition to stop recursion
        ddl += "\t\tVALUE MakeVisitDecision() {\n\n";
        ddl += "\t\t\tcd0 <!> TripPath.hops.Finish();\n";
        ddl += "\t\t\tCONTAINS [0, +INF] [0, +INF] cd0;\n";
        ddl += "\t\t}\n\n";
        

        // close synch
        ddl += "\t}\n\n";

        // synchronize planned visits with trip window
        ddl += "\tSYNCHRONIZE TripPath.hops {\n\n";
        for (String pValue : pathValues) {

            ddl += "\t\tVALUE " + pValue + " {\n\n";
            ddl += "\t\t\tcd0 <?> TripWindow.visit.Visit();\n";
            ddl += "\t\t\tDURING [0, +INF] [0, +INF] cd0;\n\n";
            ddl += "\t\t}\n\n";
        }

        // close sync
        ddl += "\t}\n\n";


        // close domain specification
        ddl += "\n}\n\n";
        return ddl;
    }

    /**
     * 
     * @param tripDuration
     * @return
     */
    public synchronized String generatePlanningProblem(long tripDuration) {

        // prepare problem description
        String pdl = "PROBLEM TRIP_PLANNING_PROBLEM (DOMAIN TRIP_PLANNING) {\n\n";
        
        // set facts
        pdl += "\tf0 <fact> TripPath.hops.Home() AT [0, 0] [1, 1] [1, 1];\n";
        pdl += "\tf1 <fact> TripWindow.visit.Visit() AT [0, 0] [" + tripDuration + ", " + tripDuration + "] [" + tripDuration + ", " + tripDuration + "];\n";

        // set goal
        pdl += "\tg0 <goal> TripPlanning.decisions.MakeVisitDecision() AT [0, +INF] [0, +INF] [0, +INF];\n";

        // close problem specification
        pdl += "\n}\n";
        return pdl;
    }
}
