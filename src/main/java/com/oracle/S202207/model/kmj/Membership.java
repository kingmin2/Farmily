package com.oracle.S202207.model.kmj;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Membership {
	private int memno;
	private int userno;
	private Date paystart;
	private Date payend;
	
	private int payno;
}
