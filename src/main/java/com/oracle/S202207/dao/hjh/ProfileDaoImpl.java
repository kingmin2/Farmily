package com.oracle.S202207.dao.hjh;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oracle.S202207.model.hjh.Member;

@Repository
public class ProfileDaoImpl implements ProfileDao {

	@Autowired
	private SqlSession session;
	
	@Override
	public Member loginCheck(Member member) {
		member = session.selectOne("hjhLoginCheck", member);
		return member;
	}

	@Override
	public int insertPrf(Member member) {
		int result = session.insert("hjhInsertPrf", member);
		return result;
	}

}
