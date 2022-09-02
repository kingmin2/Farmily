package com.oracle.S202207.dao.kmj;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oracle.S202207.model.hjh.Member;
import com.oracle.S202207.model.kmj.Membership;

@Repository
public class MembershipDaoImpl implements MembershipDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public Member memberInfo(int userno) {
		System.out.println("memberInfo dao");
		Member member = null;
		try {
			member = session.selectOne("kmjMemberInfo", userno);
		} catch (Exception e) {
			System.out.println("memberInfo Err: " + e.getMessage() );
		}
		return member;
	}

	@Override
	public int membershipAdd(Membership membership) {
		System.out.println("membershipAdd dao");
		int result = 0;
		try {
			result = session.insert("kmjMembershipAdd", membership);
		} catch (Exception e) {
			System.out.println("membershipAdd Err: " + e.getMessage() );
		}
		return result;
	}
	
	
}
