package it.cnr.istc.hermes.hai.model;

/**
 * 
 */
public class TripRequest {

    private String id;
    private String userId; 
    private int duration;

    /**
     * 
     * @param id
     * @param userId
     * @param duration
     */
    public TripRequest(String id, String userId, int duration) {
        this.id = id;
        this.userId = userId;
        this.duration = duration;
    }
    
    /**
     * 
     * @return
     */
    public int getDuration() {
        return duration;
    }

    /**
     * 
     * @return
     */
    public String getId() {
        return id;
    }

    /**
     * 
     * @return
     */
    public String getUserId() {
        return userId;
    }

    /**
     * 
     * @param duration
     */
    public void setDuration(int duration) {
        this.duration = duration;
    }

    /**
     * 
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
    
    
}
