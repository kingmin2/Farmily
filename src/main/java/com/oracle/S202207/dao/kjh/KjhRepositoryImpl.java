package com.oracle.S202207.dao.kjh;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.stereotype.Repository;

import com.oracle.S202207.domain.kjh.HOST;
import com.oracle.S202207.domain.kjh.Member;
import com.oracle.S202207.domain.kjh.Rev;

@Repository
public class KjhRepositoryImpl implements KjhRepository {
	private final EntityManager em;
	
	public KjhRepositoryImpl(EntityManager em) {
		this.em=em;
	}

	// 호스트 리스트 
	@Override
	public List<HOST> hostList() {
		System.out.println("KjhRepositoryImpl memshipchk Starts...");
		List<HOST> hosts=em.createQuery("SELECT h FROM HOST h", HOST.class).getResultList();
		System.out.println("KjhRepositoryImpl hostList hosts.get(0).getFarmno()"+hosts.get(0).getFarmno());
		return hosts;
	}


	// 호스트 상세보기 
	@Override
	public HOST hostDetail(int farmno) {
		System.out.println("KjhRepositoryImpl hostDetail Starts...");
		HOST host=em.find(HOST.class,farmno);
		
		return host;
	}

	// 호스트 상세보기 주소 노출 여부 (멤버쉽 or not)
	@Override
	public int memshipchk(int userno) {
		System.out.println("KjhRepositoryImpl memshipchk Starts...");
		Member member =em.find(Member.class, userno);
		int membership=member.getMembership();
		System.out.println("KjhRepositoryImpl membership"+membership);
		return membership;
	}

	// 호스트 상세보기 리뷰 
	@Override
	public List<Rev> revList(int farmno) {
		System.out.println("KjhRepositoryImpl revList Starts...");
		List<Rev> revList;
		
		revList=em.createQuery("SELECT r FROM Rev r WHERE r.farmno="+farmno, Rev.class).getResultList();
		
		return revList;
	}

}
