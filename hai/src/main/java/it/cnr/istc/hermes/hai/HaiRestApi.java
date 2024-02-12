package it.cnr.istc.hermes.hai;

import java.util.*;

import javax.validation.Valid;

import org.apache.jena.rdf.model.Property;
import org.apache.jena.rdf.model.Resource;
import org.apache.jena.rdf.model.Statement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import it.cnr.istc.hermes.hai.db.mongo.PlannedTripRepository;
import it.cnr.istc.hermes.hai.db.mongo.PoiRepository;
import it.cnr.istc.hermes.hai.db.mongo.TripRequestRepository;
import it.cnr.istc.hermes.hai.knowledge.HaiKnowledgeGraph;
import it.cnr.istc.hermes.hai.knowledge.HermesDictionary;
import it.cnr.istc.hermes.hai.knowledge.KnowledgeQuery;
import it.cnr.istc.hermes.hai.model.*;

/**
 * Hermes AI-based Component - REST API
 */
@RestController
@SpringBootApplication
@EnableMongoRepositories
public class HaiRestApi implements ErrorController {

	@Value("${knowledge.model.path}")
	private String model;

	@Autowired
	private TripRequestRepository reqRepo;			// mongoDB repo for received requests

	@Autowired
	private PoiRepository poiRepo;					// mongoDB repo for generated POIs

	@Autowired
	private PlannedTripRepository tripRepo;			// mongoDB repo for generated trips

	private static HaiKnowledgeGraph knowledge; 	// knowledge graph with embedded reasoner

	/*
	 * 
	 */
	public static void main(String[] args) {
		SpringApplication.run(HaiRestApi.class, args);
	}

	/**
	 * 
	 * @return
	 */
	@GetMapping("/")
	public String home() {
		return "Hi, this si the HERMES AI Server API endpoint!.";
	}

	/**
	 * 
	 * @return
	 */
	@RequestMapping("/error")
	public String error() {
		// return general message
        return "OPS! Invalid or missing request parameters!";
	}

	/**
	 * Retrieve the taxonomy of knowledge constants representing possible topics of a trip. 
	 * 
	 * Topics are used to retrieve contextual and thematic knowledge when sythesizing new trips 
	 * 
	 * @return
	 */
	@GetMapping("/knowledge/topics")
	public Map<Topic, List<Topic>> getTopics() {

		// taxonomy of topic objects
		Map<Topic, List<Topic>> result = new HashMap<>();

		// check reasoner 
		if (knowledge == null) {
			knowledge = new HaiKnowledgeGraph();
			// load a default model
			knowledge.load(HermesDictionary.HERMES_NS.getNs(), this.model);
		}

		// get rdfs:label data property
		Property label = knowledge.getPropertyById(HermesDictionary.RDFS_NS.getNs() + "label");

		// retrieve the taxonomy 
		Map<Resource, Set<Resource>> taxonomy = knowledge.taxonomyOfTopic();
		for (Resource topic : taxonomy.keySet()) {

			// get literal
			Statement pLabel = topic.getProperty(label);
			String parentLabel = pLabel == null ? topic.getLocalName() : pLabel.getString();

			// create topic object
			Topic parent = new Topic(
				topic.getURI(),
				parentLabel
			);

			// create children
			List<Topic> children = new ArrayList<>();
			for (Resource subtopic : taxonomy.get(topic)) {

				// get literal
				Statement cLabel = subtopic.getProperty(label);
				String childLabel = cLabel == null ? subtopic.getLocalName() : cLabel.getString();

				// create sub-topic
				Topic child = new Topic(
					subtopic.getURI(),
					childLabel
				);

				// add child
				children.add(child);
			}

			// add entry to the result
			result.put(parent, children);
		}

		// get the taxonomy of topics
		return result;
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
		if (knowledge == null) {
			knowledge = new HaiKnowledgeGraph();
			// load a default model
			knowledge.load(HermesDictionary.HERMES_NS.getNs(), this.model);
		}

		// get rdfs:label data property
		Property label = knowledge.getPropertyById(HermesDictionary.RDFS_NS.getNs() + "label");

		// retrieve all the individuals of arco:TangibleCulturalProperty
		List<Resource> res = knowledge.listResourcesOfType(HermesDictionary.ARCO_NS.getNs() + "CulturalProperty");
		for (Resource r : res) {
			// create a entity object
			CulturalEntity entity = new CulturalEntity();
			entity.setId(r.getURI());
			Statement rLabel = r.getProperty(label);
			entity.setLabel(rLabel == null ? r.getLocalName() : rLabel.getString());
			list.add(entity);
		}

		// get the list
		return list;
	}

	/**
	 * Retrieve the list of tangible and intangible entities that are associated with a given topic.
	 * 
	 * @param query
	 * @return
	 */
	@GetMapping("/knowledge/entities2topic")
	public List<CulturalEntity> getEntitiesRelatedToTopic(@Valid @RequestBody KnowledgeQuery query) { 
		// list of entities
		List<CulturalEntity> list = new ArrayList<>();
		// check reasoner 
		if (knowledge == null) {
			knowledge = new HaiKnowledgeGraph();
			// load a default model
			knowledge.load(HermesDictionary.HERMES_NS.getNs(), this.model);
		}

		// get the resource associated with the topic
		Resource res = knowledge.getResourceById(query.getUri());
		if (res != null) {
			
			// create topic object model
			Topic topic = new Topic();
			topic.setId(res.getURI());
			topic.setLabel(res.getLocalName());

			// retrieve the list of entities correlated with the topic
			list = knowledge.getEntitiesByTopic(topic);
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
	public List<Description> getEntityDescriptions(@Valid @RequestBody KnowledgeQuery query) {
		// list of entities
		List<Description> list = new ArrayList<>();
		
		// check reasoner 
		if (knowledge == null) {
			knowledge = new HaiKnowledgeGraph();
			// load a default model
			knowledge.load(HermesDictionary.HERMES_NS.getNs(), this.model);
		}

		// get rdfs:label data property
		Property label = knowledge.getPropertyById(HermesDictionary.RDFS_NS.getNs() + "label");

		// get the resource
		Resource res  = knowledge.getResourceById(query.getUri());
		if (res != null) {

			// create cultural entity
			CulturalEntity entity = new CulturalEntity();
			entity.setId(res.getURI());
			Statement sLab = res.getProperty(label);
			// set resource label
			entity.setLabel(sLab == null ? res.getLocalName() : sLab.getString());
			// retrieve all the description of the given entity
			list = knowledge.getEntityDescriptions(entity);
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
	protected PlannedTrip doPlanTrip(@Valid @RequestBody TripRequest request) {

		// check reasoner 
		if (knowledge == null) {
			knowledge = new HaiKnowledgeGraph();
			// load a default model
			knowledge.load(HermesDictionary.HERMES_NS.getNs(), this.model);
		}

		Set<Poi> pois = new HashSet<>();
		// save the received request
		this.reqRepo.save(request);	
		// set of relevant tangible entities
		Set<CulturalEntity> tangibles = new HashSet<>();
		// check tangible cultural properties
		for (Topic topic : request.getTopics()) {
			// retrieve tangibles
			tangibles.addAll(knowledge.getTangibleEntitiesByTopic(topic));
		}

		// prepare POIs for each tangible cultural entity
		for (CulturalEntity tangible : tangibles) {

			// list of descriptions - TODO : filter descriptions by relevant topics 
			List<Description> descs = knowledge.getEntityDescriptions(tangible);

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
	@GetMapping("/service/pois")
	protected List<Poi> getPois() {

		// retrieve the list of generated POIs
		return this.poiRepo.findAll();
	}

}