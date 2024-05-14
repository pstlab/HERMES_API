package it.cnr.istc.hermes.hai.planning.strategy;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import it.cnr.istc.pst.platinum.ai.framework.domain.component.pdb.DecisionVariable;

/**
 * 
 */
public class PathMetric {

    private Set<String> traversed;
    private Map<String, Integer> poi2count;
    private String pathDesc;
    private long[] pathDurationBounds;
    private long[] tripDurationBounds;
    private boolean cyclicPath;

    /**
     * 
     */
    protected PathMetric() {
        this.traversed = new HashSet<>();
        this.poi2count = new HashMap<>();
        this.pathDesc = "";
        this.cyclicPath = false;
    }
    
    protected void addTraversed(DecisionVariable var) {
        
        // check cyclic flag 
        if (!cyclicPath) {
            // set cyclic flag 
            this.cyclicPath = this.traversed.contains(var.getValue());
        }
        
        // check description
        if (!var.getValue().contains("Home") && 
                !var.getValue().contains("Move") &&
                !var.getValue().contains("Finish")) {
            
            // add traversed
            this.traversed.add(var.getValue());
            // update description
            this.pathDesc += "-> " + var.getValue() + " ";
        }
    }
    
    public boolean isCyclicPath() {
        return cyclicPath;
    }
    
    protected void updatePoiCounter(DecisionVariable var) {
        
        if (!this.poi2count.containsKey(var.getValue())) {
            this.poi2count.put(var.getValue(), 0);
        }
        
        // increment counter
        this.poi2count.put(var.getValue(), this.poi2count.get(var.getValue() + 1));
    }
    
    protected boolean hasCycle() {
        // set cycle flag
        boolean cycle = false;
        for (String poi : this.poi2count.keySet()) {
            
            // check cycle condition
            cycle = this.poi2count.get(poi) > 1;
            if (cycle) {
                break;
            }
        }
        
        // get cycle flag
        return cycle;
    }
    
    protected long[] getPathDurationBounds() {
        return pathDurationBounds;
    }
    
    protected void setPathDurationBounds(long[] pathDurationBounds) {
        this.pathDurationBounds = pathDurationBounds;
    }
    
    protected Map<String, Integer> getPoi2count() {
        return new HashMap<>(poi2count);
    }
    
    protected Set<String> getTraversed() {
        return new HashSet<>(traversed);
    }
    
    protected long[] getTripDurationBounds() {
        return tripDurationBounds;
    }
    
    protected void setTripDurationBounds(long[] tripDurationBounds) {
        this.tripDurationBounds = tripDurationBounds;
    }
    
    /**
     * Coverage as the percentage of visit time still available for planning
     * @return
     */
    public double getCoverage() {
        
        // get minimum path duration
        double path = this.pathDurationBounds[0];
        // get visit duration 
        double visit = this.tripDurationBounds[0];
        // compute coverage 
        return path / visit;			
    }
    
    /**
     * 
     * @return
     */
    public long getAvailableTime() {
        
        // get minimum path duration
        long path = this.pathDurationBounds[0];
        // get visit duration 
        long visit = this.tripDurationBounds[0];
        // compute amount of time still available
        return Math.abs(visit - path);
    }
    
    /**
     * 
     */
    @Override
    public String toString() {
        // TODO Auto-generated method stub
        return "{\n"
                + "\t\"visit_duration\": [" + tripDurationBounds[0] + " , " + tripDurationBounds[1] + "],\n"
                + "\t\"path_duration\": [" + pathDurationBounds[0] + ", " + pathDurationBounds[1] + "],\n"
                + "\t\"available_time\": " + this.getAvailableTime() + ",\n"
                + "\t\"coverage\": " + this.getCoverage() + ",\n"
                + "\t\"traversed\": " + this.traversed.size() + ",\n"
                + "\t\"path\": " + pathDesc + "\n"
            + "}";
    }

}
