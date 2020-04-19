package com.niit.foodorder.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.foodorder.model.Restaurant;

public interface RestaurantRepository extends JpaRepository<Restaurant, Integer> {

}
