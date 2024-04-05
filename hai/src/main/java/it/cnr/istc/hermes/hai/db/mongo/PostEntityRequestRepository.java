package it.cnr.istc.hermes.hai.db.mongo;

import it.cnr.istc.hermes.hai.model.*;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.List;
import java.util.Optional;


/**
 * MongoDB interface to deal with the repository of post cultural entity requests
 */
public interface PostEntityRequestRepository extends MongoRepository<PostEntityRequest, String> {

    @Query("{ _id: '?0'}")
    public Optional<PostEntityRequest> findById(String id);

    public List<PostEntityRequest> findAll();

    public long count();
}
