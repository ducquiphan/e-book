/**
 * 
 */
package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Const;
import com.poly.dao.AccountDAO;
import com.poly.dao.AdminDAO;
import com.poly.entity.Account;
import com.poly.entity.Admin;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

/**
 * 
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	SessionService sessionService;
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	AccountDAO accountDAO;
	@Autowired
	AdminDAO adminDAO;

	@GetMapping("/login")
	public String getLogin(Model model) {
		Account account = null;
		if (sessionService.getAttribute(Const.ACCOUNT) instanceof Account) {
			return "redirect:/home";
			
		}
		if (sessionService.getAttribute(Const.ACCOUNT) instanceof Admin) {
			return "redirect:/admin";
		}
		model.addAttribute("username", cookieService.getValue("username"));
		model.addAttribute("password", cookieService.getValue("password"));
		return "login";
	}

	@PostMapping("/login")
	public String postLogin(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		if (!username.isBlank()) {
			if (!password.isBlank()) {
				boolean remember = paramService.getBoolean("remember", false);
				Account user = null;
				if (!accountDAO.findByEmail(username).isEmpty()) {
					user = accountDAO.findByEmail(username).get(0);
					if (!user.getPassword().equals(password)) {
						model.addAttribute("passwordError", "Sai mật khẩu!");
					} else {
						sessionService.setAttribute("username", username);
						if (remember) {
							cookieService.createCookie("username", username, 1);
							cookieService.createCookie("password", password, 1);
							model.addAttribute("username", cookieService.getValue("username"));
							model.addAttribute("password", cookieService.getValue("password"));
						} else {
							cookieService.removeCookie("username");
							cookieService.removeCookie("password");
						}
						sessionService.setAttribute(Const.ACCOUNT, user);
						String uri = (String) sessionService.getAttribute("securityUri");
						if (uri != null) {
							return "redirect:" + uri;
						} else {
							return "redirect:/home";
						}
					}
				}

				Admin admin = null;
				if (!adminDAO.findByUsername(username).isEmpty()) {
					admin = adminDAO.findByUsername(username).get(0);
					if (!admin.getPassword().equals(password)) {
						model.addAttribute("passwordError", "Sai mật khẩu!");
					} else {
						sessionService.setAttribute("username", username);
						if (remember) {
							cookieService.createCookie("username", username, 1);
							cookieService.createCookie("password", password, 1);
							model.addAttribute("username", cookieService.getValue("username"));
							model.addAttribute("password", cookieService.getValue("password"));
						} else {
							cookieService.removeCookie("username");
							cookieService.removeCookie("password");
						}
						sessionService.setAttribute(Const.ACCOUNT, admin);
						String uri = (String) sessionService.getAttribute("securityUri");
						if (uri != null) {
							return "redirect:" + uri;
						} else {
							return "redirect:/admin";
						}
					}
				}
				if (user == null && admin == null) {
					model.addAttribute("usernameError", "Tài khoản không tồn tại!");
				}
			} else {
				model.addAttribute("passwordError", "Vui lòng nhập mật khẩu!");
			}
		} else {
			model.addAttribute("usernameError", "Vui lòng nhập tài khoản!");
		}
		return "login";
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
		return "my-bookshelf";
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

	@GetMapping("/logout")
	public String getLogout() {
		sessionService.removeAttribute(Const.ACCOUNT);
		return "login";
	}
}
