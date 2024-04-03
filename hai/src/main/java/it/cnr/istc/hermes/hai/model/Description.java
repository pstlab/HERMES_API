package it.cnr.istc.hermes.hai.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Object model representing a thematic description of a cultural entity
 */
public class Description {
    
    private String id;                  
    private String text;
    private List<Topic> topics;
    //private CulturalEntity entity;

    /**
     * 
     */
    public Description() {
        this.topics = new ArrayList<>();
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
    public String getText() {
        return text;
    }

    /**
     * 
     * @return
     */
    public void addTopic(Topic topic) {
        this.topics.add(topic);
    }

    /**
     * 
     * @return
     */
    public List<Topic> getTopics() {
        return new ArrayList<>(this.topics);
    }

    /**
     * 
     * @return
     *
    public CulturalEntity getEntity() {
        return entity;
    }*/

    /**
     * 
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 
     * @param text
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * 
     * @param entity
     *
    public void setEntity(CulturalEntity entity) {
        this.entity = entity;
    }*/

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
        return this.id.equals(((Description) obj).id);
    }

    /**
     * 
     */
    @Override
    public String toString() {
        return "[Description] {\"id\": \"" + this.id + "\", \"topics\": \"" + this.topics + "\" \"text\": \"" + this.text +"\"}";
    }
}
