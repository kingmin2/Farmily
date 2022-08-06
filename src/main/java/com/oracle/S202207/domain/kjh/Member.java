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
public class Member {
	@Id
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
