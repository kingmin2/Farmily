package com.oracle.S202207.dao.kge;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.stereotype.Repository;

import com.oracle.S202207.domain.kge.Question;

@Repository
public class JpaKgeRepository implements KgeRepository {
	
	private final EntityManager em;
	public JpaKgeRepository(EntityManager em) {
		this.em  = em;
	}
	
	// 1:1 게시판 목록 가져오기
	@Override
	public List<Question> findAll(int userno) {
		System.out.println("[JpaKgeRepository] findAll Start..");
		List<Question> questionList = em.createQuery("select q from Question q where q.member.userno in :number", Question.class) //where 조건절 사용(:number는 임의로 작성)
				                      .setParameter("number",userno).getResultList(); // setParameter(where절에서 정해준 이름, 변수명)
		System.out.println("JpaKgeRepository findAll questionList.size() -->"+questionList.size());
		return questionList;
	}

	@Override
	public Question save(Question question) {
		//회원 저장
		System.out.println("[JpaKgeRepository] questionSave Start..");
		em.persist(question);
		System.out.println("em.persist(question) question.getQ_num().."+question.getQ_num());
		System.out.println("em.persist(question) After...");
		return question;
	}
}
