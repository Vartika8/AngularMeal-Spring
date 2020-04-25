package com.niit.foodorder.controller;

import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.List;
import java.util.NoSuchElementException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.foodorder.model.Customer;
import com.niit.foodorder.model.Restaurant;
import com.niit.foodorder.model.Users;
import com.niit.foodorder.service.CustomerService;
import com.niit.foodorder.service.RestaurantService;
import com.niit.foodorder.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private CustomerService customerService;
	@Autowired
	private RestaurantService resturantService;
	@Autowired
	private UserService userService;

	@RequestMapping("/showForm")
	public String registrationCustomer(Model model) {
		Users user = new Users();

		model.addAttribute("customer", user);

		return "customer-form";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveRegistrationForm(HttpServletRequest request, @ModelAttribute("customer") Users users) {
		ModelAndView model = null;
		String userType = request.getParameter("usersType");
		Customer customer = null;
		Restaurant resturant = null;

		try{
			userService.findByPhone(users.getPhone()).get();
			// Already Register
						model = new ModelAndView("customer-form");
						model.addObject("customer", new Users());
						model.addObject("msg", "Already Registered");
		}
		catch(NoSuchElementException e)
		{

			model = new ModelAndView("login-customer");
			if (userType.equals("customer")) {
				customer = new Customer();
				customer.setUser(userService.save(users));

				customerService.save(customer);
			} else {
				// Resturant
				resturant = new Restaurant();
				resturant.setUser(userService.save(users));
				resturantService.save(resturant);
			}

			model.addObject("msg", "Successfully Register");
		}

	

		return model;
	}

	@RequestMapping(value = "/loginForm1")
	public String loginForm(Model model) {
		return "login-customer";

	}

	@PostMapping("/authenticLogin")
	public ModelAndView processLogin(HttpServletRequest request) {
		ModelAndView model = null;
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		if (phone != null && password != null) {

			Users user = userService.findByPhone(phone).get();
			if (user.getPhone().equals(phone) && user.getPassword().equalsIgnoreCase(password)) {
				request.getSession().setAttribute("userId", user); // Session Created
				if (user.getCustomer() == null) {// Customer
					model = new ModelAndView("resturantWelcome");
					model.addObject("resturant", user.getRestaurant());
				} else {// Restaurant
					List<Restaurant> resturantList = resturantService.FindALL();
					model = new ModelAndView("PostCustLogin");
					model.addObject("resturantList", resturantList);
					model.addObject("customer", user.getCustomer());
				}
			} else {
				model = new ModelAndView("login-customer");
				model.addObject("msg", "Invalid Phone Number and Password");

			}
		} else {
			model = new ModelAndView("login-customer");
			model.addObject("msg", "Invalid Phone Number and Password");

		}

		return model;

	}

	private String encryptPass(String pass) {
		Base64.Encoder encoder = Base64.getEncoder();
		String normalString = pass;
		String encodedString = encoder.encodeToString(normalString.getBytes(StandardCharsets.UTF_8));
		return encodedString;
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest req) {
		req.getSession().invalidate();
		return "redirect:/";
	}
}
