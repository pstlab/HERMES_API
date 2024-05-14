package it.cnr.istc.hermes.hai.model;

import java.util.*;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.data.mongodb.core.mapping.Document;

/**
 * 
 */
@Document("planned_trips")
public class PlannedTrip {

    private static final AtomicLong PLAN_ID = new AtomicLong(0);
    private String id;
    private Date time;
    private int duration;
    private List<Poi> hops;         // orderer list of steps of the visit
    private TripRequest request;    // the request that triggered the planning process for the synthesis of the current trip
    private float ranking;         // average ranking of 
    private long counter;

    /**
     * 
     */
    public PlannedTrip() {
        this.id = "PLAN_" + PLAN_ID.getAndIncrement();
        this.time = new Date();
    }

    /**
     * 
     * @return
     */
    public long getCounter() {
        return counter;
    }

    /**
     * 
     * @param counter
     */
    public void setCounter(long counter) {
        this.counter = counter;
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
    public List<Poi> getHops() {
        return hops;
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
    public float getRanking() {
        return ranking;
    }

    /**
     * 
     * @return
     */
    public TripRequest getRequest() {
        return request;
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
     * @param duration
     */
    public void setDuration(int duration) {
        this.duration = duration;
    }

    /**
     * 
     * @param hops
     */
    public void setHops(List<Poi> hops) {
        this.hops = hops;
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
     * @param ranking
     */
    public void setRanking(float ranking) {
        this.ranking = ranking;
    }

    /**
     * 
     */
    public void setRequest(TripRequest request) {
        this.request = request;
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
     */
    @Override
    public int hashCode() {
        return this.id.hashCode();
    }

    /**
     * 
     */
    @Override
    public boolean equals(Object obj) {
        return this.id.equals(((PlannedTrip) obj).id);
    }

    /**
     * 
     */
    @Override
    public String toString() {
        return "[PlannedTrip] {\"id\": \"" + this.id + "\", \"duration\": " + this.duration + ", \"size\": " + this.hops.size() + "}";
    }
}
