package com.oracle.S202207.dao.kjh;

import java.sql.Date;
import java.util.Collections;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.oracle.S202207.domain.kjh.Host;
import com.oracle.S202207.domain.kjh.Member;
import com.oracle.S202207.domain.kjh.Res;
import com.oracle.S202207.domain.kjh.Rev;
import com.oracle.S202207.domain.kjh.Wishlist;

@Repository
public class HostViewRepositoryImpl implements HostViewRepository {
	private final EntityManager em;
	
	public HostViewRepositoryImpl(EntityManager em) {
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

	// 호스트 리스트 위시리스트 
	@Override
	public List<Wishlist> findWish(int userno) {
		System.out.println("KjhRepositoryImpl findWish Starts...");
		List<Wishlist> wishlist=em.createQuery("SELECT w  FROM Wishlist w WHERE w.userno="+userno, Wishlist.class).getResultList();
		System.out.println("wishlist query"+wishlist);
		if(wishlist.isEmpty()) {
			Collections.emptyList();
		}
		
		return wishlist;
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

	// 호스트 팝업 필터 검색 
	@Override
	public List<Res> hostSearchOptSubmit(Res res) {
		System.out.println("KjhRepositoryImpl hostSearchOptSubmit Starts...");
		Date startdate=res.getStartdate();
		Date endate=res.getEnddate();
		int confirm=res.getConfirm();
		
		int ppl=res.getHost().getPpl();
		
		int region=res.getHost().getRegion();
		int hectar=res.getHost().getHectar();
		int type=res.getHost().getType();
		int sale=res.getHost().getSale();
		int expert=res.getHost().getExpert();
		int age=res.getHost().getAge();
		int style=res.getHost().getStyle();
	
		List<Res> hostList=null;
		
		return hostList;
	}


}
