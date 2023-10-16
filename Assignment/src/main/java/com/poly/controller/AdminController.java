/**
 * 
 */
package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.poly.Const;
import com.poly.dao.AccountDAO;
import com.poly.dao.AdminDAO;
import com.poly.dao.AuthorDAO;
import com.poly.dao.BookDAO;
import com.poly.dao.BooksOfAccountDAO;
import com.poly.dao.CategoryDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.dao.OrdersDAO;
import com.poly.dao.PublisherDAO;
import com.poly.entity.Account;
import com.poly.entity.BooksOfAccount;
import com.poly.service.SessionService;

/**
 * 
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	SessionService sessionService;
	
	@GetMapping("")
	public String getIndex() {
		return "index-admin";	
	}
	
	@PostMapping("")
	public String postIndex() {
		return "index-admin";
	}
	
	@GetMapping("/adminManagement")
	public String getAdminManagement() {
		return "admin-management";
	}
	
	@GetMapping("/authorManagement")
	public String getAuthorManagement() {
		return "author-management";
	}
	
	@GetMapping("/bookManagement")
	public String getBookManagement() {
		return "book-management";
	}
	
	@GetMapping("/booksOfAccountManagement")
	public String getBooksOfAccountManagement() {
		return "books-of-account-management";
	}
	
	@GetMapping("/categoryManagement")
	public String getCategoryManagement() {
		return "category-management";
	}
	
	@GetMapping("/ordersManagement")
	public String getOrdersManagement() {
		return "orders-management";
	}
	
	@GetMapping("/publisherManagement")
	public String getPublisherManagement() {
		return "publisher-management";
	}
	
	@GetMapping("/loggout")
	public String getLoggout() {
		sessionService.removeAttribute(Const.ACCOUNT);
		return "redirect:/user/login";
	}
	
	@GetMapping("/personalInfo")
	public String getPersonalInfo() {
		return "index-admin";
	}
}
