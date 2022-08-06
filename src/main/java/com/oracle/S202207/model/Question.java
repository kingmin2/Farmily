package com.oracle.S202207.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Question {
	private int q_num;
	private int userno;
	private int q_category;
	private String q_subject;
	private String q_content;
	private Date q_date;
	private int q_status;
	private String admin_content;
	private Date admin_date;
}
