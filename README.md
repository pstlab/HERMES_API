# HERMES REST API

HERMES REST API is a Spring Boot service that exposes the server-side capabilities of the HERMES AI component. The project combines a knowledge graph layer, a MongoDB persistence layer, and a planning engine based on PLATINUm to retrieve cultural knowledge, create new cultural entities, and synthesize personalized trips. The repository currently contains a placeholder README in the root, while the actual Java application lives under the `hai/` module. 

## About the repository

The repository is described on GitHub as **"HERMES AI Server Component"**. The codebase is written in Java, and the main Maven module is `hai`, a Spring Boot application that depends on Spring Web, Spring Data MongoDB, Apache Jena, and PLATINUm. The application entry point is `HaiRestApi`, which also declares the REST endpoints documented below. citeturn158797view0turn713210view0turn803605view0

## Repository structure

```text
HERMES_REST_API/
├── README.md                # currently a placeholder in the repository root
├── hai/                     # main Spring Boot application module
│   ├── pom.xml
│   ├── mvnw
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/it/cnr/istc/hermes/hai/
│   │   │   └── resources/
│   │   └── test/
├── resources/
├── hermes_api_tests/
└── target/
```

This layout is based on the public repository tree, which shows the root placeholder `README.md`, the `hai/` Maven module, top-level `resources/`, and test-related folders. Inside `hai/src/main/resources`, the project includes `application.properties`, several RDF/OWL knowledge files, and a `platinum` resource directory. citeturn158797view0turn872002view0turn103635view0turn141464view0

## Features

- REST endpoints for browsing HERMES knowledge topics and cultural entities. citeturn803605view0
- Planning endpoint for generating personalized trips from selected topics and a requested duration. citeturn803605view0turn196169view0
- Endpoint for posting a new cultural entity and attaching a topic-tagged textual description to the knowledge graph. citeturn803605view0turn196169view1
- MongoDB-backed storage for incoming trip requests, generated POIs, planned trips, and posted entity requests. citeturn803605view0turn196169view0turn196169view1turn242977view0turn242977view1
- Knowledge-graph support built on Apache Jena, with a configurable default RDF model loaded at startup or on first use. citeturn713210view0turn803605view0turn803605view1

## Tech stack

- Java
- Spring Boot 3.0.12
- Spring Web / WebFlux / Web Services
- Spring Data MongoDB
- Apache Jena 5.0.0
- PLATINUm 2.3.0
- Maven Wrapper (`mvnw`) in the `hai/` module citeturn713210view0turn872002view0

## Requirements

To run the service locally, you will need:

- Java 17 or newer, which is the baseline for Spring Boot 3.x
- A reachable MongoDB instance
- Access to the HERMES RDF knowledge model file
- A PLATINUm installation or resource directory matching `planner.platinum.home`

The default application configuration expects:

- `knowledge.model.path=${HOME}/HERMES_AI/resources/hermes_20240509.rdf`
- `spring.data.mongodb.uri=mongodb+srv://${MONGO_CLOUD_USER}:${MONGO_CLOUD_PASS}@cluster0.zjmi0.mongodb.net/hermes_ai`
- `spring.data.mongodb.database=hermes_ai`
- `planner.platinum.home=${HOME}/HERMES_AI/resources/platinum` citeturn803605view1

## Getting started

### 1. Clone the repository

```bash
git clone https://github.com/pstlab/HERMES_REST_API.git
cd HERMES_REST_API/hai
```

### 2. Configure the environment

Create or edit the configuration under `hai/src/main/resources/application.properties`, or override the properties with your environment-specific values.

At minimum, check:

- the RDF knowledge model path
- the MongoDB URI and database name
- the PLATINUm home path citeturn803605view1

### 3. Build the application

From the `hai/` directory:

```bash
./mvnw clean package
```

Or, if Maven is installed globally:

```bash
mvn clean package
```

### 4. Run the application

```bash
./mvnw spring-boot:run
```

or

```bash
java -jar target/hai-0.0.1-SNAPSHOT.jar
```

The main class is `it.cnr.istc.hermes.hai.HaiRestApi`. citeturn713210view0turn803605view0

## API overview

The application exposes REST endpoints directly from `HaiRestApi`. The home endpoint is `/`, and the controller also registers a generic `/error` handler. Several knowledge endpoints are declared as `GET` methods but still accept a JSON request body containing a `uri` field. That is unusual for many HTTP clients, so in practice you may prefer to test them with tools such as cURL or Postman that allow bodies on `GET` requests. citeturn803605view0turn196169view2

### Base endpoint

#### `GET /`
Returns a simple health-style greeting string.

Example response:

```text
Hi, this is the HERMES AI Server API endpoint!.
```

#### `GET /error`
Returns a generic error message when request parameters are invalid or missing.

Example response:

```text
OPS! Invalid or missing request parameters!
```

Both endpoints are declared in `HaiRestApi`. citeturn803605view0

## Endpoint reference

### Knowledge endpoints

#### `GET /knowledge/topics`
Returns a taxonomy of available trip topics. The result is a map where each parent topic is associated with its child topics. Topics are built from RDF resources and labels in the knowledge graph. citeturn803605view0turn196169view3

Example response shape:

```json
{
  "{parent-topic}": [
    { "id": "<topic-uri>", "label": "Topic label" },
    { "id": "<subtopic-uri>", "label": "Subtopic label" }
  ]
}
```

#### `GET /knowledge/entities`
Returns all cultural entities belonging to the `CulturalProperty` class, including both tangible and intangible entities. citeturn803605view0turn242977view2

