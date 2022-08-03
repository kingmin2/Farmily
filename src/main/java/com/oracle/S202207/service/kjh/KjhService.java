package com.oracle.S202207.service.kjh;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.oracle.S202207.dao.kjh.KjhRepository;
import com.oracle.S202207.domain.kjh.HOST;
import com.oracle.S202207.domain.kjh.Rev;

@Service
@Transactional
public class KjhService {
	private final KjhRepository jr;
	
	public KjhService(KjhRepository jr) {
		this.jr=jr;
	}

	// 호스트 리스트 
	public List<HOST> hostList() {
		System.out.println("KjhService hostList Starts...");
		List<HOST> hosts=jr.hostList();
		System.out.println("KjhService hostList hosts.get(0).getFarmno()"+hosts.get(0).getFarmno());
		
		return hosts;
	}

	// 호스트 상세보기 
	public HOST hostDetail(int farmno) {
		System.out.println("KjhService hostDetail Starts...");
		HOST host=jr.hostDetail(farmno);
		System.out.println("KjhService hostDetail host.getAge()"+host.getAge());
		return host;
	}

	// 호스트 상세보기 주소 노출 여부 (멤버쉽 or not)
	public int memshipchk(int userno) {
		System.out.println("KjhService memshipchk Starts...");
		int membership=jr.memshipchk(userno);
		System.out.println("KjhService membership"+membership);
		return membership;
	}

	// 호스트 상세보기 리뷰 
	public List<Rev> revList(int farmno) {
		System.out.println("KjhService revList Starts...");
		List<Rev> revList=jr.revList(farmno);
		System.out.println("KjhService revList");
		return revList;
	}


}
