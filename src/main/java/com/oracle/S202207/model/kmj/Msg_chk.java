package com.oracle.S202207.model.kmj;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Msg_chk {
	private int roomno;
	private int msg_num;
	private String id;
	private int read_confirm;
}