Example response shape:

```json
[
  {
    "id": "<entity-uri>",
    "label": "Entity label",
    "tangible": true,
    "detailed": true,
    "culturalPropertyType": "<ontology-class-uri>"
  }
]
```

#### `GET /knowledge/entities2topic`
Returns the cultural entities associated with a specific topic.

Request body:

```json
{
  "uri": "<topic-uri>"
}
```

The request uses the `KnowledgeQuery` model, which contains a required `uri` field. citeturn803605view0turn196169view2

#### `GET /knowledge/descriptions`
Returns the contextual descriptions associated with a specific cultural entity.

Request body:

```json
{
  "uri": "<entity-uri>"
}
```

The endpoint resolves the URI in the knowledge graph, extracts the cultural entity, and then fetches all of its descriptions. citeturn803605view0

#### `GET /knowledge/entity/data`
Returns detailed data for a specific cultural entity.

Request body:

```json
{
  "uri": "<entity-uri>"
}
```

For tangible entities, the returned object can include fields such as visiting time, open hours, coordinates, accessibility flags, price, group visit support, and address. citeturn803605view0turn242977view3

### Planning endpoint

#### `POST /planner/trip`
Generates a personalized trip from a user request. The server:

1. saves the trip request in MongoDB,
2. finds cultural entities related to the requested topics,
3. builds POIs around relevant tangible entities,
4. invokes the PLATINUm-based planner when the total visit time exceeds the requested duration,
5. returns a `PlannedTrip` object. citeturn803605view0turn196169view0turn242977view0turn242977view1

Request body example:

```json
{
  "userId": "user-001",
  "duration": 240,
  "topics": [
    { "id": "<topic-uri>", "label": "Archaeology" },
    { "id": "<topic-uri>", "label": "Architecture" }
  ],
  "groupSize": 2,
  "userLocation": [12.4964, 41.9028],
  "dVector": [true, false, false],
  "mVector": [true, true, false]
}
```

Relevant `TripRequest` fields inferred from the model:

- `userId` - required
- `duration` - required
- `topics` - required, non-empty
- `time` - optional, defaults to request creation time
- `userLocation` - optional `float[]`
- `groupSize` - optional
- `dVector` - optional `boolean[]`
- `mVector` - optional `boolean[]` citeturn196169view0

Response highlights:

- `id`
- `time`
- `duration`
- `hops` - ordered list of POIs
- `request` - the originating trip request
- `ranking`
- `counter` citeturn242977view0

### Knowledge update endpoint

#### `POST /knowledge/entity`
Creates a new knowledge-graph resource for a cultural entity and links it to a generated description tagged with one or more topics. The request is also persisted in MongoDB, and the endpoint returns the URI of the created node. citeturn803605view0turn196169view1

Request body example:

```json
{
  "entityLabel": "Traditional Ceramic Workshop",
  "text": "A workshop preserving local ceramic techniques and oral traditions.",
  "culturalPropertyType": "<cultural-property-class-uri>",
  "topics": [
    { "id": "<topic-uri>", "label": "Craftsmanship" }
  ],
  "location": [12.4964, 41.9028],
  "groupSize": 10,
  "dVector": [false, false, false],
  "mVector": [true, false, true]
}
```

Relevant `PostEntityRequest` fields inferred from the model:

- `entityLabel` - required
- `text` - required
- `culturalPropertyType` - required
- `topics` - required, non-empty
- `resourceId` - optional, intended for updates but not yet used in the controller logic
- `time` - auto-initialized
- `location` - optional `float[]`
- `groupSize` - optional
- `dVector` - optional `boolean[]`
- `mVector` - optional `boolean[]` citeturn196169view1turn803605view0

Response example:

```text
http://example.org/resource/GeneratedEntity123
```

### Service data endpoints

#### `GET /service/trips`
Returns all planned trips stored in MongoDB. citeturn803605view0turn242977view0

#### `GET /service/pois`
Returns all generated POIs stored in MongoDB. A POI contains a tangible cultural entity, a set of relevant descriptions, linked entities, ranking data, and usage counters. citeturn803605view0turn242977view1

## Data model summary

### `Topic`
A lightweight object with:

- `id`: knowledge-base URI
- `label`: human-readable topic label citeturn196169view3

### `KnowledgeQuery`
A simple request model used by knowledge lookup endpoints:

- `uri`: required resource identifier citeturn196169view2

### `TripRequest`
Represents the input used to generate a trip. Required fields are `userId`, `duration`, and a non-empty `topics` list. citeturn196169view0

### `PlannedTrip`
Stores a generated itinerary, including requested duration, ordered POI hops, the original request, ranking, and a usage counter. citeturn242977view0

### `Poi`
Represents a generated point of interest built around a tangible cultural entity, enriched with topic-relevant descriptions and linked entities. citeturn242977view1

## Notes and caveats

- The repository root `README.md` is currently just `# HERMES REST API TODO`, so replacing it with this file would immediately improve repository documentation. citeturn884965view0
- The `src` entry at repository root is a symbolic link to `hai/src/main/java`. citeturn512769view0
- Several read endpoints use `GET` together with a request body. Some clients, proxies, and API gateways do not handle GET bodies consistently, so this is worth documenting for users or revisiting in a future API revision. citeturn803605view0turn196169view2
- The controller contains a `TODO` comment indicating that entity creation is not yet complete with all expected data properties. citeturn803605view0

## License

No license file was visible in the repository pages I inspected, so this README intentionally does not declare one. Add a license section once a repository license is published. citeturn158797view0
