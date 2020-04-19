package com.niit.foodorder.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.foodorder.model.Customer;
import com.niit.foodorder.service.CustomerService;

@Controller
@RequestMapping("/customer") // @RequestMapping using in the class level
public class CutomerController {

	@Autowired
	private CustomerService customerService;

//	@RequestMapping("/showForm")
//	public String registrationCustomer(Model model) {
//		Customer customer = new Customer();
//		
//		model.addAttribute("customer", customer);
//
//		return "customer-form";
//	}

//	@RequestMapping(value = "/save", method = RequestMethod.POST)
//	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
//		customerService.save(customer);
//
//		return "login-customer";
//	}
	
	@RequestMapping(value="/loginForm",method= {RequestMethod.POST,RequestMethod.GET})
	public String loginForm(Model model) {
		return "login-customer";
	
	}
	
//	@RequestMapping(value="/checkLogin",method= {RequestMethod.POST,RequestMethod.GET})	
//	public String checkLogin(HttpServletRequest request,Model model) {
//		String phone=request.getParameter("phone");
//		String password=request.getParameter("password");
//		List<Customer> customer=customerService.findByPhoneAndPassword(phone,password);
//		if(customer!=null)
//		{
//			model.addAttribute("customer",customer.get(0));
//			return "welcome";
//			
//			
//		}
//		else
//		{
//			model.addAttribute("message","Invalid Phone or Password");
//			return "redirect:/customer/loginForm";
//		}
//		
//		
//	}

	/*
	 * @RequestMapping("/edit") public ModelAndView
	 * showEditProductPage(@RequestParam("id") int id) { ModelAndView mav = new
	 * ModelAndView("edit_product"); Customer product = customerService.get(id);
	 * mav.addObject("product", product);
	 * 
	 * return mav; }
	 * 
	 * @RequestMapping("/delete") public String deleteProduct(@RequestParam("id")
	 * int id) { customerService.delete(id); return "redirect:/"; }
	 * 
	 */

}
