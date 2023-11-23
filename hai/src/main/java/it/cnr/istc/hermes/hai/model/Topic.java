package it.cnr.istc.hermes.hai.model;

/**
 * 
 */
public class Topic {

    private String id;
    private String label; 

    /**
     * 
     */
    public Topic(String id, String label) {
        this.id = id;
        this.label = label;
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
}
