package it.cnr.istc.hermes.hai.model;

import java.util.*;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.data.mongodb.core.mapping.Document;

/**
 * Object model describing the request for synthesizing a trip
 */
@Document("trip_requests")
public class TripRequest {

    private static final AtomicLong REQ_ID = new AtomicLong(0);
    private String id;
    private String userId; 
    private Date time;
    private int duration    ;
    private float[] userLocation;
    private int groupSize;
    private boolean[] dVector;
    private boolean[] mVector;
    private List<Topic> topics;
    
    /**
     * 
     */
    public TripRequest() {
        this.id = "REQ_" + REQ_ID.getAndIncrement();
        this.topics = new ArrayList<>();
        this.time = new Date();
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

    /**
     * 
     * @param userId
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * 
     * @return
     */
    public int getGroupSize() {
        return groupSize;
    }

    /**
     * 
     * @return
     */
    public Date getTime() {
        return time;
    }

    /**
     * 
     * @return
     */
    public List<Topic> getTopics() {
        return topics;
    }

    /**
     * 
     * @return
     */
    public float[] getUserLocation() {
        return userLocation;
    }

    /**
     * 
     * @return
     */
    public boolean[] getdVector() {
        return dVector;
    }

    /**
     * 
     * @return
     */
    public boolean[] getmVector() {
        return mVector;
    }

    /**
     * 
     * @param groupSize
     */
    public void setGroupSize(int groupSize) {
        this.groupSize = groupSize;
    }

    /**
     * 
     * @param time
     */
    public void setTime(Date time) {
        this.time = time;
    }

    /**
     * 
     * @param topics
     */
    public void setTopics(List<Topic> topics) {
        this.topics = topics;
    }

    /**
     * 
     * @param userLocation
     */
    public void setUserLocation(float[] userLocation) {
        this.userLocation = userLocation;
    }

    /**
     * 
     * @param dVector
     */
    public void setdVector(boolean[] dVector) {
        this.dVector = dVector;
    }

    /**
     * 
     * @param mVector
     */
    public void setmVector(boolean[] mVector) {
        this.mVector = mVector;
    }

    /**
     * 
     */
    @Override
    public int hashCode() {
        return this.id.hashCode();
    }

    /**
     * 
     */
    @Override
    public boolean equals(Object req) {
        return this.id.equals(((TripRequest) req).id);
    }

    @Override
    public String toString() {
        return "[TripRequest] {\"id\": \"" + this.id + "\", \"time\": \"" + this.time + "\"}";
    }
}
