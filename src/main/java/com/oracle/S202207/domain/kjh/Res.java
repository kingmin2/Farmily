package com.oracle.S202207.domain.kjh;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;
@Entity
@Getter
@Setter
public class Res {
	@Id
	private int resno;
	private int userno;
	private Date startdate;
	private Date enddate;
	private int confirm;
	
	// 호스트 검색용
	@ManyToOne
	@JoinColumn(name = "farmno", insertable = false, updatable = false)
	private Host host;
	
	private int farmno;
	
}
