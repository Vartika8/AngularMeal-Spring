package com.niit.foodorder.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.niit.foodorder.model.Users;
import com.niit.foodorder.repository.RestaurantRepository;
import com.niit.foodorder.repository.UserRepository;

@RestController
@CrossOrigin(origins="http://localhost:4200")
@RequestMapping(value="/api")
public class RestaurantController {

	@Autowired
	private RestaurantRepository restaurantRepo;
	@Autowired
	private UserRepository usersRepo;
	
	@GetMapping()
	public List<Users> resturantList()
	{
		return usersRepo.findByRole("Restaurant");
	}
}
