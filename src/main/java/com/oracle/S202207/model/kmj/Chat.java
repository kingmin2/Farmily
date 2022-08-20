package com.oracle.S202207.model.kmj;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Chat {
	private int roomno;
	private int resno;
	private String id;
	
	//조회용(검색용)
	private String keyword;
}
