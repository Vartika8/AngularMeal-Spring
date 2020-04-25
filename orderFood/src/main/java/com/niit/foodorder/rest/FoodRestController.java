package com.niit.foodorder.rest;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.niit.foodorder.model.Food;
import com.niit.foodorder.model.Restaurant;
import com.niit.foodorder.model.Users;
import com.niit.foodorder.repository.FoodRepository;
import com.niit.foodorder.repository.RestaurantRepository;

@RestController

@CrossOrigin(origins = { "http://localhost:4200", "http://localhost:9090" })
@RequestMapping("/api/food")
public class FoodRestController {

	@Autowired
	private FoodRepository foodRepo;

	@Autowired
	private RestaurantRepository restaurantRepo;

	@PostMapping
	public List<Food> foodList(@RequestBody Users users) {
		Integer restaurantId = users.getRestaurant().getId();

		return foodRepo.findByRestaurant(restaurantRepo.findById(restaurantId).get());
	}

	@DeleteMapping("/{id}")
	public List<Food> foodDelete(@PathVariable Integer id) {
		Food foodObj = foodRepo.findById(id).get();
		Integer restaurantId = foodObj.getRestaurant().getId();
		foodRepo.deleteById(id);
		return foodRepo.findByRestaurant(restaurantRepo.findById(restaurantId).get());
	}

	@GetMapping("/customer/{id}")
	public List<Food> FoodListByRestaurant(@PathVariable Integer id) {
		Restaurant restaurant = restaurantRepo.findById(id).get();
		return foodRepo.findByRestaurant(restaurant);
	}

	@PostMapping("/add")
	public Boolean addFood(@RequestBody Food food) {
		Restaurant restaurant = restaurantRepo.findById(food.getId()).get();
		food.setRestaurant(restaurant);
		food.setId(null);
		if (foodRepo.save(food) != null) {
			return true;
		}
		return false;
	}
		
		
		

	@GetMapping("/{id}")
	public Food foodView(@PathVariable("id") Integer FoodId)
	{
		return foodRepo.findById(FoodId).get();
	}

	@PutMapping("/{id}")
	public Boolean updateFood(@PathVariable Integer id,@RequestBody Food food) {

		Food foodObj = foodRepo.findById(food.getId()).get();
		food.setRestaurant(foodObj.getRestaurant());
		if (foodRepo.save(food) != null) {
			return true;
		} else {
			return false;
		}
	}

}
