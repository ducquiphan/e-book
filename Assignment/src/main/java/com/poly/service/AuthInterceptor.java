package com.poly.service;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.poly.entity.Account;
import com.poly.entity.Admin;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Service
public class AuthInterceptor implements HandlerInterceptor{
	
	@Autowired
	SessionService session;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
//		String uri = request.getRequestURI();
//		System.out.println(uri);
//		String error = "";
//		if (session.getAttribute("user") instanceof Account) {
//			Account user = session.getAttribute("user");
//		}else if (session.getAttribute("user") instanceof Admin) {
//			Admin user = session.getAttribute("user");
//		}
//		
//		
//		if(user == null) { 
//			error = "Please login!";
//		}
//		else if(!user.() && uri.startsWith("/admin/")) {
//			error = "Access denied!";
//		}
//		System.out.println();
//		if(error.length() > 0) {
//			session.setAttribute("securityUri", uri);
//			response.sendRedirect("/account/login?error="+error);
//			return false;
//		}
		return true;
	}
	
	
}