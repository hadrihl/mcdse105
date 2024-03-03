package com.example.mcdse105.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.mcdse105.entity.Role;
import com.example.mcdse105.entity.User;
import com.example.mcdse105.repository.RoleRepository;
import com.example.mcdse105.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	public User registerNewUser(User user) {
		// salt user password
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String saltPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(saltPassword);
		
		user.addRoles(roleRepository.findById(1).get()); // add default role: USER

		return userRepository.save(user);
	}
	
	public boolean verifyEmail(String email) {
		return userRepository.existsByEmail(email);
	}
}
