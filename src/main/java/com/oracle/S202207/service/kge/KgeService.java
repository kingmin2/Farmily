package com.oracle.S202207.service.kge;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oracle.S202207.dao.kge.KgeRepository;
import com.oracle.S202207.domain.kge.Question;

@Service
@Transactional
public class KgeService {
	private final KgeRepository kgeRepository;
	@Autowired
	public KgeService(KgeRepository kgeRepository) {
		this.kgeRepository = kgeRepository;
	}
	
	// 1:1 게시판 목록 가져오기
	public List<Question> getListAllQuestion(int userno) {
		System.out.println("[KgeService] getListAllQuestion Start..");
		List<Question> listQuestion = kgeRepository.findAll(userno);
		System.out.println("KgeService getListAllQuestion listQuestion.size() -->"+listQuestion.size());
		return listQuestion;
	}

}
