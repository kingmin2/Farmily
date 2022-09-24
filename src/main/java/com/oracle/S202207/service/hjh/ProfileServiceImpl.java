package com.oracle.S202207.service.hjh;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.S202207.dao.hjh.ProfileDao;
import com.oracle.S202207.model.hjh.Member;

@Service
public class ProfileServiceImpl implements ProfileService {
	
	@Autowired
	private ProfileDao pd;
	
	@Override
	public Member loginCheck(Member member) {
		member = pd.loginCheck(member);
		return member;
	}

	@Override
	public void signOut(HttpSession session) {
		session.invalidate();
	}

	@Override
	public int insertPrf(Member member) {
		int result = pd.insertPrf(member);
		return result;
	}

}
