package com.oracle.S202207.controller.kmj;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
 
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.S202207.model.hjh.Member;
import com.oracle.S202207.model.kmj.Membership;
import com.oracle.S202207.service.kmj.PaymentService;
 
@Controller 
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private PaymentService paymentService;
	
	@RequestMapping(value = "main")
	public String main(Model model) {
		
		System.out.println("main controller");
		
		return "kmj/main";
	}
	
//======= 우프 멤버쉽 가입
	@RequestMapping(value = "membership")
	public String Membership(Model model, HttpServletRequest request) {
		System.out.println("membership controller");
		
		int userno = (int) request.getSession().getAttribute("userno");
		Member member = paymentService.memberInfo(userno);
		//멤버쉽 여부 체크 
		
		System.out.println(member.getName());
		model.addAttribute("member", member);
		 
		return "kmj/membership";
	}
	
	
//======= 멤버쉽 결제
	@RequestMapping(value = "payment")
	public String Payment(Model model, int userno) {
		 
		System.out.println("payment controller");
	 
		model.addAttribute("userno", userno);
		
		return "kmj/payment";
	}
	
	@RequestMapping(value = "membershipInfo")
	public String MembershipInfo(Model model, int userno) {
		
		System.out.println("membershipInfo controller");
		Membership membership = new Membership();
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		//시작
		membership.setPaystart(df.format(cal.getTime()));
		cal.add(Calendar.DATE, 30);
		//끝
		membership.setPayend(df.format(cal.getTime()));
		membership.setUserno(userno);
		
		int result = paymentService.membershipAdd(membership);
		model.addAttribute("membership", membership);
		
		return "kmj/membershipInfo";
	}
	
		
}
