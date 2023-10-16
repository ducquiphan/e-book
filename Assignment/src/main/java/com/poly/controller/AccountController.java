package com.poly.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.poly.Const;
import com.poly.dao.AccountDAO;
import com.poly.entity.Account;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("/admin/account-management")
public class AccountController {
	
	@Autowired
	ServletContext app;
	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService service;
	
	@GetMapping("")
	public String getAccountManagement(@ModelAttribute("account") Account account) {
		
		return "account-management";
	}
	
	@PostMapping("/create")
	public String postAdd(Model model, @Validated @ModelAttribute("account") Account account, BindingResult bindingResult, @RequestParam("avatar") MultipartFile avatar) {
		if (!avatar.isEmpty()) {
			if (dao.findByEmail(account.getEmail()).isEmpty()) {
				model.addAttribute("message", "Tài khoản đã tồn tại");
			}else {
				String fileName = StringUtils.cleanPath(avatar.getOriginalFilename());
				try {
					Path path = Paths.get(app.getRealPath("/views/images/avatar"+fileName));
					Files.copy(avatar.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
					if (bindingResult.hasErrors()) {
						model.addAttribute("message", "Vui lòng sửa các lỗi sau:");
						
					} else {
						dao.save(account);
						model.addAttribute("message", "Tạo thành công!");
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			service.setAttribute(Const.ACCOUNT, dao.findAll());
			model.addAttribute(Const.ACCOUNT,service.getAttribute(Const.ACCOUNT));
		}
		return "index";
	}
	
}
