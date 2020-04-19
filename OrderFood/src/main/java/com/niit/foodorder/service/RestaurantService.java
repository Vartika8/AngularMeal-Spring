package com.niit.foodorder.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.foodorder.model.Restaurant;
import com.niit.foodorder.repository.RestaurantRepository;

@Service
@Transactional
public class RestaurantService {

	@Autowired
	private RestaurantRepository restaurantRepo;
	
	public Restaurant save(Restaurant restaurant)
	{
		return restaurantRepo.save(restaurant);
	}

	public  List<Restaurant> FindALL() {
		// TODO Auto-generated method stub
		return restaurantRepo.findAll();
	}

	public Optional<Restaurant> findById(int theResurantId) {
		// TODO Auto-generated method stub
		return restaurantRepo.findById(theResurantId);
	}
}
