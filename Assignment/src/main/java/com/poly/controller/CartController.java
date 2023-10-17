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
@RequestMapping("/cart")
public class CartController {
	
	
	@GetMapping("/cart")
	public String getCart() {
		return "cart";
	}
	
	@GetMapping("/cart/checkout")
	public String getCheckOut() {
		return "checkout";
	}
	
	@GetMapping("/cart/confirmation")
	public String getConfirmation() {
		return "confirmation";
	}
	
}
