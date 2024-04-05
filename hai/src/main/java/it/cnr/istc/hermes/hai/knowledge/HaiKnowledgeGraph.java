package it.cnr.istc.hermes.hai.knowledge;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.jena.ontology.Individual;
import org.apache.jena.ontology.OntModel;
import org.apache.jena.ontology.OntModelSpec;
import org.apache.jena.rdf.model.Literal;
import org.apache.jena.rdf.model.Model;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.rdf.model.Property;
import org.apache.jena.rdf.model.Resource;
import org.apache.jena.rdf.model.Statement;

import it.cnr.istc.hermes.hai.exception.ReasonerSetupException;
import it.cnr.istc.hermes.hai.model.CulturalEditorActor;
import it.cnr.istc.hermes.hai.model.CulturalEntity;
import it.cnr.istc.hermes.hai.model.Description;
import it.cnr.istc.hermes.hai.model.IntangibleCulturalEntity;
import it.cnr.istc.hermes.hai.model.ResidualOrLandscapeArchitecturalCulturalEntity;
import it.cnr.istc.hermes.hai.model.TangibleCulturalEntity;
import it.cnr.istc.hermes.hai.model.Topic;
import it.cnr.istc.hermes.hai.model.ex.CulturalEntityExtractionException;

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
     * Retrieve the list of resources that are instances of a given class. 
     * 
     * The method uses the reasoner to retrieve the inferred types of resources based on the transitivity of rdf:type and rdfs:subClassOf
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
     * List all triples of the (raw) knowledge graph that match a given pattern
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
        
        // get raw model 
        Model raw = this.model.getRawModel();
        // prepare the list of children of the (current) root
        Set<Resource> children = new HashSet<>();
       
        // check statements
        Iterator<Statement> it = raw.listStatements(
            null, 
            this.model.getProperty(HermesDictionary.RDFS_NS.getNs() + "subClassOf"), 
            root);
        
        // iterate over subclasses
        while (it.hasNext()) {

            // get statement
            Statement triple = it.next();
            // get next root
            Resource nextRoot = triple.getSubject();
            // check visited
            if (!visited.contains(nextRoot)) {

                // add to visited
                visited.add(nextRoot);
                // get individual
                Iterator<Resource> iit = raw.listSubjectsWithProperty(
                    this.model.getProperty(HermesDictionary.RDF_NS.getNs() + "type"),
                    nextRoot);

                while (iit.hasNext()) {

                    // get individual
                    Resource i = iit.next();
                    // add individual to children
                    children.add(i);
                }

                // recursive call to the method
                this.doVisitTaxonomy(nextRoot, taxonomy, visited);
            }
        }

        // get individual
        Iterator<Resource> iiit = raw.listSubjectsWithProperty(
            this.model.getProperty(HermesDictionary.RDF_NS.getNs() + "type"),
            root); 
        if (iiit.hasNext()) {
            // get individual
            Resource i = iiit.next();
            // update the taxonomy
            taxonomy.put(i, children);
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
     * Retrieves all the descriptions associated with a given cultural property.
     * 
     * @param entity
     * @return
     */
    public List<Description> getEntityDescriptions(CulturalEntity entity) {

        // list of retrieved descriptions
        List<Description> list = new ArrayList<>();
    
        // retrieve resource associated with the entity
        Resource res = this.getResourceById(entity.getId());
        // query the model
        Iterator<Statement> it = res.listProperties(this.model.getProperty(
            HermesDictionary.W3ID_NS.getNs() + "hasDescription"
        ));
        // iterate over found statements     
        while (it.hasNext()) {

            // get the statement
            Statement s = it.next();
            // get description object
            Resource obj = s.getObject().asResource();
            if (obj.getProperty(this.model.getProperty(
                HermesDictionary.RDFS_NS.getNs() + "comment")) != null) {
                
                // get comment
                Literal text = obj.getProperty(this.model.getProperty(
                    HermesDictionary.RDFS_NS.getNs() + "comment")).getObject().asLiteral();

                // create description object model
                Description desc = new Description();
                desc.setId(obj.getURI());
                desc.setText(text.getString());


                // get topic
                Iterator<Statement> dts = obj.listProperties(this.model.getProperty(
                    HermesDictionary.W3ID_NS.getNs() + "hasTopic"));

                // check description statements
                while (dts.hasNext()) {

                    // get associated topic resource
                    Resource dt = dts.next().getObject().asResource();

                     // create topic
                    Topic topic = new Topic();
                    topic.setId(dt.getURI());
                    Statement dtl = dt.getProperty(this.model.getProperty(
                        HermesDictionary.RDFS_NS.getNs() + "label"));
                    topic.setLabel(dtl == null ? dt.getLocalName() : dtl.getLiteral().getString());

                    // add topic to description
                    desc.addTopic(topic);
                }
                
                // set cultural entity
                //desc.setEntity(entity);
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
     * The method explores asserted properties from the raw knowledge graph.
     * 
     * No inferred properties are considered.
     * 
     * @param topic
     * @return
     */
    public List<CulturalEntity> getEntitiesByTopic(Topic topic) {

        // list of retrieved descriptions
        Set<CulturalEntity> set = new HashSet<>();
        
        // retrieve resource associated with the topic
        Resource res = model.getResource(topic.getId());
        // get the type of the given topic
        Resource topicType = res.getProperty(this.model.getProperty(
            HermesDictionary.RDF_NS.getNs() + "type"
        )).getObject().asResource();

        // list all topics of the retrieved type
        Iterator<Statement> it = model.listStatements(
            null, 
            this.model.getProperty(
                HermesDictionary.RDF_NS.getNs() + "type"
            ), topicType);

        // iterate over statements
        while (it.hasNext()) {

            // get a correlated topic
            Resource t = it.next().getSubject();
            // list descriptions taggeted with the cuyrrent topic
            Iterator<Statement> descStatements = model.listStatements(
                null, 
                this.model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasTopic"), 
                t);

            // iterate over statements
            while (descStatements.hasNext()) {

                // get tagged description
                Resource desc = descStatements.next().getSubject();
                // get associated cultural entity
                Iterator<Statement> entityStatements = model.listStatements(
                    null, 
                    this.model.getProperty(
                        HermesDictionary.W3ID_NS.getNs() + "hasDescription"
                    ), desc);

                // iterate over statements
                while (entityStatements.hasNext()) {

                    // get statement
                    Statement stat = entityStatements.next();
                    // get current entity 
                    Resource entity = stat.getSubject();
                    try {

                        // create cultural entity
                        CulturalEntity e = this.extractCulturalEntity(entity, true);
                        // add entity to the result set
                        set.add(e);

                    } catch (CulturalEntityExtractionException ex) {
                        System.out.println("Error while extracting information for resource \"" + entity.getURI() + "\" (" + stat + ") as cultural entity.\n\t- msg: " + ex.getMessage() + "\n");
                    }
                    
                }
            }
        }

        // get the list
        return new ArrayList<>(set);
    }

    /**
     * This method create cultural entity objects (either tangible or intangible) 
     * by retrieving basic information associated. 
     * 
     * The "detailed" flag is used to determine if a in-depth inspection of associated entities is 
     * necessary or not. This flag is particularly relevant to avoid "loops" in the navigation of the
     * asserted relationships between cultural entities
     * 
     * @param resource
     * @param detailed
     * @return
     * @throws CulturalEntityExtractionException
     */
    public CulturalEntity extractCulturalEntity(Resource resource, boolean detailed) throws CulturalEntityExtractionException {

        // check input resource
        if (resource == null) {
            throw new CulturalEntityExtractionException("No resource given as input");
        }

        // check if the resource is a tangible object
        Iterator<Statement> it1 = this.model.listStatements(
                resource, 
                this.model.getProperty(HermesDictionary.RDF_NS.getNs() + "type"), 
                this.model.getResource(HermesDictionary.ARCO_NS.getNs() + "TangibleCulturalProperty"));

        // check if the resource is an intangible object
        Iterator<Statement> it2 = this.model.listStatements(
            resource, 
            this.model.getProperty(HermesDictionary.RDF_NS.getNs() + "type"), 
                    this.model.getResource(HermesDictionary.ARCO_NS.getNs() + "IntangibleCulturalProperty"));

        // check if the resource is any other type of cultural object
        Iterator<Statement> it3 = this.model.listStatements(
            resource, 
            this.model.getProperty(HermesDictionary.RDF_NS.getNs() + "type"), 
                                this.model.getResource(HermesDictionary.ARCO_NS.getNs() + "CulturalProperty"));

        // check the type of cultural entity
        if (it1.hasNext()) {

            // create tangible cultural entity
            TangibleCulturalEntity tangible = new TangibleCulturalEntity(detailed);
            tangible.setId(resource.getURI() == null ? resource.getId().getLabelString() : resource.getURI());

            // get ontological type
            Statement ts = resource.getProperty(this.model.getProperty(
                HermesDictionary.RDF_NS.getNs() + "type"));
            // set the URI of the ontological class
            tangible.setCulturalPropertyType(ts.getObject().asResource().getURI());


            // get label if any through rdfs:label property
            Statement tLabel = resource.getProperty(this.model.getProperty(
                HermesDictionary.RDFS_NS.getNs() + "label"));

            // set label from associated literal
            tangible.setLabel(tLabel == null ? resource.getLocalName() : tLabel.getObject().asLiteral().getString());
        
            // set hermes:visiting_time data property
            Statement visiting = resource.getProperty(this.model.getProperty(
                HermesDictionary.HERMES_NS.getNs() + "visiting_time"));
            tangible.setVisitingTime(visiting != null ? visiting.getObject().asLiteral().getLong() : 1);

            // set hermes:visitability data property
            Statement visitab = resource.getProperty(this.model.getProperty(
                HermesDictionary.HERMES_NS.getNs() + "visitability"));
            tangible.setVisitability(visitab != null ? visitab.getObject().asLiteral().getString() : "unknown");

            // set arco_location:long data property
            Statement longi = resource.getProperty(this.model.getProperty(
                HermesDictionary.ARCO_LOCATION_NS.getNs() + "long"));
            tangible.setLongitude(longi != null ? longi.getObject().asLiteral().getDouble() : 0.0);

            // set arco_location:lat data property
            Statement lati = resource.getProperty(this.model.getProperty(
                HermesDictionary.ARCO_LOCATION_NS.getNs() + "lat"));
            tangible.setLatitude(lati != null ? lati.getObject().asLiteral().getDouble() : 0.0);

            // set hermes:opening_hours data property
            Statement opnHours = resource.getProperty(this.model.getProperty(
                HermesDictionary.HERMES_NS.getNs() + "opening_hours"));
            tangible.setOpenHours(opnHours != null ? opnHours.getObject().asLiteral().getString() : "unknown");


            // set hermes:accessibility_hearing_disability data property
            Statement accHearing = resource.getProperty(this.model.getProperty(
                HermesDictionary.HERMES_NS.getNs() + "accessibility_hearing_disability"));
            tangible.setAccHearingDisab(accHearing != null ? accHearing.getObject().asLiteral().getBoolean() : false);

            // set hermes:accessibility_visual_disability data property
            Statement accVisual = resource.getProperty(this.model.getProperty(
                HermesDictionary.HERMES_NS.getNs() + "accessibility_visual_disability"));
            tangible.setAccVisualDisab(accVisual != null ? accVisual.getObject().asLiteral().getBoolean() : false);

            // set hermes:accessibility_motor_disability data property
            Statement accMotor = resource.getProperty(this.model.getProperty(
                HermesDictionary.HERMES_NS.getNs() + "accessibility_motor_disability"));
            tangible.setAccMotorDisab(accMotor != null ? accMotor.getObject().asLiteral().getBoolean() : false);


            // set hermes:visiting_price data property
            Statement vPrice = resource.getProperty(this.model.getProperty(
                HermesDictionary.HERMES_NS.getNs() + "visiting_price"));
            tangible.setPrice(vPrice != null ? vPrice.getObject().asLiteral().getString() : "unknown");

            // set hermes:accessibility_groups data property
            Statement accGroups = resource.getProperty(this.model.getProperty(
                HermesDictionary.HERMES_NS.getNs() + "accessibility_groups"));
            tangible.setGroupVisit(accGroups != null ? accGroups.getObject().asLiteral().getBoolean() : false);


            // set hermes:accessibility_elderly data property
            Statement accEld = resource.getProperty(this.model.getProperty(
                HermesDictionary.HERMES_NS.getNs() + "accessibility_elderly"));
            tangible.setAccElderly(accEld != null ? accEld.getObject().asLiteral().getBoolean() : false);

            // set arco_context:address data property
            Statement add = resource.getProperty(this.model.getProperty(
                HermesDictionary.ARCO_CONTEXT_NS.getNs() + "address"));      
            tangible.setAddress(add != null ? add.getObject().asLiteral().getString() : "unknown");


            // check resource editor
            Statement eStat = resource.getProperty(this.model.getProperty(
                HermesDictionary.PROVO.getNs() + "wasAttributedTo"));

            // add editor information if specified
            if (eStat != null) {

                // get resource
                Resource editor = eStat.getObject().asResource();
                // create editor
                CulturalEditorActor actor = new CulturalEditorActor();
                actor.setId(editor.getURI());

                // get label
                Statement aLabel = editor.getProperty(this.model.getProperty(
                    HermesDictionary.RDFS_NS.getNs() + "label"
                ));

                // set label
                actor.setLabel(aLabel == null ? "unknown" : aLabel.getObject().asLiteral().getString());

                // set editor
                tangible.setEditorActor(actor);
            }


            // check detailed flag
            if (detailed) {

                // list of correlated entities (either tangible or intangible)
                Set<CulturalEntity> correlated = new HashSet<>();
                // retrieve associated entities
                Iterator<Statement> it = resource.listProperties(this.model.getProperty(
                    HermesDictionary.HERMES_NS.getNs() + "isCorrelatedWith"));
                // check correlated resources
                while (it.hasNext()) {

                    // get correlated resource
                    Resource res = it.next().getObject().asResource();
                    // retrieve associated cultural entity
                    CulturalEntity correlatedEntity = this.extractCulturalEntity(res, false);
                    // add to the set
                    correlated.add(correlatedEntity);
                }

                // set associated entities
                tangible.setCorrelatedEntities(new ArrayList<>(correlated));

                // get structural parent entity if any
                Statement parentStatement = resource.getProperty(this.model.getProperty(
                    HermesDictionary.ARCO_CORE_NS.getNs() + "isPartOf"));
                // check retrieve resource
                if (parentStatement != null) {
                    
                    // extract necessary information
                    CulturalEntity parent = this.extractCulturalEntity(parentStatement.getObject().asResource(), false);
                    // set part of relationship
                    tangible.setPartOf(parent);
                }
            }

            // return the tangible
            return tangible;

        } else if (it2.hasNext()) {

            // create intangible cultural entity
            CulturalEntity intangible = new IntangibleCulturalEntity(detailed);
            intangible.setId(resource.getURI() == null ? resource.getId().getLabelString() : resource.getURI());

            // get ontological type
            Statement ts = resource.getProperty(this.model.getProperty(
                HermesDictionary.RDF_NS.getNs() + "type"));
            // set the URI of the ontological class
            intangible.setCulturalPropertyType(ts.getObject().asResource().getURI());


            // get label if any through rdfs:label property
            Statement iLabel = resource.getProperty(this.model.getProperty(
                HermesDictionary.RDFS_NS.getNs() + "label"));

            // set label from associated literal
            intangible.setLabel(iLabel == null ? resource.getLocalName() : iLabel.getObject().asLiteral().getString());

            // check resource editor
            Statement sEditor = resource.getProperty(this.model.getProperty(
                HermesDictionary.PROVO.getNs() + "wasAttributedTo"
            ));

            // add editor information if specified
            if (sEditor != null) {

                // get resource
                Resource editor = sEditor.getObject().asResource();
                // create editor
                CulturalEditorActor actor = new CulturalEditorActor();
                actor.setId(editor.getURI());

                // get label
                Statement aLabel = editor.getProperty(this.model.getProperty(
                    HermesDictionary.RDFS_NS.getNs() + "label"));

                // set label
                actor.setLabel(aLabel == null ? "Unknown" : aLabel.getObject().asLiteral().getString());
            }


            // get the intangible
            return intangible;

        } else if (it3.hasNext()) {

            // create intangible cultural entity
            CulturalEntity residual = new ResidualOrLandscapeArchitecturalCulturalEntity(detailed);
            residual.setId(resource.getURI() == null ? resource.getId().getLabelString() : resource.getURI());

            // get ontological type
            Statement ts = resource.getProperty(this.model.getProperty(
                HermesDictionary.RDF_NS.getNs() + "type"));
            // set the URI of the ontological class
            residual.setCulturalPropertyType(ts.getObject().asResource().getURI());

            // get label if any through rdfs:label property
            Statement rLabel = resource.getProperty(this.model.getProperty(
                HermesDictionary.RDFS_NS.getNs() + "label"));

            // set label from associated literal
            residual.setLabel(rLabel == null ? resource.getLocalName() : rLabel.getObject().asLiteral().getString());

            // check resource editor
            Statement sEditor = resource.getProperty(this.model.getProperty(
                HermesDictionary.PROVO.getNs() + "wasAttributedTo"
            ));

            // add editor information if specified
            if (sEditor != null) {

                // get resource
                Resource editor = sEditor.getObject().asResource();
                // create editor
                CulturalEditorActor actor = new CulturalEditorActor();
                actor.setId(editor.getURI());

                // get label
                Statement aLabel = editor.getProperty(this.model.getProperty(
                    HermesDictionary.RDFS_NS.getNs() + "label"));

                // set label
                actor.setLabel(aLabel == null ? "Unknown" : aLabel.getObject().asLiteral().getString());
            }


            // get the residual
            return residual;

        } else {

            // unknown type of cultural entity
            throw new CulturalEntityExtractionException("Unknown type of cultural entity resource:\n\t- resource: " + resource);
        }
    }

    /**
     * Create a new resource as instance of the given class (individual) and associate the specified label.
     * 
     * Assert also provenance information associating the resource with the editor.
     * 
     * @param clazz
     * @param label
     * @param editor
     * @return
     */
    public Resource createResource(Resource clazz, String label, Resource editor) {

        // create an individual of the give resource class
        Resource res = this.model.createIndividual(clazz);

        // assert property
        res.addProperty(this.model.getProperty(
            HermesDictionary.RDFS_NS.getNs() + "label"), 
            label);

        // assert provenance knowledge
        res.addProperty(this.model.getProperty(
            HermesDictionary.PROVO.getNs() + "wasAttributedTo"), editor);

        // get the associated resource
        return res;
    }

    /**
     * Create a new resource as instance of the given class (individual).
     * 
     * @param clazz
     * @return
     */
    public Resource createResource(Resource clazz) {

        // create an individual of the give resource class
        Resource res = this.model.createIndividual(clazz);
        // get the associated resource
        return res;
    }
}
