package com.oracle.S202207.dao.kjh;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.stereotype.Repository;

import com.oracle.S202207.domain.kjh.HOST;

@Repository
public class KjhRepositoryImpl implements KjhRepository {
	private final EntityManager em;
	
	public KjhRepositoryImpl(EntityManager em) {
		this.em=em;
	}

	@Override
	public List<HOST> hostList() {
		
		List<HOST> hosts=em.createQuery("SELECT h FROM HOST h", HOST.class).getResultList();
		System.out.println("KjhRepositoryImpl hostList hosts.get(0).getFarmno()"+hosts.get(0).getFarmno());
		return hosts;
	}


	@Override
	public HOST hostDetail(int farmno) {
		HOST host=em.find(HOST.class,farmno);
		
		return host;
	}

	@Override
	public int memshipchk(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
