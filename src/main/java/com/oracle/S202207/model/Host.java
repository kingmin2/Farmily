package com.oracle.S202207.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Host {
	private int farmno;
	private int userno;
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
	private int ppf;
	private String lat;
	private String lng;
	private Date request_date;
	private Date approve_date;
}
