package it.cnr.istc.hermes.hai.model;

/**
 * Object model describing a constant of the knowledge base. 
 * 
 * Each instance is an individual of a certain Topic representing a theme used to characterize 
 * descriptions of cultural entitites (tagging).
 * 
 */
public class Topic {

    private String id;                      // the URI from the knowledge base
    private String label;                   // the label from the knowledge base

    /**
     * 
     */
    public Topic(String id, String label) {
        this.id = id;
        this.label = label;
    }

    /**
     * 
     */
    public Topic() {}
    
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
    public String getLabel() {
        return label;
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
     * @param label
     */
    public void setLabel(String label) {
        this.label = label;
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
    public boolean equals(Object topic) {
        return this.id.equals(((Topic) topic).id);
    }

    /**
     * 
     */
    @Override
    public String toString() {
        return "[Topic] {\"id\": \"" + this.id + "\", \"label\": \"" + this.label + "\"}";
    }
}
