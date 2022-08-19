package com.oracle.S202207.model.kmj;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Res {
	private int resno;
	private int farmno;
	private int userno;
	private Date startdate;
	private Date enddate;
	private int confirm;
	
	//조회용(검색용)
	private String keyword;
}	
