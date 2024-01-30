package it.cnr.istc.hermes.hai;

import java.util.*;

import org.apache.jena.rdf.model.Resource;
import org.apache.jena.rdf.model.Statement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import it.cnr.istc.hermes.hai.reasoner.HaiKnowledgeGraph;
import it.cnr.istc.hermes.hai.reasoner.HermesDictionary;
import it.cnr.istc.hermes.hai.db.mongo.PlannedTripRepository;
import it.cnr.istc.hermes.hai.db.mongo.PoiRepository;
import it.cnr.istc.hermes.hai.db.mongo.TripRequestRepository;
import it.cnr.istc.hermes.hai.model.*;

/**
 * Hermes AI-based Component - REST API
 */
@RestController
@SpringBootApplication
@EnableMongoRepositories
public class HaiRestApi {

	@Value("${knowledge.model.path}")
	private String model;

	@Autowired
	private TripRequestRepository reqRepo;		// mongoDB repo for received requests

	@Autowired
	private PoiRepository poiRepo;				// mongoDB repo for generated POIs

	@Autowired
	private PlannedTripRepository tripRepo;		// mongoDB repo for generated trips

	private static HaiKnowledgeGraph kg; 		// knowledge graph with embedded reasoner

	/*
	 * 
	 */
	public static void main(String[] args) {
		SpringApplication.run(HaiRestApi.class, args);
	}

	/**
	 * Retrieve the taxonomy of knowledge constants representing possible topics of a trip. 
	 * 
	 * Topics are used to retrieve contextual and thematic knowledge when sythesizing new trips 
	 * 
	 * @return
	 */
	@GetMapping("/knowledge/topics")
	public Map<Topic, Topic> getTopics() {

		// taxonomy of topic objects
		Map<Topic, Topic> result = new HashMap<>();

		// check reasoner 
		if (kg == null) {
			kg = new HaiKnowledgeGraph();
			// load a default model
			kg.load(HermesDictionary.HERMES_NS.getNs(), this.model);
		}

		// retrieve the taxonomy 
		Map<Resource, Set<Resource>> taxonomy = kg.taxonomyOfTopic();
		for (Resource topic : taxonomy.keySet()) {
			// create topic object
			Topic parent = new Topic(
				topic.getURI(),
				topic.getLocalName()
			);

			// check sub-topics
			for (Resource subtopic : taxonomy.get(topic)) {
				// create sub-topic object
				Topic child = new Topic(
					subtopic.getURI(),
					subtopic.getLocalName()
				);

				// update the taxonomy
				result.put(child, parent);
			}
		}

		// get the taxonomy of topics
		return result;
	}

	/**
	 * Retrieve the leaves of the taxonomy of topics
	 * 
	 * @return
	 */
	@GetMapping("/knowledge/topics/leaves")
	public List<Topic> getTopicLeaves() {

		// leaves of the taxonomy
		List<Topic> leaves = new ArrayList<>();

		// check reasoner 
		if (kg == null) {
			kg = new HaiKnowledgeGraph();
			// load a default model
			kg.load(HermesDictionary.HERMES_NS.getNs(), this.model);
		}

		// retrieve information from the knowledge graph
		Set<Resource> resources = kg.taxonomyOfTopicLeaves();
		for (Resource res : resources) {
			// create topic object
			Topic topic = new Topic(
				res.getURI(),
				res.getLocalName()
			);

			// add to leaves
			leaves.add(topic);
		}

		// get the leaves
		return leaves;
	}

	/**
	 * Retrieve all the individuals of CulturalProperty, either tangible or intangible.
	 * @return
	 */
	@GetMapping("/knowledge/entities")
	public List<CulturalEntity> getCulturalEntities() {
		// list of entities
		List<CulturalEntity> list = new ArrayList<>();
		
		// check reasoner 
		if (kg == null) {
			kg = new HaiKnowledgeGraph();
			// load a default model
			kg.load(HermesDictionary.HERMES_NS.getNs(), this.model);
		}

		// retrieve all the individuals of arco:TangibleCulturalProperty
		List<Resource> res = kg.listResourcesOfType(HermesDictionary.ARCO_NS.getNs() + "CulturalProperty");
		for (Resource r : res) {
			// create a entity object
			CulturalEntity entity = new CulturalEntity();
			entity.setId(r.getURI());
			entity.setLabel(r.getLocalName());
			list.add(entity);
		}

		// get the list
		return list;
	}

