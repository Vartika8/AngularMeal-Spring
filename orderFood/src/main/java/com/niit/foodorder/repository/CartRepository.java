package com.niit.foodorder.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.foodorder.model.Cart;
import com.niit.foodorder.model.Customer;

public interface CartRepository extends JpaRepository<Cart, Integer> {

	List<Cart> findByCustomer(Customer customer);

	void deleteByCustomer(Customer customer);

}