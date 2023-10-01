/**
 * 
 */
package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 
 */
@Controller
public class BookStoreController {
	@GetMapping("/home")
	public String getHome() {
		return "index";
	}
	
	@GetMapping("/category")
	public String getCategory() {
		return "category";
	}
	
	@GetMapping("/product")
	public String getProductDetails() {
		return "single-product";
	}
	
	@GetMapping("/contact")
	public String getContact() {
		return "contact";
	}
}
