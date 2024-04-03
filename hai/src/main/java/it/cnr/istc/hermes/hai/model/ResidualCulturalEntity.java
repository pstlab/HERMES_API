package it.cnr.istc.hermes.hai.model;

/**
 * 
 */
public class ResidualCulturalEntity extends CulturalEntity {

    private CulturalEditorActor editorActor;

    /**
     * 
     * @param detailed
     */
    public ResidualCulturalEntity(boolean detailed) {
        super(false, detailed);
    }

    /**
     * 
     * @return
     */
    public CulturalEditorActor getEditorActor() {
        return editorActor;
    }

    /**
     * 
     * @param editorActor
     */
    public void setEditorActor(CulturalEditorActor editorActor) {
        this.editorActor = editorActor;
    }

}
