package com.oracle.S202207.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Board {
	private int b_num;
	private String b_subject;
	private String b_picture;
	private String b_content;
	private int b_readcount;
	private int b_ref;
	private int b_step;
	private int b_level;
	private Date b_date;
	private int reply_state;
	private int userno;
}
