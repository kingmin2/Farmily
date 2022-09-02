package com.oracle.S202207.model.kmj;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Member {
	private int userno;
	private String id;
	private String passwd;
	private String name;
	private String email;
	private String con_addr;
	private String con_tel;
	private Date birth;
	private Date joindate;
	private int membership;
	private int m_level;
}
