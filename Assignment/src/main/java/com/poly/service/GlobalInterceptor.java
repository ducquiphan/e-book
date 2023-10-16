package com.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.poly.dao.AuthorDAO;
import com.poly.dao.BookDAO;
import com.poly.dao.BooksOfAccountDAO;
import com.poly.dao.CategoryDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.dao.OrdersDAO;
import com.poly.dao.PublisherDAO;
import com.poly.entity.Orders;
import com.poly.entity.Publisher;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@Service
public class GlobalInterceptor implements HandlerInterceptor{
	
//	@Autowired
//	BookDAO bookDAO;
//	@Autowired
//	PublisherDAO publisherDAO;
//	@Autowired
//	CategoryDAO categoryDAO;
//	@Autowired
//	AuthorDAO authorDAO;
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
//		request.getSession().setAttribute("categories", categoryDAO.findAll());
//		request.getSession().setAttribute("authors", authorDAO.findAll());
//		request.getSession().setAttribute("publishers", publisherDAO.findAll());
//		request.getSession().setAttribute("books", bookDAO.findAll());
	}
}
