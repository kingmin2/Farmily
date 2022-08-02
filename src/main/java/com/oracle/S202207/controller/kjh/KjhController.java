package com.oracle.S202207.controller.kjh;

import java.net.http.HttpResponse;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Host;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.S202207.domain.kjh.HOST;
import com.oracle.S202207.service.kjh.KjhService;

@Controller
public class KjhController {
	
	private final KjhService js;

	@Autowired
	public KjhController(KjhService js) {
		this.js=js;
	}
	
	
	private static final Logger logger=LoggerFactory.getLogger(KjhController.class);
	
	@RequestMapping(value = "myPage")
	public String main(Model model) {
		System.out.println("KjhController myPage Starts...");
		return "kjh/myPage";
	}
	
	// 호스트 리스트 
	@RequestMapping(value = "HostSearch")
	public String hostSearch(Model model) {
		System.out.println("KjhController HostSearch Starts...");
		List<HOST> hosts=js.hostList();
		model.addAttribute("hostList", hosts);
		return "kjh/hostSearch";
	}
	
	// 호스트 리스트 상세 보기 
	@RequestMapping(value = "HostDetail")
	public String hostDetail(HttpServletRequest request, HttpServletResponse response, int farmno, Model model) {
		System.out.println("KjhController HostDetail Starts...");
		HOST host=js.hostDetail(farmno);
		
		String id=(String)request.getSession().getAttribute("id");
		int member=js.memshipchk(id);
		
		model.addAttribute("info", host);
		
		return "kjh/hostDetail";
	}
	
	
	// 호스트 상세 조건 팝업창
	@RequestMapping(value = "HostSearchOpt")
	public String hostSearchOpt(Model model) {
		System.out.println("KjhController HostSearchOpt Starts...");
		return "kjh/hostSearchOpt";
	}
	
	// 호스트 상세 조건 팝업창 선택 제출 
	@RequestMapping(value = "HostSearchOptSubmit")
	public String hostSearchOptSubmit(Date startdate, Date endate, int ppl, Model model) {
		System.out.println("KjhController HostSearchOptSubmit Starts...");
		return "kjh/hostSearchOpt";
	}
	
}
