package com.oracle.S202207.dao.hjh;

import com.oracle.S202207.model.hjh.Member;

public interface ProfileDao {

	Member loginCheck(Member member);

	int insertPrf(Member member);

}
