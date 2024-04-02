package it.cnr.istc.hermes.hai.model;

/**
 * Intangile cultural entity class
 */
public class IntangibleCulturalEntity extends CulturalEntity {

    private CulturalEditorActor editorActor;

    /**
     * 
     */
    public IntangibleCulturalEntity() {
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
