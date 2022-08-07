package com.oracle.S202207.controller.hjh;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.oracle.S202207.service.hjh.ProfileService;

@Controller
public class ProfileController {
	private static final Logger logger = LoggerFactory.getLogger(ProfileController.class);
	
	@Autowired
	private ProfileService ps;
	
	@GetMapping(value = "signIn")
	public String SignIn() {
		return "hjh/signIn";
	}
	
	/*
	 * @PostMapping(value = "loginCheck") public
	 */

}
