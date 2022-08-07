package com.oracle.S202207.service.hjh;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.oracle.S202207.dao.hjh.ProfileDao;
import com.oracle.S202207.model.hjh.Member;

@Service
public class ProfileServiceImpl implements ProfileService {

	private ProfileDao pd;
	
	@Override
	public Member loginCheck(Member member, HttpSession session) {
		member = pd.loginCheck(member);
		if(member != null) {
			session.setAttribute("userno", member.getUserno());
		}
		return member;
	}

}
