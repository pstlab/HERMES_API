package it.cnr.istc.hermes.hai.reasoner;

/**
 * 
 */
public enum HermesDictionary {
    
    RDF_NS("http://www.w3.org/1999/02/22-rdf-syntax-ns#"),
    
    RDFS_NS("http://www.w3.org/2000/01/rdf-schema#"),

    W3ID_NS("https://w3id.org/italia/onto/l0/"),

    ARCO_NS("https://w3id.org/arco/ontology/arco/"),

    HERMES_NS("http://www.istc.cnr.it/pstlab/ontologies/2023/1/hermes#");

    private String ns; 

    /**
     * 
     * @param ns
     */
    private HermesDictionary(String ns) {
        this.ns = ns;
    }

    /**
     * 
     * @return
     */
    public String getNs() {
        return ns;
    }
}
