package com.oracle.S202207.domain.kmj;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
//결제내역
@Getter
@Setter
@ToString
public class Amount {
	private int total;
	private int tax_free;
	private int vat;
	private int point;
	private int discount;
}
