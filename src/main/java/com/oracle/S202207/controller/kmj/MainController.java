package com.oracle.S202207.controller.kmj;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
 
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller 
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	
	@RequestMapping(value = "main")
	public String main(Model model) {
		
		System.out.println("main controller start");
		
		return "kmj/main";
	}
	
	//------------------- 결제하기
	@RequestMapping(value = "membership")
	public String Membership(Model model) {
		
		System.out.println("membership controller start");
		
		return "kmj/membership";
	}
	
	@RequestMapping(value = "payment")
	public String Payment(Model model, int payno) {
		//Member 정보 - 나중에 세션값
		System.out.println("payment controller start");
		model.addAttribute("userno", 1);
		model.addAttribute("payno", payno);
		return "kmj/payment";
	}
	
		
}
