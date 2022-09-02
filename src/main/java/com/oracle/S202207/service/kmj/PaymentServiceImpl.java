package com.oracle.S202207.service.kmj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.S202207.dao.kmj.MembershipDao;
import com.oracle.S202207.model.hjh.Member;
import com.oracle.S202207.model.kmj.Membership;

@Service
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private MembershipDao membershipDao;
	
	@Override
	public Member memberInfo(int userno) {
		System.out.println("memberInfo service");
		Member member = membershipDao.memberInfo(userno);
		return member;
	}

	@Override
	public int membershipAdd(Membership membership) {
		System.out.println("membershipAdd service");
		int result = membershipDao.membershipAdd(membership);
		return 0;
	}

}
