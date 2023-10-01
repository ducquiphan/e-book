/**
 * 
 */
package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 */
@Controller
@RequestMapping("/user")
public class UserController {
	@GetMapping("/login")
	public String getLogin() {
		return "login";
	}
	
	@GetMapping("/registration")
	public String getRegistration() {
		return "registration";
	}
	
	@GetMapping("")
	public String getUserInfo() {
		return "personal-info";
	}
	
	@GetMapping("/bookshelf")
	public String getUserBookshelf() {
		return "my-bookshelf";
	}
	
	@GetMapping("/changepassword")
	public String getChangePassword() {
		return "change-password";
	}
	
	@GetMapping("/forgotpassword")
	public String getForgotPassword() {
		return "forgot-password";
	}
	
	@GetMapping("/updateprofile")
	public String getUpdateUser() {
		return "personal-info-update";
	}
}
