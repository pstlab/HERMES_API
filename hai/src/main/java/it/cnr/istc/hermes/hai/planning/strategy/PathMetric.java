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

    private Set<DecisionVariable> traversed;
    private Map<String, Integer> poi2count;
    private String pathDesc;
    private long[] pathDurationBounds;
    private long[] tripDurationBounds;

    /**
     * 
     */
    public PathMetric() {
        this.traversed = new HashSet<>();
        this.poi2count = new HashMap<>();
        this.pathDesc = "";
    }
    
    public void addTraversed(DecisionVariable var) {
        this.traversed.add(var);
        this.pathDesc += "-> " + var.getValue() + " ";
    }
    
    public void updatePoiCounter(DecisionVariable var) {
        
        if (!this.poi2count.containsKey(var.getValue())) {
            this.poi2count.put(var.getValue(), 0);
        }
        
        // increment counter
        this.poi2count.put(var.getValue(), this.poi2count.get(var.getValue() + 1));
    }
    
    /**
     * 
     * @return
     */
    public boolean hasCycle() {
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
    
    public long[] getPathDurationBounds() {
        return pathDurationBounds;
    }
    
    public void setPathDurationBounds(long[] pathDurationBounds) {
        this.pathDurationBounds = pathDurationBounds;
    }
    
    public Map<String, Integer> getPoi2count() {
        return new HashMap<>(poi2count);
    }
    
    public Set<DecisionVariable> getTraversed() {
        return new HashSet<>(traversed);
    }
    
    public long[] getTripDurationBounds() {
        return tripDurationBounds;
    }
    
    public void setTripDurationBounds(long[] tripDurationBounds) {
        this.tripDurationBounds = tripDurationBounds;
    }
    
    /**
     * Coverage as the percentage of visit time still available for planning
     * 
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
        // JSON-style description
        return "{\n"
                + "\t\"visit_duration\": [" + tripDurationBounds[0] + " , " + tripDurationBounds[1] + "],\n"
                + "\t\"path_duration\": [" + pathDurationBounds[0] + ", " + pathDurationBounds[1] + "],\n"
                + "\t\"available_time\": " + this.getAvailableTime() + ",\n"
                + "\t\"coverage\": " + this.getCoverage() + ",\n"
                + "\t\"path\": " + pathDesc + "\n"
            + "}";
    }

}
