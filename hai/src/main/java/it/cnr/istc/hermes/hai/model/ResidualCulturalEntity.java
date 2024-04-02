package it.cnr.istc.hermes.hai.model;

/**
 * 
 */
public class ResidualCulturalEntity extends CulturalEntity {

    private CulturalEditorActor editorActor;

    /**
     * 
     */
    public ResidualCulturalEntity() {
        super(false);
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
