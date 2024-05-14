package it.cnr.istc.hermes.hai.db.mongo;

import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import java.util.*;

import it.cnr.istc.hermes.hai.model.Poi;

/**
 * MongoDB interface to deal with the repository of POIs
 */
public interface PoiRepository extends MongoRepository<Poi, String> {
    
    @Query("{ _id: '?0'}")
    public Optional<Poi> findById(String id);

    public List<Poi> findAll();

    public long count();
}
