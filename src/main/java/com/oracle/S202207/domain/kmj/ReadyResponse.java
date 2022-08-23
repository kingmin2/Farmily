package com.oracle.S202207.domain.kmj;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//결제요청 vo -> 결제요청시
@Getter
@Setter
@ToString
public class ReadyResponse {
	private String tid;
	private String next_redirect_pc_url;
	private String partner_order_id;
}
