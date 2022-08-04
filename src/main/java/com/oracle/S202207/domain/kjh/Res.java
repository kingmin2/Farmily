package com.oracle.S202207.domain.kjh;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;
@Entity
@Getter
@Setter
public class Res {
	@Id
	private int resno;
	private int farmno;
	private int userno;
	private Date startdate;
	private Date enddate;
	private int confirm;

}
