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
public class OrderController {

	@GetMapping("/orderDetail")
	public String getOrderDetail() {
		return "order-detail";
	}
	
	@GetMapping("/user/orders")
	public String getUserOrders() {
		return "my-orders";
	}	
}
