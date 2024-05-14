package it.cnr.istc.hermes.hai.knowledge;

import javax.validation.constraints.NotEmpty;

/**
 * Simple structure to send query data for POST requests
 */
public class KnowledgeQuery {

    @NotEmpty
    private String uri;

    /**
     * 
     * @param uri
     */
    public void setUri(String uri) {
        this.uri = uri;
    }

    /**
     * 
     * @return
     */
    public String getUri() {
        return uri;
    }
    
}
