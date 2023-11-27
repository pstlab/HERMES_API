package it.cnr.istc.hermes.hai.model;

import org.springframework.data.mongodb.core.mapping.Document;

import java.util.*;
import java.util.concurrent.atomic.AtomicLong;

/**
 * A POI within HERMES is a contextual description of a physical cultural entity generated after the request of synthesizing a personalized trip. 
 * 
 * It is an aggregated object encapsulating a thematic description of a physical entity and its associated intangible properties. Notably, the object contains all 
 * and only the descriptions that are relevant to the thematic context specified for its generation. 
 */
@Document("pois")
public class Poi {

    private static final AtomicLong POI_ID = new AtomicLong(0);
    private String id;
    private Date time;
    private List<Description> descriptions;                                 // the thematic context characterizing the description of the cultural entity      
    private CulturalEntity tangible;                                        // the physical entity associated with the contextual POI
    private List<CulturalEntity> intangibles;                               // the intangible entities associated with the physical one
    private float ranking;                                                 // average ranking by users
    private int counter;                                                    // frequency of use

    /**
     * 
     */
    public Poi() {
        this.id = "POI_" + POI_ID.getAndIncrement();
        this.time = new Date();
        this.descriptions = new ArrayList<>();
        this.intangibles = new ArrayList<>();
    }
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public CulturalEntity getTangible() {
        return tangible;
    }

    public void setTangible(CulturalEntity tangible) {
        this.tangible = tangible;
    }

    public void setCounter(int counter) {
        this.counter = counter;
    }

    public int getCounter() {
        return counter;
    }

    public void setDescriptions(List<Description> descriptions) {
        this.descriptions = descriptions;
    }

    public List<Description> getDescriptions() {
        return descriptions;
    }

    public void setIntangibles(List<CulturalEntity> intangibles) {
        this.intangibles = intangibles;
    }

    public List<CulturalEntity> getIntangibles() {
        return intangibles;
    }

    public float getRanking() {
        return ranking;
    }

    public void setRanking(float ranking) {
        this.ranking = ranking;
    }

    /**
     * 
     */
    @Override
    public int hashCode() {
        return id.hashCode();
    }

    /**
     * 
     */
    @Override
    public boolean equals(Object obj) {
        return id.equals(((Poi) obj).id);
    }

    /**
     * 
     */
    @Override
    public String toString() {
        return "[Poi] {\"id\":\"" + this.id + "\", \"tangible\": \"" + this.tangible.getId() + "\"}";
    }

}
