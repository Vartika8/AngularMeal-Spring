 package com.niit.foodorder.rest;

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

import com.niit.foodorder.model.Cart;
import com.niit.foodorder.model.Customer;
import com.niit.foodorder.model.Food;
import com.niit.foodorder.repository.CartRepository;
import com.niit.foodorder.repository.CustomerRepository;
import com.niit.foodorder.repository.FoodRepository;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping(value = "/api/cart")
public class CartRestController {

	@Autowired
	private CartRepository cartrepo;

	@Autowired
	private CustomerRepository customerRepo;
	@Autowired
	private FoodRepository foodRepo;

	@GetMapping("/{id}")
	public List<Cart> viewCart(@PathVariable Integer id) {
		Customer customer = customerRepo.findById(id).get();
		return customer.getCartList();
	}

	@PostMapping("/{id}")
	public Boolean addToCart(@PathVariable Integer id, @RequestBody Integer foodId) {
		System.out.println("Adding Called");
		Customer customer = customerRepo.findById(id).get();
		Food food = foodRepo.findById(foodId).get();
		Cart cart = new Cart();
		cart.setCustomer(customer);
		cart.setFood(food);
		cart.setQuantity(1);
		cart.setPrice(food.getPrice() * 1);
		if (cartrepo.save(cart) != null)
			return true;
		else
			return false;
	}
	
	

	@PutMapping("/{id}")
	public List<Cart> updateCart(@PathVariable Integer id,@RequestBody Cart cart)
	{
		
		Customer customer=customerRepo.findById(id).get();
		cart.setCustomer(customer);
		cartrepo.save(cart);
		return cartrepo.findByCustomer(customer);
	}
	
	@DeleteMapping("/{id}")
	public List<Cart> deleteCartItem(@PathVariable Integer id)
	{
		
		Cart cart=cartrepo.findById(id).get();
		Customer customer =cart.getCustomer();
	
		cartrepo.deleteById(id);
		return  cartrepo.findByCustomer(customer);
		
		
	}
	
	
}
