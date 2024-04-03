package it.cnr.istc.hermes.hai.model;

/**
 * Object model representing a cultural property from the knowledge base. 
 * 
 * In particular, the object represents either tangible or intangible cultural properties.
 */
public abstract class CulturalEntity {
    
    private String id;                  // the uri from the knowledge base
    private String label;               // the label from the knowledge base
    private boolean tangible;           // flag specifying tangible/intanible entity
    private boolean detailed;           // flag true if all data has been retrieved

    /**
     * 
     * @param tangible
     * @param detailed
     */
    protected CulturalEntity(boolean tangible, boolean detailed) {
        this.tangible = tangible;
        this.detailed = detailed;
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
     * @return
     */
    public boolean isTangible() {
        return tangible;
    }

    /**
     * 
     * @return
     */
    public boolean isDetailed() {
        return detailed;
    }

    /**
     * 
     */
    @Override
    public boolean equals(Object obj) {
        return this.id.equals(((CulturalEntity) obj).id);
    }

    /**
     * 
     */
    @Override
    public String toString() {
        return "[CulturalEntity] {\"id\": \"" + this.id + "\", \"label\": \"" + this.label + "\", \"tangible\": " + this.tangible + "}";
    }
}
