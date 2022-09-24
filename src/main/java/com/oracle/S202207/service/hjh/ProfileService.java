package com.oracle.S202207.service.hjh;

import javax.servlet.http.HttpSession;

import com.oracle.S202207.model.hjh.Member;

public interface ProfileService {

	Member loginCheck(Member member);

	void signOut(HttpSession session);

	int signUp(Member member);

}
