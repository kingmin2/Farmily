package com.oracle.S202207.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Message {
	private int roomno;
	private int msg_num;
	private int msg_type;
	private String send_user_id;
	private String content;
	private Date msg_time;
	private String msg_pic;
	private String msg_file;
}
