package it.cnr.istc.hermes.hai.model;

/**
 * Object model representing a thematic description of a cultural entity
 */
public class Description {
    
    private String id;                  
    private String text;
    private Topic topic;
    private CulturalEntity entity;

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
    public Topic getTopic() {
        return topic;
    }

    /**
     * 
     * @return
     */
    public CulturalEntity getEntity() {
        return entity;
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
     * @param text
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * 
     * @param topic
     */
    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    /**
     * 
     * @param entity
     */
    public void setEntity(CulturalEntity entity) {
        this.entity = entity;
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
        return this.id.equals(((Description) obj).id);
    }

    /**
     * 
     */
    @Override
    public String toString() {
        return "[Description] {\"id\": \"" + this.id + "\", \"topic\": \"" + this.topic.getId() + "\" \"text\": \"" + this.text +"\"}";
    }
}
