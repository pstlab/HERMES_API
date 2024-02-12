package it.cnr.istc.hermes.hai.knowledge;

import org.apache.jena.ontology.Individual;
import org.apache.jena.ontology.OntModel;
import org.apache.jena.ontology.OntModelSpec;
import org.apache.jena.rdf.model.Literal;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.rdf.model.Property;
import org.apache.jena.rdf.model.Statement;
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
            this.model = ModelFactory.createOntologyModel(OntModelSpec.OWL_LITE_MEM_RDFS_INF);

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
     * Retrieve the full taxonomy of topics from the knowledge
     * 
     * @return
     */
    public Map<Resource, Set<Resource>> taxonomyOfTopic() {

        // create map
        Map<Resource, Set<Resource>> taxonomy = new HashMap<>();
        // root node ARCO:CulturalScope
        Resource root = this.model.getResource(
            HermesDictionary.ARCO_CONTEXT_NS.getNs() + "CulturalScope");
        // build the taxonomy data strcuture
        this.doVisitTaxonomy(root, taxonomy, new HashSet<>());

        // retrun taxonomy
        return taxonomy;
    }

    /**
     * Retrieve only the leaves of the taxonomy of topics
     * @return
     */
    public Set<Resource> taxonomyOfTopicLeaves() {
        // set of leaves
        Set<Resource> leaves = new HashSet<>();
        Map<Resource, Set<Resource>> taxonomy = this.taxonomyOfTopic();
        // check the taxonomy
        for (Resource topic : taxonomy.keySet()) {
            if (taxonomy.get(topic).isEmpty()) {
                leaves.add(topic);
            }
        }

        // get the leaves
        return leaves;
    }
    
    /**
     * 
     * @param sub
     * @param pre
     * @param obj
     * @return
     */
    protected Set<Statement> triples(Resource sub, Property pre, Resource obj) {
        // set of resulting statements
        Set<Statement> set = new HashSet<>();

        // check statements
        Iterator<Statement> it = this.model.listStatements(sub, pre, obj);
        while (it.hasNext()) {
            set.add(it.next());
        }

        // get the set
        return set;
    }

    /**
     * Recursive auxiliary method to visit the taxonomy.
     * 
     * Assumptions: the root of the (sub)taxonomy is already into the data structure.
     * 
     * @param root
     * @param taxonomy
     */
    private void doVisitTaxonomy(Resource root, Map<Resource, Set<Resource>> taxonomy, Set<Resource> visited) {
        
        // prepare the list of children of the (current) root
        Set<Resource> children = new HashSet<>();
        // list subclasses of the (current) root
        Set<Statement> triples = this.triples(
            null, 
            this.model.getProperty(
				HermesDictionary.RDFS_NS.getNs() + "subClassOf"),
            root);

        // iterate over subclasses
        for (Statement triple : triples) {

            // get next root
            Resource nextRoot = triple.getSubject();
            // check visited
            if (!visited.contains(nextRoot)) {

                // add to visited
                visited.add(nextRoot);
                // get individual
                Iterator<Individual> it = this.model.listIndividuals(nextRoot);
                while (it.hasNext()) {

                    // get individual
                    Individual i = it.next();
                    // add individual to children
                    children.add(i.asResource());
                }

                // recursive call to the method
                this.doVisitTaxonomy(nextRoot, taxonomy, visited);
            }
        }

        // get individual
        Iterator<Individual> it = this.model.listIndividuals(root);
        if (it.hasNext()) {
            
            // get individual
            Individual i = it.next();
            // update the taxonomy
            taxonomy.put(i.asResource(), children);
        }
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
     * Retrieves all the descriptions associated with a given cultural property
     * 
     * @param entity
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
        // get rdfs:label data property
        Property label = this.model.getProperty(HermesDictionary.HERMES_NS.getNs() + "label");

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

                // create description object model
                Description desc = new Description();
                desc.setId(obj.getURI());
                desc.setText(text.getString());


                // get topic
                Iterator<Statement> dts = obj.listProperties(hasTopic);
                while (dts.hasNext()) {

                    // get associated topic resource
                    Resource dt = dts.next().getObject().asResource();

                     // create topic
                    Topic topic = new Topic();
                    topic.setId(dt.getURI());
                    Statement dtl = dt.getProperty(label);
                    topic.setLabel(dtl == null ? dt.getLocalName() : dtl.getString());

                    // add topic to description
                    desc.addTopic(topic);
                }
                
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
        Property hasDesc = model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasDescription");
        // get property w3id:hasTopic
        Property hasTopic = model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasTopic");
        // get rdf:type property
        Property type = model.getProperty(HermesDictionary.RDF_NS.getNs() + "type");
        // get rdfs:label data property
        Property label = model.getProperty(HermesDictionary.RDFS_NS.getNs() + "label");

        // retrieve resource associated with the topic
        Resource res = model.getResource(topic.getId());
        // get the type of the given topic
        Resource topicType = res.getProperty(type).getObject().asResource();
        // list all topics of the retrieved type
        Iterator<Statement> it = model.listStatements(null, type, topicType);
        while (it.hasNext()) {

            // get a correlated topic
            Resource t = it.next().getSubject();
            // list descriptions taggeted with the cuyrrent topic
            Iterator<Statement> descStatements = model.listStatements(null, hasTopic, t);
            while (descStatements.hasNext()) {

                // get tagged description
                Resource desc = descStatements.next().getSubject();
                // get associated cultural entity
                Iterator<Statement> entityStatements = model.listStatements(null, hasDesc, desc);
                while (entityStatements.hasNext()) {
                    // get current entity 
                    Resource entity = entityStatements.next().getSubject();
                    // create cultural entity
                    CulturalEntity e = new CulturalEntity();
                    // set attributes
                    e.setId(entity.getURI());
                    Statement lStat = entity.getProperty(label);
                    e.setLabel(lStat == null ? entity.getLocalName() : lStat.getString());
                    // add entity to the result set
                    set.add(e);
                }
            }
        }

        // get the list
        return new ArrayList<>(set);
    }

    /**
     * Retrieve all the tangible entities that have at least one description related to the specified topic
     * @param topic
     * @return
     */
    public List<CulturalEntity> getTangibleEntitiesByTopic(Topic topic) {

         // list of retrieved descriptions
         Set<CulturalEntity> set = new HashSet<>();

         // get property w3id:hasDescription
         Property hasDesc = model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasDescription");
         // get property w3id:hasTopic
         Property hasTopic = model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasTopic");
         // get rdf:type property
         Property type = model.getProperty(HermesDictionary.RDF_NS.getNs() + "type");
         // get rdfs:label data property
         Property label = model.getProperty(HermesDictionary.RDFS_NS.getNs() + "label");
         // get arco:TangibleCulturalProperty type
         Resource tangibleClass = model.getResource(HermesDictionary.ARCO_NS.getNs() + "TangibleCulturalProperty");
 
         // retrieve resource associated with the topic
         Resource res = model.getResource(topic.getId());
         // get the type of the given topic
         Resource topicType = res.getProperty(type).getObject().asResource();
         // list all topics of the retrieved type
         Iterator<Statement> it = model.listStatements(null, type, topicType);
         while (it.hasNext()) {
 
             // get a correlated topic
             Resource t = it.next().getSubject();
             // list descriptions taggeted with the cuyrrent topic
             Iterator<Statement> descStatements = model.listStatements(null, hasTopic, t);
             while (descStatements.hasNext()) {
 
                 // get tagged description
                 Resource desc = descStatements.next().getSubject();
                 // get associated cultural entity
                 Iterator<Statement> entityStatements = model.listStatements(null, hasDesc, desc);
                 while (entityStatements.hasNext()) {

                     // get current entity 
                     Resource entity = entityStatements.next().getSubject();
                     // check if the entity is a tangible cultural property 
                     if (model.contains(entity, type, tangibleClass)) {

                        // create cultural entity
                        CulturalEntity e = new CulturalEntity();
                        // set attributes
                        e.setId(entity.getURI());
                        Statement lStat = entity.getProperty(label);
                        e.setLabel(lStat == null ? entity.getLocalName() : lStat.getString());
                        // add entity to the result set
                        set.add(e);
                    }
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
}
