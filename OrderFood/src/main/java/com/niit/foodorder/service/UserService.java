package com.niit.foodorder.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.foodorder.model.Users;
import com.niit.foodorder.repository.UserRepository;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserRepository userRepo;
	
	public Users  save(Users user)
	{
		return userRepo.save(user);
	}

	public Optional<Users> findByPhone(String phone) {
		// TODO Auto-generated method stub
		return userRepo.findById(phone);
	}
}
