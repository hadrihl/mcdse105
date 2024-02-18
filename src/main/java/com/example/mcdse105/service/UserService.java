package com.example.mcdse105.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.mcdse105.entity.User;
import com.example.mcdse105.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public User registerNewUser(User user) {
		return userRepository.save(user);
	}
	
	public boolean verifyEmail(String email) {
		return userRepository.existsByEmail(email);
	}
}
