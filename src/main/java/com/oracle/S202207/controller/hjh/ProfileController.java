package com.oracle.S202207.controller.hjh;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.S202207.model.hjh.Member;
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
	
	@PostMapping(value = "loginCheck")
	public String loginCheck(Member member, HttpSession session, HttpServletRequest request) {
		member = ps.loginCheck(member);
		if (member != null) {
			session = request.getSession();
			session.setAttribute("userno", member.getUserno());
			
		}
		return "kmj/main";
	}
	
	@GetMapping(value = "signOut")
	public String signOut(HttpSession session) {
		ps.signOut(session);
		return "hjh/signIn";
	}

}