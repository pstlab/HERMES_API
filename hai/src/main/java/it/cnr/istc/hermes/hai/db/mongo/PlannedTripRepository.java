package it.cnr.istc.hermes.hai.db.mongo;

import java.util.Optional;
import java.util.*; 

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import it.cnr.istc.hermes.hai.model.*;

/**
 * MongoDB interface to deal with the repository of planned trips
 */
public interface PlannedTripRepository extends MongoRepository<PlannedTrip, String> {
    
    @Query("{_id: '?0'}")
    public Optional<PlannedTrip> findById(String id);

    public List<PlannedTrip> findAll();

    public long count();
}
