package it.cnr.istc.hermes.hai;

import java.util.*;

import org.apache.jena.rdf.model.Resource;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import it.cnr.istc.hermes.hai.reasoner.HaiKnowledgeGraph;
import it.cnr.istc.hermes.hai.reasoner.HermesDictionary;
import it.cnr.istc.hermes.hai.model.*;

/**
 * Hemres-AI Component REST API
 */
@RestController
@SpringBootApplication
public class HaiApplication {

	private static final String HERMES_DEFAULT_MODEL_PATH = "/home/alessandro/ws/ai/HERMES/hermes_16_10_test.owl";

	private HaiKnowledgeGraph reasoner;

	/**
	 * 
	 */
	protected HaiApplication() {
		// create the knowledge graph
		this.reasoner = new HaiKnowledgeGraph();
		// load a default model
		this.reasoner.load(HermesDictionary.HERMES_NS.getNs(), HERMES_DEFAULT_MODEL_PATH);
	}

	/*
	 * 
	 */
	public static void main(String[] args) {
		SpringApplication.run(HaiApplication.class, args);
	}

	/**
	 * 
	 */
	@GetMapping("/")
	public String index() {

		// prepare a result message
		String msg =  "The Knowledge Model currently loaded is \"%s\" with Name Space \"%m\"";
		// get the result message
		return msg.replace("%s", this.reasoner.getModelPath()).replace("%m", this.reasoner.getModelNs());
	}

	/**
	 * Retrieve the list of knowledge constants representing possible topics of a trip. 
	 * 
	 * Topics are used to retrieve contextual and thematic knowledge when sythesizing new trips 
	 * 
	 * @return
	 */
	@GetMapping("/knowledge/topics")
	public List<Topic> getTopics() {

		List<Topic> list = new ArrayList<>();

		// retrieve all the individuals of hermes:Topic
		List<Resource> res = this.reasoner.listResourcesOfType(HermesDictionary.W3ID_NS.getNs() + "Topic");
		for (Resource r : res) {
			// create a topic object
			Topic topic = new Topic(r.getURI(), r.getLocalName());
			list.add(topic);
		}

		// get the list of topics
		return list;
	}

	/**
	 * Post a request for planning a new trip for a user
	 * 
	 * @param request
	 * @return
	 */
	@PostMapping("/planner/trip")
	protected PlannedTrip doPlanTrip(@RequestBody TripRequest request) {
		

		// create empty object
		PlannedTrip trip = new PlannedTrip();
		
		// get planned trip
		return trip;
	}

	/**
	 * 
	 * @return
	 */
	@GetMapping("/test")
	public String test() {
		return "This is a test";
	}

	@GetMapping("/error")
	public String error() {
		return "Ops...";
	}

}