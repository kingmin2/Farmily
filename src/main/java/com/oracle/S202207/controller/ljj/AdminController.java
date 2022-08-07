package com.oracle.S202207.controller.ljj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.S202207.service.ljj.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService as;
	
	@RequestMapping(value = "admin")
	public String adminHome(Model model) {
		
		return "ljj/adminHome";
	}
	
}
