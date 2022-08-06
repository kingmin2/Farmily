package com.oracle.S202207.domain.kjh;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class Rev {
	@Id
	private int reviewno;
	private int farmno;
	private String re_context;
	private String re_date;
	
	//조인
	@ManyToOne
	@JoinColumn(name = "userno")
	private Member member;

}
