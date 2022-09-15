package com.oracle.S202207.service.kmj;

import com.oracle.S202207.model.hjh.Member;
import com.oracle.S202207.model.kmj.Membership;

public interface PaymentService {

	Member memberInfo(int userno);

	int membershipAdd(Membership membership);

}
