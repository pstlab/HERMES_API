# HERMES API

HERMES REST API is a Spring Boot service that exposes the server-side capabilities of the HERMES AI component. The project combines a knowledge graph layer, a MongoDB persistence layer, and a planning engine based on PLATINUm to retrieve cultural knowledge, create new cultural entities, and synthesize personalized trips. The repository currently contains a placeholder README in the root, while the actual Java application lives under the `hai/` module. 

## About the repository

The repository is described on GitHub as **"HERMES AI Server Component"**. The codebase is written in Java, and the main Maven module is `hai`, a Spring Boot application that depends on Spring Web, Spring Data MongoDB, Apache Jena, and PLATINUm. The application entry point is `HaiRestApi`, which also declares the API endpoints documented below.

## Repository structure

```text
HERMES_API/
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

This layout is based on the public repository tree, which shows the root placeholder `README.md`, the `hai/` Maven module, top-level `resources/`, and test-related folders. Inside `hai/src/main/resources`, the project includes `application.properties`, several RDF/OWL knowledge files, and a `platinum` resource directory.

## Features

- API endpoints for browsing HERMES knowledge topics and cultural entities. 
- Planning endpoint for generating personalized trips from selected topics and a requested duration.
- Endpoint for posting a new cultural entity and attaching a topic-tagged textual description to the knowledge graph.
- MongoDB-backed storage for incoming trip requests, generated POIs, planned trips, and posted entity requests. 
- Knowledge-graph support built on Apache Jena, with a configurable default RDF model loaded at startup or on first use. 

## Tech stack

- Java
- Spring Boot 3.0.12
- Spring Web / WebFlux / Web Services
- Spring Data MongoDB
- Apache Jena 5.0.0
- PLATINUm 2.3.0
- Maven Wrapper (`mvnw`) in the `hai/` module

## Requirements

To run the service locally, you will need:

- Java 17 or newer, which is the baseline for Spring Boot 3.x
- A reachable MongoDB instance
  - Check the file ```application.properties``` and here replace the variables with a valid MONGODB USER, PASSWORD, and CLOUD
- Access to the HERMES RDF knowledge model file
- A PLATINUm installation or resource directory matching `planner.platinum.home`
  - Check your Maven local settings (```~/.m2/settings.xml```) to add your GitHub token and be able to download the platinum package (check the pom dependency to the GitHub repository)

The default application configuration expects:

- `knowledge.model.path=${HOME}/HERMES_AI/resources/hermes_20240509.rdf`
- `spring.data.mongodb.uri=mongodb+srv://${MONGO_CLOUD_USER}:${MONGO_CLOUD_PASS}@cluster0.zjmi0.mongodb.net/hermes_ai`
- `spring.data.mongodb.database=hermes_ai`
- `planner.platinum.home=${HOME}/HERMES_AI/resources/platinum`

## Getting started

### 1. Clone the repository

```bash
git clone https://github.com/pstlab/HERMES_API.git
cd HERMES_API/hai
```

### 2. Configure the environment

Create or edit the configuration under `hai/src/main/resources/application.properties`, or override the properties with your environment-specific values.

At minimum, check:

- the RDF knowledge model path
- the MongoDB URI and database name
- the PLATINUm home path

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

The main class is `it.cnr.istc.hermes.hai.HaiRestApi`. 

## API overview

The application exposes API endpoints directly from `HaiRestApi`. The home endpoint is `/`, and the controller also registers a generic `/error` handler. Several knowledge endpoints are declared as `GET` methods, but still accept a JSON request body containing a `uri` field. That is unusual for many HTTP clients, so in practice, you may prefer to test them with tools such as cURL or Postman that allow bodies on `GET` requests.

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

Both endpoints are declared in `HaiRestApi`. 

## Endpoint reference

### Knowledge endpoints

#### `GET /knowledge/topics`
Returns a taxonomy of available trip topics. The result is a map where each parent topic is associated with its child topics. Topics are built from RDF resources and labels in the knowledge graph.

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
Returns all cultural entities belonging to the `CulturalProperty` class, including both tangible and intangible entities.

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

The request uses the `KnowledgeQuery` model, which contains a required `uri` field. 

#### `GET /knowledge/descriptions`
Returns the contextual descriptions associated with a specific cultural entity.

Request body:

```json
{
  "uri": "<entity-uri>"
}
```

The endpoint resolves the URI in the knowledge graph, extracts the cultural entity, and then fetches all of its descriptions.

#### `GET /knowledge/entity/data`
Returns detailed data for a specific cultural entity.

Request body:

```json
{
  "uri": "<entity-uri>"
}
```

For tangible entities, the returned object can include fields such as visiting time, open hours, coordinates, accessibility flags, price, group visit support, and address.

### Planning endpoint

#### `POST /planner/trip`
Generates a personalized trip from a user request. The server:

1. saves the trip request in MongoDB,
2. finds cultural entities related to the requested topics,
3. builds POIs around relevant tangible entities,
4. invokes the PLATINUm-based planner when the total visit time exceeds the requested duration,
5. returns a `PlannedTrip` object.

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
- `mVector` - optional `boolean[]` 

Response highlights:

- `id`
- `time`
- `duration`
- `hops` - ordered list of POIs
- `request` - the originating trip request
- `ranking`
- `counter`

### Knowledge update endpoint

#### `POST /knowledge/entity`
Creates a new knowledge-graph resource for a cultural entity and links it to a generated description tagged with one or more topics. The request is also persisted in MongoDB, and the endpoint returns the URI of the created node. 

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
- `mVector` - optional `boolean[]` 

Response example:

```text
http://example.org/resource/GeneratedEntity123
```

