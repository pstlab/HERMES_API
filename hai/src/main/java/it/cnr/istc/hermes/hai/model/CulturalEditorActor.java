package it.cnr.istc.hermes.hai.model;


/**
 * Editor of cultural content of the system
 */
public class CulturalEditorActor {

    private String id;
    private String label;

    /**
     * 
     * @param id
     */
    public void setId(String id) {
        this.id = id;
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
     * @param label
     */
    public void setLabel(String label) {
        this.label = label;
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
     */
    @Override
    public int hashCode() {
        // hash code on the ID
        return this.id.hashCode();
    }

    /**
     * 
     */
    @Override
    public boolean equals(Object obj) {
        return this.id.equals(((CulturalEditorActor) obj).id);
    }

    /*
     * 
     */
    @Override
    public String toString() {
        return "[CulturalEditorActor] {\"id\": " + this.id + ", \"label\": " + this.label + "}";
    }

}
