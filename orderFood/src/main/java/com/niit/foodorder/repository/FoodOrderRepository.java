package com.niit.foodorder.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.foodorder.model.Customer;
import com.niit.foodorder.model.FoodOrder;

public interface FoodOrderRepository extends JpaRepository<FoodOrder, Integer> {

	List<FoodOrder> findByCustomer(Customer customer);

}
