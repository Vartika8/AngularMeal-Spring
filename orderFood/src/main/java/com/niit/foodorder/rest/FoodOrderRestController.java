package com.niit.foodorder.rest;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.niit.foodorder.model.Cart;
import com.niit.foodorder.model.Customer;
import com.niit.foodorder.model.Food;
import com.niit.foodorder.model.FoodOrder;
import com.niit.foodorder.repository.CartRepository;
import com.niit.foodorder.repository.CustomerRepository;
import com.niit.foodorder.repository.FoodOrderRepository;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping(value = "/api/order")
public class FoodOrderRestController {

	@Autowired
	private FoodOrderRepository orderrepo;

	@Autowired
	private CustomerRepository custrepo;

	@Autowired
	private CartRepository cartRepo;

	@PostMapping("/{id}")
	public List<FoodOrder> order(@PathVariable Integer id) {
		Customer customer = custrepo.findById(id).get();
	
		List<Cart> cartList=cartRepo.findByCustomer(customer);
		if(!cartList.isEmpty()) {
			Double total = 0.0;
			FoodOrder order = new FoodOrder();
			order.setCustomer(customer);
			List<Food> foodList = new ArrayList<Food>();
			for (Cart cart : cartList) {

				foodList.add(cart.getFood());
				total += cart.getPrice();
				
			}
			cartRepo.deleteAll(cartList);
			customer.getCartList().clear();
			order.setOrderDate(new Date());
			order.setFood(foodList);
			order.setTotalPrice(total);
			customer.getFoodOrder().add(orderrepo.save(order));
			custrepo.save(customer);
		}
		return orderrepo.findByCustomerOrderByOrderDateDesc(customer);
	}

}
