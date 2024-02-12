package it.cnr.istc.hermes.hai;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import org.apache.jena.ontology.OntModel;
import org.apache.jena.ontology.OntModelSpec;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.rdf.model.Property;
import org.apache.jena.rdf.model.Resource;
import org.apache.jena.rdf.model.Statement;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

import it.cnr.istc.hermes.hai.knowledge.HermesDictionary;

/**
 * 
 */
@SpringBootTest
public class HaiReasonerTests {

    @Value("${knowledge.model.path}")
    private String path;

    OntModel model;

    /**
     * 
     */
    @BeforeEach
    void load() {

        try {

            // create a model from the specified file path
            model = ModelFactory.createOntologyModel(OntModelSpec.OWL_LITE_MEM_RDFS_INF);

            // prepare the model            
            model.getDocumentManager().addAltEntry(
                HermesDictionary.HERMES_NS.getNs(), 
                "file:" + path);
                
            // read ontology file
            model.read(HermesDictionary.HERMES_NS.getNs());

		} catch (Exception ex) {
			System.err.println(ex.getMessage());
		}
    }

    /**
	 * Check correctly created model
	 */
	@Test
	void checkModel() {
		// test model path injection
		assertNotNull(model);
        Iterator<Statement> it = model.listStatements();
		// test reasoner instance
		assertNotNull(it);
		assertTrue(it.hasNext());
	}

    /*
	 * 
	 */
	@Test
	void retrieveEntities2Topic() {

		// get property w3id:hasDescription
        Property hasDesc = model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasDescription");
        assertNotNull(hasDesc);
        // get property w3id:hasTopic
        Property hasTopic = model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasTopic");
        assertNotNull(hasTopic);
        // get rdf:type property
        Property type = model.getProperty(HermesDictionary.RDF_NS.getNs() + "type");
        assertNotNull(type);
        // get rdfs:label data property
        Property label = model.getProperty(HermesDictionary.RDFS_NS.getNs() + "label");
        assertNotNull(label);

        // retrieve resource associated with the topic
        Resource res = model.getResource("http://www.istc.cnr.it/pstlab/ontologies/2023/1/hermes#Architecture_const");
        assertNotNull(res);
        // get the type of the given topic
        Resource topicType = res.getProperty(type).getObject().asResource();
        assertNotNull(topicType);
        System.out.println(">>> " + res + " (" + topicType + ")");

        // set of topics
        Set<Resource> topics = new HashSet<>();
        // list all topics of the retrieved type
        Iterator<Statement> it = model.listStatements(null, type, topicType);
        assertNotNull(it);
        while (it.hasNext()) {
            // current statement
            Statement s = it.next();
            assertNotNull(s);
            Resource t = s.getSubject();
            System.out.println("\t- Inferred/correlated Topic: " + t);
            // add topic to the set
            topics.add(t);
        }

        // set of cultural entities with descriptions that are relevant to the considered topics
        Set<Resource> entities = new HashSet<>();
        for (Resource t : topics) {

            // list descriptions
            Iterator<Statement> descs = model.listStatements(null, hasTopic, t);
            assertNotNull(descs);
            while (descs.hasNext()) {

                // get associated 
                Resource desc = descs.next().getSubject();
                assertNotNull(desc);
                System.out.println("\t\t- Description statement: " + desc);
                // get associated cultural entity
                Iterator<Statement> entityStatements = model.listStatements(null, hasDesc, desc);
                assertNotNull(entityStatements);
                while (entityStatements.hasNext()) {
                    // get entity 
                    Resource entity = entityStatements.next().getSubject();
                    assertNotNull(entity);
                    String lab = entity.getProperty(label).getString();
                    assertNotNull(lab);
                    System.out.println("\t\t\t- Correlated entity: (" + lab + ") " + entity);
                    // add entity to the set
                    entities.add(entity);
                }
            }

        }
	}

    /**
     * 
     */
    @Test
	void retrieveTangibleEntities2Topic() {

		// get property w3id:hasDescription
        Property hasDesc = model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasDescription");
        assertNotNull(hasDesc);
        // get property w3id:hasTopic
        Property hasTopic = model.getProperty(HermesDictionary.W3ID_NS.getNs() + "hasTopic");
        assertNotNull(hasTopic);
        // get rdf:type property
        Property type = model.getProperty(HermesDictionary.RDF_NS.getNs() + "type");
        assertNotNull(type);
        // get rdfs:label data property
        Property label = model.getProperty(HermesDictionary.RDFS_NS.getNs() + "label");
        assertNotNull(label);
        // get arco:TangibleCulturalProperty class
        Resource tangibleClass = model.getResource(HermesDictionary.ARCO_NS.getNs() + "TangibleCulturalProperty");
        assertNotNull(tangibleClass);

        // retrieve resource associated with the topic
        Resource res = model.getResource("http://www.istc.cnr.it/pstlab/ontologies/2023/1/hermes#Architecture_const");
        assertNotNull(res);
        // get the type of the given topic
        Resource topicType = res.getProperty(type).getObject().asResource();
        assertNotNull(topicType);
        System.out.println(">>> " + res + " (" + topicType + ")");

        // set of topics
        Set<Resource> topics = new HashSet<>();
        // list all topics of the retrieved type
        Iterator<Statement> it = model.listStatements(null, type, topicType);
        assertNotNull(it);
        while (it.hasNext()) {
            // current statement
            Statement s = it.next();
            assertNotNull(s);
            Resource t = s.getSubject();
            System.out.println("\t- Inferred/correlated Topic: " + t);
            // add topic to the set
            topics.add(t);
        }

        // set of cultural entities with descriptions that are relevant to the considered topics
        Set<Resource> entities = new HashSet<>();
        for (Resource t : topics) {

            // list descriptions
            Iterator<Statement> descs = model.listStatements(null, hasTopic, t);
            assertNotNull(descs);
            while (descs.hasNext()) {

                // get associated 
                Resource desc = descs.next().getSubject();
                assertNotNull(desc);
                System.out.println("\t\t- Description statement: " + desc);
                // get associated cultural entity
                Iterator<Statement> entityStatements = model.listStatements(null, hasDesc, desc);
                assertNotNull(entityStatements);
                while (entityStatements.hasNext()) {

                    // get entity 
                    Resource entity = entityStatements.next().getSubject();
                    assertNotNull(entity);

                    // check asserted statement about the type
                    if (model.contains(entity, type, tangibleClass)) {

                        String lab = entity.getProperty(label).getString();
                        assertNotNull(lab);
                        System.out.println("\t\t\t- Correlated (tangible) entity: (" + lab + ") " + entity);
                        // add entity to the set
                        entities.add(entity);
                    }
                }
            }
        }
	}
}
