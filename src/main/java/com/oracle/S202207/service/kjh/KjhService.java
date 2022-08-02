package com.oracle.S202207.service.kjh;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.oracle.S202207.dao.kjh.KjhRepository;
import com.oracle.S202207.domain.kjh.HOST;

@Service
@Transactional
public class KjhService {
	private final KjhRepository jr;
	
	public KjhService(KjhRepository jr) {
		this.jr=jr;
	}

	public List<HOST> hostList() {
		
		List<HOST> hosts=jr.hostList();
		System.out.println("KjhService hostList hosts.get(0).getFarmno()"+hosts.get(0).getFarmno());
		
		return hosts;
	}

	public HOST hostDetail(int farmno) {
		HOST host=jr.hostDetail(farmno);
		System.out.println("KjhService hostDetail host.getAge()"+host.getAge());
		return host;
	}

	public int memshipchk(String id) {
		int member=jr.memshipchk(id);
		
		return 0;
	}

}
