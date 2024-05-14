package it.cnr.istc.hermes.hai.db.mongo;

import it.cnr.istc.hermes.hai.model.*;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.List;
import java.util.Optional;

/**
 * MongoDB interface to deal with the repository of trip requests
 */
public interface TripRequestRepository extends MongoRepository<TripRequest, String> {

    @Query("{ _id: '?0'}")
    public Optional<TripRequest> findById(String id);

    public List<TripRequest> findAll();

    public long count();
}
