package com.oracle.S202207.dao.kjh;

import java.util.List;

import com.oracle.S202207.domain.kjh.HOST;

public interface KjhRepository {

	List<HOST> hostList();

	HOST hostDetail(int farmno);

	int memshipchk(String id);

}
