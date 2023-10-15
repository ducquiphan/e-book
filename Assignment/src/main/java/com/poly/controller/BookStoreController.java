/**
 * 
 */
package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.poly.dao.AccountDAO;
import com.poly.dao.BookDAO;
import com.poly.entity.Book;
import com.poly.service.SessionService;

/**
 * 
 */
@Controller
public class BookStoreController {
	@Autowired
	BookDAO bookDAO;
	@Autowired
	SessionService sessionService;
	
	@GetMapping("/home")
	public String getHome() {
		List<Book> books = bookDAO.findAll();
		sessionService.setAttribute("books", books);
		return "index";
	}

	@GetMapping("/category")
	public String getCategory(Model model) {
//		if(sessionService.getAttribute("books") != null) {
//			books = get
//		}
//		 = bookDAO.findAll();
		model.addAttribute("books", bookDAO.findAll());
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
