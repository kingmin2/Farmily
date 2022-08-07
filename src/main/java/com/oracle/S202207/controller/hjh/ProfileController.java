package com.oracle.S202207.controller.hjh;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProfileController {
	private static final Logger logger = LoggerFactory.getLogger(ProfileController.class);
	
	@GetMapping(value = "signIn")
	public String SignIn() {
		return "hjh/signIn";
	}

}
