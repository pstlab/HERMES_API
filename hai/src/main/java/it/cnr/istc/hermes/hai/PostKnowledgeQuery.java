package it.cnr.istc.hermes.hai;

/**
 * Simple structure to send query data for POST requests
 */
public class PostKnowledgeQuery {

    private String uri;

    public void setUri(String uri) {
        this.uri = uri;
    }

    public String getUri() {
        return uri;
    }
    
}
