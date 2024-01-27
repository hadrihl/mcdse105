package com.example.mcdse105.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.mcdse105.service.UserService;

@Controller
public class CommonController {
	
	private UserService userService;

	@GetMapping("/")
	public String getHomepage() {
		return "index";
	}
	
	@GetMapping("/about")
	public String getAboutpage() {
		return "about";
	}
	
	@GetMapping("/contact")
	public String getContactpage() {
		return "contact";
	}
	
	@GetMapping("/register")
	public String getRegistrationpage() {
		return "register";
	}
	
	@PostMapping("/register")
	public String registerNewUser() {
		
		userService.registerNewUser(username, email, password);
		return "";
	}
}