	/**
	 * Retrieve the list of entities associated with a given topic.
	 * 
	 * @param uri - the URI uniquely identifying the topic within the knowledge base
	 * @return
	 */
	@PostMapping("/knowledge/entities2topic")
	public List<CulturalEntity> getEntitiesRelatedToTopic(@RequestBody PostKnowledgeQuery query) { 
		// list of entities
		List<CulturalEntity> list = new ArrayList<>();
		// check reasoner 
		if (kg == null) {
			kg = new HaiKnowledgeGraph();
			// load a default model
			kg.load(HermesDictionary.HERMES_NS.getNs(), this.model);
		}

		// get the resource associated with the topic
		Resource res = kg.getResourceById(query.getUri());
		if (res != null) {
			
			// create topic object model
			Topic topic = new Topic();
			topic.setId(res.getURI());
			topic.setLabel(res.getLocalName());

			// retrieve the list of entities correlated with the topic
			list = kg.getEntitiesByTopic(topic);
		}

		// get the list 
		return list;
	}

	/**
	 * Retrieve the list of contextual descriptions associated with a given cultural entity.
	 * 
	 * @param uri - the URI uniquely identifying the cultural entity within the knowledge base
	 * @return
	 */
	@PostMapping("/knowledge/descriptions")
	public List<Description> getEntityDescriptions(@RequestBody PostKnowledgeQuery query) {
		// list of entities
		List<Description> list = new ArrayList<>();
		
		// check reasoner 
		if (kg == null) {
			kg = new HaiKnowledgeGraph();
			// load a default model
			kg.load(HermesDictionary.HERMES_NS.getNs(), this.model);
		}

		// get the resource
		Resource res  = kg.getResourceById(query.getUri());
		if (res != null) {

			// create cultural entity
			CulturalEntity entity = new CulturalEntity();
			entity.setId(res.getURI());
			entity.setLabel(res.getLocalName());
			// retrieve all the description of the given entity
			list = kg.getEntityDescriptions(entity);
		}

		// get the list
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

		// check reasoner 
		if (kg == null) {
			kg = new HaiKnowledgeGraph();
			// load a default model
			kg.load(HermesDictionary.HERMES_NS.getNs(), this.model);
		}

		Set<Poi> pois = new HashSet<>();
		// save the received request
		this.reqRepo.save(request);	
		// set of relevant tangible entities
		Set<CulturalEntity> tangibles = new HashSet<>();
		// check tangible cultural properties
		for (Topic topic : request.getTopics()) {

			tangibles.addAll(kg.getTangibleEntitiesByTopic(topic));
		}

		// prepare POIs for each tangible cultural entity
		for (CulturalEntity tangible : tangibles) {

			// list of descriptions 
			List<Description> descs = new ArrayList<>();
			// retrieve descriptions
			for (Description desc : kg.getEntityDescriptions(tangible)) {
				// check topic 
				if (request.getTopics().contains(desc.getTopic())) {
					descs.add(desc);
				}
			}

			// TODO - retrieve associated intangible entities

			// check data
			if (!descs.isEmpty()) {

				// create POI
				Poi poi = new Poi();
				poi.setTangible(tangible);
				poi.setDescriptions(descs);

				// store the poi into the repository
				this.poiRepo.save(poi);
				// add poi to the set
				pois.add(poi);
			}
		}

	
		PlannedTrip trip = null;
		// check found POIs
		if (!pois.isEmpty()) {
			
			// TODO -- IMPLEMENT PLANNING PROCESS
		
			// create trip
			trip = new PlannedTrip();
			trip.setCounter(0);
			trip.setDuration(1000);
			trip.setHops(new ArrayList<>(pois));
			trip.setRanking(0);
			trip.setRequest(request);
			// save planned trip
			this.tripRepo.save(trip);
		}

		// get the list
		return trip;
	}

	/**
	 * Return the list of planned trips
	 * 
	 * @return
	 */
	@GetMapping("/service/trips")
	protected List<PlannedTrip> getPlannedTrips() {

		// retrieve the list of planned trips
		return this.tripRepo.findAll();
	}

	/**
	 * Return the list of generated POIs
	 * 
	 * @return
	 */
	@GetMapping("service/pois")
	protected List<Poi> getPois() {

		// retrieve the list of generated POIs
		return this.poiRepo.findAll();
	}

}