package com.oracle.S202207.controller.kge;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.oracle.S202207.domain.kge.Question;
import com.oracle.S202207.service.kge.KgeService;

@Controller
public class KgeController {
	private final KgeService kgeService;
	private static final Logger logger = LoggerFactory.getLogger(KgeController.class);
	
	@Autowired
	public KgeController(KgeService kgeService) {
		this.kgeService = kgeService;
	}
	
	// 1:1 게시판 목록 가져오기
	@GetMapping(value = "QuestionList")
	public String listQuestion(HttpServletRequest request, Model model) {
		System.out.println("[KgeController] listQuestion Start..");
		
//		int userno = request.getSession().getAttribute("sessionId").toString();  //세션 연결되어 있을 때 사용하기
		int userno = 2;
		
//		question.setUserno(userno);
		List<Question> questionList = kgeService.getListAllQuestion(userno);
		System.out.println("questionList.size() -->"+questionList.size());
		System.out.println("questionList.name() -->"+questionList.get(0).getMember().getName());
		model.addAttribute("questions", questionList);
		return "kge/questionList";
	}
	
	
	// 1:1 게시판 작성하기
	@GetMapping(value = "QuestionWriteForm")
	public String questionWriteForm() {
		System.out.println("[KgeController] questionWriteForm Start..");
		return "kge/questionWrite";
	}
	 

	}
