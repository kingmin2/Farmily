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
@SequenceGenerator(name = "B_NUMBER",       // 객체이름 (객체로는 이 이름)
                   sequenceName = "B_NUM",  // 매핑할 DB 시퀀스 이름
                   initialValue = 1011,     // 1011부터 시작
                   allocationSize = 1       // 1개씩 할당
                   )
public class Board {
	@Id
	@GeneratedValue(
			        strategy = GenerationType.SEQUENCE,
			        generator = "B_NUMBER"  // 객체 이름을 걸어야지, 시퀀스 이름을 걸면 안됨.
		        	)
	private int b_num;
	// FK  --> 다 대 1 원칙(포린 키를 자식한테 거는데, 다에서 1로 걸어야 한다. 1에서 다로 걸면 문제가 생긴다.), 1 to 1도 가능 
	@ManyToOne
	@JoinColumn(name = "userno")
	private Member member;
	
	private String b_subject;
	private String b_picture;
	private String b_content;
	private int b_readcount;
	private int b_ref;
	private int b_step;
	private int b_level;
	private Date b_date;
	private int reply_state;
}
