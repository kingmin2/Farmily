package com.oracle.S202207.dao.kjh;

import java.util.List;

import com.oracle.S202207.domain.kjh.HOST;
import com.oracle.S202207.domain.kjh.Rev;

public interface KjhRepository {

	List<HOST> hostList();

	HOST hostDetail(int farmno);

	int memshipchk(int userno);

	List<Rev> revList(int farmno);


}
