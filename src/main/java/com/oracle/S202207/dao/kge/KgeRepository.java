package com.oracle.S202207.dao.kge;

import java.util.List;

import com.oracle.S202207.domain.kge.Question;

public interface KgeRepository {

	// 1:1 게시판 목록 가져오기
	List<Question> findAll(int userno);
	
	// 1:1 게시판 입력한 내용 DB에 저장하기
	Question save(Question question);

}
