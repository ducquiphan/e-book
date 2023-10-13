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

import com.poly.DAO.AccountDAO;
import com.poly.model.Account;

/**
 * 
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired 
	AccountDAO accountdao;
	
	@GetMapping("")
	public String getIndex() {
		return "index-admin";
	}
	@ResponseBody
	@RequestMapping("/demo")
	public String demo() {
		 
		return accountdao.findAll().get(1).toString();
	}
	@PostMapping("")
	public String postIndex() {
		return "index-admin";
	}
	
	@GetMapping("/adminManagement")
	public String getAdminManagement() {
		return "admin-management";
	}
	
	@GetMapping("/accountManagement")
	public String getAccountManagement() {
		return "account-management";
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
		return "redirect:/home";
	}
	
	@GetMapping("/personalInfo")
	public String getPersonalInfo() {
		return "index-admin";
	}
}
