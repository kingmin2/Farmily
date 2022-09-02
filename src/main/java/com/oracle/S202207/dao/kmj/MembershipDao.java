package com.oracle.S202207.dao.kmj;

import com.oracle.S202207.model.hjh.Member;
import com.oracle.S202207.model.kmj.Membership;

public interface MembershipDao {

	Member memberInfo(int userno);

	int membershipAdd(Membership membership);
	

}
