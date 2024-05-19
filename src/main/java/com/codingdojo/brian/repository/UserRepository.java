package com.codingdojo.brian.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.brian.models.User;

@Repository
public interface UserRepository extends CrudRepository<User,Long>{
	User findByEmail(String email);
	
}
