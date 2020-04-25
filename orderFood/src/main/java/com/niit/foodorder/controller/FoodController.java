package com.niit.foodorder.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.foodorder.model.Restaurant;
import com.niit.foodorder.service.RestaurantService;

@Controller
public class FoodController {
	
//	@Autowired
//	private FoodService foodService;
	@Autowired
	private RestaurantService restaurantService;
	
	@GetMapping("/ViewFood")
	public ModelAndView viewFood(@RequestParam("restaurantId") int theResurantId )
	{
		ModelAndView model=new ModelAndView("menuList");
		
		Restaurant restaurant=restaurantService.findById(theResurantId).get();
		model.addObject("foodList", restaurant.getFoodList());
		model.addObject("restaurantName",restaurant.getUser().getName());
		return model;
	}

}
