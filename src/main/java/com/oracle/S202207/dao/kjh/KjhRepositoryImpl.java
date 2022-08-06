package com.oracle.S202207.dao.kjh;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.oracle.S202207.domain.kjh.Host;
import com.oracle.S202207.domain.kjh.Member;
import com.oracle.S202207.domain.kjh.Res;
import com.oracle.S202207.domain.kjh.Rev;

@Repository
public class KjhRepositoryImpl implements KjhRepository {
	private final EntityManager em;
	
	public KjhRepositoryImpl(EntityManager em) {
		this.em=em;
	}

	// 호스트 리스트 
	@Override
	public List<Host> hostList() {
		System.out.println("KjhRepositoryImpl memshipchk Starts...");
		List<Host> hosts=em.createQuery("SELECT h FROM Host h", Host.class).getResultList();
		System.out.println("KjhRepositoryImpl hostList hosts.get(0).getFarmno()"+hosts.get(0).getFarmno());
		return hosts;
	}


	// 호스트 상세보기 
	@Override
	public Host hostDetail(int farmno) {
		System.out.println("KjhRepositoryImpl hostDetail Starts...");
		Host host=em.find(Host.class,farmno);
		
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


	// 리뷰 권한 체크 
	@Override
	public List<Res> revAuthchk(int farmno, int userno) {
		System.out.println("KjhRepositoryImpl revAuthchk Starts...");
		TypedQuery<Res> query=em.createQuery("SELECT rs FROM Res rs WHERE rs.userno="+userno+" AND rs.farmno="+farmno+" AND rs.confirm=1", Res.class);
		//System.out.println("KjhRepositoryImpl revAuthchk res"+res.getResno());
		
		List<Res> res=query.getResultList();
		
		if(res.isEmpty()) {
			return Collections.emptyList();
		}
		
		return res;
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
