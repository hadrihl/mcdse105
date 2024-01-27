package com.example.mcdse105.service;

import javax.transaction.Transactional;
import org.springframework.stereotype.Service;

import com.example.mcdse105.entity.User;
import com.example.mcdse105.repository.UserRepository;

@Service
@Transactional
public class UserService {

	private UserRepository userRepository;
	
	public User registerNewUser(String username, String email, String password) {
		
		User user = new User(); // create user object
		
		user.setUsername(username); // set user's information
		user.setEmail(email);
		user.setPassword(password);
		
		return userRepository.save(user); // store user's information to db
	}
}
