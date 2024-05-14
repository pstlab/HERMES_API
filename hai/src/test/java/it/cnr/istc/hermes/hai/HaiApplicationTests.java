package it.cnr.istc.hermes.hai;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

import it.cnr.istc.hermes.hai.exception.ReasonerSetupException;
import it.cnr.istc.hermes.hai.knowledge.HaiKnowledgeGraph;
import it.cnr.istc.hermes.hai.knowledge.HermesDictionary;

import java.util.*;
import org.apache.jena.rdf.model.*;

/**
 * 
 */
@SpringBootTest
class HaiApplicationTests {

	@Value("${knowledge.model.path}")
	private String model;

	private HaiKnowledgeGraph reasoner;

	/**
	 * Load variables
	 */
	@BeforeEach
	void load() {

		try {

			// create reasoner
			this.reasoner = new HaiKnowledgeGraph();
			// load reasoner from ontology model
			this.reasoner.load(
				HermesDictionary.HERMES_NS.getNs(), 
				this.model);

		} catch (ReasonerSetupException ex) {
			System.err.println(ex.getMessage());
		}

	}

	/**
	 * Check correctly created context
	 */
	@Test
	void checkContext() {
		// test model path injection
		assertNotNull(this.model);
		assertFalse(this.model.equals(""));
		// test reasoner instance
		assertNotNull(reasoner);
		assertEquals(reasoner.getModelNs(), HermesDictionary.HERMES_NS.getNs());
	}

	/*+
	 * Verify the retrieval of topic taxonomy
	 */
	@Test
	void retrieveTopicTaxonomy() {

		// retrieve the taxonomy of topics
		Map<Resource, Set<Resource>> taxo = reasoner.taxonomyOfTopic();
		assertNotNull(taxo);
		assertFalse(taxo.isEmpty());
		for (Resource topic : taxo.keySet()) {
			assertNotNull(topic);
			// get children
			assertNotNull(taxo.get(topic));
			for (Resource subTopic : taxo.get(topic)) {
				assertNotNull(subTopic);
			}
		}

		// retrieve the leaves of the taxonomy
		Set<Resource> leaves = reasoner.taxonomyOfTopicLeaves();
		assertNotNull(leaves);
		assertTrue(taxo.size() > leaves.size());
	}
	
}
