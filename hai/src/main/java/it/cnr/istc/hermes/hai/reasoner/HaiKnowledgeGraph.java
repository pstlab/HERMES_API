package it.cnr.istc.hermes.hai.reasoner;

import org.apache.jena.ontology.OntModel;
import org.apache.jena.ontology.OntModelSpec;
import org.apache.jena.rdf.model.Literal;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.rdf.model.Property;
import org.apache.jena.rdf.model.Statement;
import org.apache.jena.rdf.model.StmtIterator;
import org.apache.jena.rdf.model.Resource;
import java.util.*;

import it.cnr.istc.hermes.hai.exception.ReasonerSetupException;
import it.cnr.istc.hermes.hai.model.CulturalEntity;
import it.cnr.istc.hermes.hai.model.Description;
import it.cnr.istc.hermes.hai.model.Topic;

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
            //this.model = ModelFactory.createOntologyModel(OntModelSpec.OWL_LITE_MEM_RDFS_INF);
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
     * Retrieve knowledge resource by the specified URI
     * 
     * @param uri
     * @return
     */
    public Resource getResourceById(String uri) {
        // retrieve resource
        return this.model.getResource(uri);
    }

    /**
     * Retrieve knowledge propery by the specified URI
     * 
     * @param uri
     * @return
     */
    public Property getPropertyById(String uri) {
        // retrieve property
        return this.model.getProperty(uri);
    }

    /**
     * 
     * @param res
     * @return
     */
    public List<Description> getEntityDescriptions(CulturalEntity entity) {
        // list of retrieved descriptions
        List<Description> list = new ArrayList<>();

        // get property w3id:hasDescription
        Property hasDesc = this.model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasDescription");
        // get property w3id:hasTopic
        Property hasTopic = this.model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasTopic");
        // get property rdfs:comment
        Property hasComment = this.model.getProperty(HermesDictionary.RDFS_NS.getNs() + "comment");

        // retrieve resource associated with the entity
        Resource res = this.getResourceById(entity.getId());
        // query the model
        Iterator<Statement> it = res.listProperties(hasDesc);
        // iterate over found statements     
        while (it.hasNext()) {

            // get the statement
            Statement s = it.next();
            // get description object
            Resource obj = s.getObject().asResource();
            if (obj.getProperty(hasComment) != null) {
                // get comment
                Literal text = obj.getProperty(hasComment).getObject().asLiteral();
                // get topic
                Resource tc = obj.getProperty(hasTopic).getObject().asResource();

                // create topic
                Topic topic = new Topic();
                topic.setId(tc.getURI());
                topic.setLabel(tc.getLocalName());

                // create description object model
                Description desc = new Description();
                desc.setId(obj.getURI());
                desc.setText(text.getString());
                desc.setTopic(topic);

                // set cultural entity
                desc.setEntity(entity);

                // add description to the list
                list.add(desc);
            }
        }


        // get the list
        return list;
    }

    /**
     * Retrieve all the cultural entity that have at least one description related to the specified topic.
     * 
     * @param topic
     * @return
     */
    public List<CulturalEntity> getEntitiesByTopic(Topic topic) {
        // list of retrieved descriptions
        Set<CulturalEntity> set = new HashSet<>();

        // get property w3id:hasDescription
        Property hasDesc = this.model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasDescription");
        // get property w3id:hasTopic
        Property hasTopic = this.model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasTopic");

        // retrieve resource associated with the topic
        Resource res = this.getResourceById(topic.getId());
        // retrieves all the descriptions associated with the topic
        Iterator<Statement> it = this.model.listStatements(null, hasTopic, res);
        while (it.hasNext()) {

            // get statement
            Statement s = it.next();
            // retrieve cultural entity associated with the description
            Iterator<Statement> iit = this.model.listStatements(null, hasDesc, s.getSubject());
            while (iit.hasNext()) {
                
                // get statement
                Statement ss = iit.next();
                CulturalEntity entity = new CulturalEntity();
                entity.setId(ss.getSubject().getURI());
                entity.setLabel(ss.getSubject().getLocalName());
                // add entity to the set
                set.add(entity);
            }
        }


        // get the list
        return new ArrayList<>(set);
    }

    /**
     * 
     */
    public List<CulturalEntity> getTangibleEntitiesByTopic(Topic topic) {
        // list of retrieved descriptions
        Set<CulturalEntity> set = new HashSet<>();

        // get property w3id:hasDescription
        Property hasDesc = this.model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasDescription");
        // get property w3id:hasTopic
        Property hasTopic = this.model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasTopic");
        // get property rdf:type
        Property type = this.model.getProperty(HermesDictionary.RDF_NS.getNs() + "type");

        // retrieve resource associated with the topic
        Resource res = this.getResourceById(topic.getId());
        // retrieves all the descriptions associated with the topic
        Iterator<Statement> it = this.model.listStatements(null, hasTopic, res);
        while (it.hasNext()) {

            // get statement
            Statement s = it.next();
            // retrieve cultural entity associated with the description
            Iterator<Statement> iit = this.model.listStatements(null, hasDesc, s.getSubject());
            while (iit.hasNext()) {
                
                // get statement
                Statement ss = iit.next();
                // check if tangible
                Iterator<Statement> ip = this.model.listStatements(
                    ss.getSubject(), 
                    type, 
                    this.model.getResource(HermesDictionary.ARCO_NS.getNs() + "TangibleCulturalProperty"));

                // check if statement exists
                if (ip.hasNext()) {

                    CulturalEntity entity = new CulturalEntity();
                    entity.setId(ss.getSubject().getURI());
                    entity.setLabel(ss.getSubject().getLocalName());
                    // add entity to the set
                    set.add(entity);
                }
            }
        }

        // get the list
        return new ArrayList<>(set);
    }

    /**
     * 
     * @param topic
     * @return
     */
    public List<CulturalEntity> getIntangibleEntitiesByTopic(Topic topic) {
        // list of retrieved descriptions
        Set<CulturalEntity> set = new HashSet<>();

        // get property w3id:hasDescription
        Property hasDesc = this.model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasDescription");
        // get property w3id:hasTopic
        Property hasTopic = this.model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasTopic");
        // get property rdf:type
        Property type = this.model.getProperty(HermesDictionary.RDF_NS.getNs() + "type");

        // retrieve resource associated with the topic
        Resource res = this.getResourceById(topic.getId());
        // retrieves all the descriptions associated with the topic
        Iterator<Statement> it = this.model.listStatements(null, hasTopic, res);
        while (it.hasNext()) {

            // get statement
            Statement s = it.next();
            // retrieve cultural entity associated with the description
            Iterator<Statement> iit = this.model.listStatements(null, hasDesc, s.getSubject());
            while (iit.hasNext()) {
                
                // get statement
                Statement ss = iit.next();
                // check if tangible
                Iterator<Statement> ip = this.model.listStatements(
                    ss.getSubject(), 
                    type, 
                    this.model.getResource(HermesDictionary.ARCO_NS.getNs() + "IntangibleCulturalProperty"));

                // check if statement exists
                if (ip.hasNext()) {

                    CulturalEntity entity = new CulturalEntity();
                    entity.setId(ss.getSubject().getURI());
                    entity.setLabel(ss.getSubject().getLocalName());
                    // add entity to the set
                    set.add(entity);
                }
            }
        }

        // get the list
        return new ArrayList<>(set);
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
