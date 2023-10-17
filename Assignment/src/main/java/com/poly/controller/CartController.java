/**
 * 
 */
package com.poly.controller;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.BookDAO;
import com.poly.entity.Book;
import com.poly.entity.CartItem;
import com.poly.service.ParamService;
import com.poly.service.SessionService;
import com.poly.service.ShoppingCartService;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;



/**
 * 
 */
@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	ShoppingCartService cart;

	@Autowired
	ParamService param;
	
	@Autowired
	SessionService session;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	BookDAO bookDAO;
	
	
	@GetMapping("")
	public String getCart(Model model) {
//		model.addAttribute("book",bookDAO.findById(id).get());
		model.addAttribute("cart", cart.getCartItems());
		model.addAttribute("amount", cart.getAmount());
		return "cart";
	}
	@GetMapping("/add/{id}")
	public String addToCart(@PathVariable Integer id, Model model) {
		Book book = bookDAO.findById(id).get();
		CartItem item = new CartItem();
		item.setId(book.getId());
		item.setPicturePath(book.getPicturePath());
		item.setPrice(book.getPrice());
		item.setQtyCart(1);
		item.setTitle(book.getTitle());
		cart.addBook(item);
//		cart.addBook(id);
//		session.setAttribute("cartQuantity",Integer.valueOf(cart.getCount()) );
//		model.addAttribute("message", "Add success!");
		String uri = request.getRequestURI();
		return "redirect:"+uri;
	}
	
	@PostMapping("/update/{id}")
	public String updateCart(@PathVariable int id, int qty ,Model model) {
		cart.updateBook(id , Integer.valueOf(qty));
		model.addAttribute("message", "Update success!");
		return "redirect:/cart";
	}

	@GetMapping("/remove/{id}")
	public String removeFromCart(@PathVariable int id, Model model) {
		cart.removeBook(id);
		model.addAttribute("message", "Update success!");
		return "redirect:/cart";
	}
	
	@GetMapping("/clear")
	public String clearCart(Model model) {
		cart.clear();
		model.addAttribute("message", "Clear success!");
		return "redirect:/cart";
	}
	@GetMapping("/checkout")
	public String getCheckOut() {
		
		return "checkout";
	}
	
	@GetMapping("/confirmation")
	public String getConfirmation() {
		return "confirmation";
	}
	
}
