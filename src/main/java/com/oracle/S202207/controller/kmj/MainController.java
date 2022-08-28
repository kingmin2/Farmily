package com.oracle.S202207.controller.kmj;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.S202207.model.kmj.Membership;
@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "main")
	public String main(Model model) {
		
		System.out.println("main controller start");
		
		return "kmj/main";
	}
	
	@RequestMapping(value = "membership")
	public String Membership(Model model) {
		
		System.out.println("membership controller start");
		
		return "kmj/membership";
	}
	
	@RequestMapping(value = "payment")
	public String Payment(Model model, int pay) {
		
		String userno = "1";
		System.out.println("payment controller start");
		Membership membership = new Membership();
		membership.setUserno(1);
		membership.setPayno(pay);
		
		model.addAttribute("membership", membership);
		
		return "kmj/payment";
	}
}
