package com.oracle.S202207.controller.kmj;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.S202207.service.kmj.ChatService;
import com.oracle.S202207.service.kmj.ReadCheckService;

@RestController
public class ChatController {
	private static final Logger logger =LoggerFactory.getLogger(ChatController.class);
	
	@Autowired
	private ReadCheckService rs;
	@Autowired
	private final ChatService cs;
	@Autowired
	public ChatController(ChatService cs) {
		this.cs = cs;
	}
	
	@RequestMapping("/chat")
	public ModelAndView chat(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/kmj/chat");
		return mv;
	}
	
	
}
