/**
 * 
 */
package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@PostMapping("/login")
	public String postLogin(){
		return "redirect:/admin";
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
	@PostMapping("/MyProduct")
	public String getMyProduct() {
		return "MyProduct";
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
