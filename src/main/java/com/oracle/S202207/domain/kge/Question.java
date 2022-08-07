package com.oracle.S202207.domain.kge;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import com.oracle.S202207.domain.kjh.Member;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@SequenceGenerator(name = "Q_NUMBER",       // 객체이름 (객체로는 이 이름)
				   sequenceName = "Q_NUM",  // 매핑할 DB 시퀀스 이름
				   initialValue = 111,      //111부터 시작
				   allocationSize = 1       //1개씩 할당
				   )
public class Question {
	@Id
	@GeneratedValue(
			        strategy = GenerationType.SEQUENCE,
			        generator = "Q_NUMBER"  // 객체 이름을 걸어야지, 시퀀스 이름을 걸면 안됨.
			        )
	private int q_num;
	// FK  --> 다 대 1 원칙(포린 키를 자식한테 거는데, 다에서 1로 걸어야 한다. 1에서 다로 걸면 문제가 생긴다.), 1 to 1도 가능 
	@ManyToOne
	@JoinColumn(name = "userno")
	private Member member;
	
	private int q_category;
	private String q_subject;
	private String q_content;
	private Date q_date;
	private int q_status;
	private String admin_content;
	private Date admin_date;
	
}
