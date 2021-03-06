package com.niit.foodorder.rest;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.niit.foodorder.model.Customer;
import com.niit.foodorder.model.Restaurant;
import com.niit.foodorder.model.Users;
import com.niit.foodorder.repository.CustomerRepository;
import com.niit.foodorder.repository.RestaurantRepository;
import com.niit.foodorder.repository.UserRepository;

@RestController
@CrossOrigin(origins="http://localhost:4200")
@RequestMapping(value="/api")
public class UserRestController {
	
	@Autowired
	private UserRepository urepo;
	
	@Autowired
	private CustomerRepository crepo;
	
	@Autowired

	private RestaurantRepository rrepo;
		
	@PostMapping("/userRegistration")
	public Users userregistration(@RequestBody Users user) {
		Customer customer = null;
		Restaurant restaurant = null;
		user.setRestaurant(null);
		user.setCustomer(null);
		if (user.getRole().equalsIgnoreCase("Customer")) {
			customer = new Customer();
			customer.setUser(urepo.save(user));
			crepo.save(customer);
		} else {
			restaurant = new Restaurant();
			restaurant.setUser(urepo.save(user));
			rrepo.save(restaurant);
		}
	return user;
	
	}
	
	@PostMapping("/login")
	public Users userLogin(@RequestBody Map<String,String> users) {
		
		return urepo.findByPhoneAndPassword(users.get("phone") ,users.get("password"));
	}
	

}
	

