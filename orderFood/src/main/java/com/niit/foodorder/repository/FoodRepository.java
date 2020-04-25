package com.niit.foodorder.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.foodorder.model.Food;
import com.niit.foodorder.model.Restaurant;
import com.niit.foodorder.model.Users;

public interface FoodRepository extends JpaRepository<Food, Integer> {

	List<Food> findByRestaurant(Restaurant restaurant);

}
