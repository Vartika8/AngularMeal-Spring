package com.niit.foodorder.service;




import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.foodorder.model.Customer;
import com.niit.foodorder.repository.CustomerRepository;

@Service
@Transactional
public class CustomerService {

	@Autowired
	private CustomerRepository customerRepository;
	public Customer save(Customer customer) {
		// TODO Auto-generated method stub
		return customerRepository.save(customer);
	}

}
