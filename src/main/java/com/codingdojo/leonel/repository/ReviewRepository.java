package com.codingdojo.leonel.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.leonel.models.Review;

@Repository
public interface ReviewRepository extends CrudRepository<Review,Long>{
	//crear una lista en base a su rating 
	List<Review> findAll ();
	
}
