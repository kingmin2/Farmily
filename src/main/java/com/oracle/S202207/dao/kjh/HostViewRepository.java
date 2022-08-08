package com.oracle.S202207.dao.kjh;

import java.util.List;

import com.oracle.S202207.domain.kjh.Host;
import com.oracle.S202207.domain.kjh.Res;
import com.oracle.S202207.domain.kjh.Rev;

public interface HostViewRepository {

	List<Host> hostList();

	Host hostDetail(int farmno);

	int memshipchk(int userno);

	List<Rev> revList(int farmno);

	List<Res> revAuthchk(int farmno, int userno);

	List<Res> hostSearchOptSubmit(Res res);


}
