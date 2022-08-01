package com.oracle.S202207.controller.kjh;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KjhController {
	private static final Logger logger=LoggerFactory.getLogger(KjhController.class);
	
	@RequestMapping(value = "myPage")
	public String main(Model model) {
		System.out.println("KjhController myPage Starts...");
		return "kjh/myPage";
	}
	
	@RequestMapping(value = "HostSearch")
	public String hostSearch(Model model) {
		System.out.println("KjhController HostSearch Starts...");
		return "kjh/hostSearch";
	}
	

}
