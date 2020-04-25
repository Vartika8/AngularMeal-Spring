package com.niit.foodorder.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.foodorder.model.Restaurant;
import com.niit.foodorder.model.Users;

public interface UserRepository extends JpaRepository<Users, String> {

	Users findByPhoneAndPassword(String string, String string2);

	Object findByPhone(Long phone);

	List<Users> findByRole(String string);

}
