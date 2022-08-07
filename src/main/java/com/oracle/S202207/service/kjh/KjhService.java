package com.oracle.S202207.service.kjh;

import java.util.Collections;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.oracle.S202207.dao.kjh.KjhRepository;
import com.oracle.S202207.domain.kjh.Host;
import com.oracle.S202207.domain.kjh.Res;
import com.oracle.S202207.domain.kjh.Rev;

@Service
@Transactional
public class KjhService {
	private final KjhRepository jr;
	
	public KjhService(KjhRepository jr) {
		this.jr=jr;
	}

	// 호스트 리스트 
	public List<Host> hostList() {
		System.out.println("KjhService hostList Starts...");
		List<Host> hosts=jr.hostList();
		System.out.println("KjhService hostList hosts.get(0).getFarmno()"+hosts.get(0).getFarmno());
		
		return hosts;
	}

	// 호스트 상세보기 
	public Host hostDetail(int farmno) {
		System.out.println("KjhService hostDetail Starts...");
		Host host=jr.hostDetail(farmno);
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

	// 리뷰 권한 체크 
	public List<Res> revAuthchk(int farmno, int userno) {
		System.out.println("KjhService revAuthchk Starts...");
		List<Res> res=jr.revAuthchk(farmno, userno);
		System.out.println("KjhService revAuthchk res"+res);
		//System.out.println("KjhService revAuthchk res"+res.getResno());
		return res;
	}

	// 호스트 팝업 필터 검색 
	public List<Res> hostSearchOptSubmit(Res res) {
		System.out.println("KjhService hostSearchOptSubmit Starts...");
		List<Res> hostList=jr.hostSearchOptSubmit(res);
		
		
		return hostList;
	}


}
