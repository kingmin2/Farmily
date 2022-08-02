package com.oracle.S202207.domain.kjh;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class HOST {
	@Id
	int farmno;
	int userno;
	int hoststs;
	int region;
	String address;
	int hectar;
	int type;
	int sale;
	int expert;
	int age;
	int style;
	String thmimg;
	String detimg1;
	String detimg2;
	String detimg3;
	String intro;
	String shortintro;
	int ppl;
	String lat;
	String lng;
	Date request_date;
	Date approve_date;
	
	//// 검색용
	@Transient
	Date startdate;
	@Transient
	Date endate;
	@Transient
	int confirm;
	

}
