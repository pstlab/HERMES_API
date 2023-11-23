package it.cnr.istc.hermes.hai.reasoner;

import org.apache.jena.ontology.OntModel;
import org.apache.jena.ontology.OntModelSpec;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.rdf.model.Statement;
import org.apache.jena.rdf.model.Resource;
import java.util.*;

import it.cnr.istc.hermes.hai.exception.ReasonerSetupException;

/**
 * 
 */
public class HaiKnowledgeGraph {

    private String modelNs;
    private String modelPath;
    private OntModel model;

    /**
     * 
     * @param owlFilePath
     * @param domainSpace
     * @throws ReasonerSetupException
     */
    public synchronized void load(String domainSpace, String owlFilePath) 
    throws ReasonerSetupException {

        // check model 
        if (this.model != null) {
            this.model.close();
            this.model = null;
            this.modelNs = null;
            this.modelPath = null;
        }

        try {

            // create a model from the specified file path
            this.model = ModelFactory.createOntologyModel(OntModelSpec.OWL_MEM_RDFS_INF);
            // prepare the model            
            this.model.getDocumentManager().addAltEntry(domainSpace, "file:" + owlFilePath);
            // read ontology file
            this.model.read(domainSpace);
            // set parameters
            this.modelNs = domainSpace;
            this.modelPath = owlFilePath;

        } catch (Exception ex) {
            // raise exception
            throw new ReasonerSetupException(ex.getMessage());
        }
    }

    /**
     * 
     * @return
     */
    public String getModelNs() {
        return modelNs;
    }

    /**
     * 
     * @return
     */
    public String getModelPath() {
        return modelPath;
    }

    /**
     * 
     * @param fullTypeName
     * @return
     */
    public List<Resource> listResourcesOfType(String fullTypeName) {
        // empty list of resources
        List<Resource> list = new ArrayList<>();

        // check the model
        if (this.model != null) {

            // retrieve list that match the desired pattern
            Iterator<Statement> sts = this.model.listStatements(null, this.model.getProperty(HermesDictionary.RDF_NS.getNs() + "type"), this.model.getResource(fullTypeName));
            while (sts.hasNext()) {
                // add the subject of the statement to the list
                list.add(sts.next().getSubject());
            }
        }

        // get found resources
        return list;
    }
    
    /**
     * List all the statements of the loaded Knowledge Graph
     * @return
     */
    public List<Statement> triples() {
        // empty list of statements
        List<Statement> list = new ArrayList<>();

        // check the model
        if (this.model != null) {

            // retrieve list that match the desired pattern
            Iterator<Statement> sts = this.model.listStatements();
            while (sts.hasNext()) {
                // add the statement
                list.add(sts.next());
            }
        }

        // get found statements
        return list;
    }
}
