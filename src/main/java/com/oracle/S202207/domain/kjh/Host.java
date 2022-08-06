package com.oracle.S202207.domain.kjh;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class Host {
	@Id
	private int farmno;
	private int hoststs;
	private int region;
	private String address;
	private int hectar;
	private int type;
	private int sale;
	private int expert;
	private int age;
	private int style;
	private String thmimg;
	private String detimg1;
	private String detimg2;
	private String detimg3;
	private String intro;
	private String shortintro;
	private int ppl;
	private String lat;
	private String lng;
	private Date request_date;
	private Date approve_date;
	
	// 이름 조회용 조인
	@ManyToOne
	@JoinColumn(name = "userno")
	private Member member;
	
	
	//// 검색용
	@Transient
	private Date startdate;
	@Transient
	private Date endate;
	@Transient
	private int confirm;
	

}
