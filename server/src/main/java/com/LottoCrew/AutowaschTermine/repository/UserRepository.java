package com.LottoCrew.AutowaschTermine.repository;

import com.LottoCrew.AutowaschTermine.model.user;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends MongoRepository<user, String> {

    List<user> findAllByName(String name);
    Optional<user> findByName(String name);
}
