package com.oracle.S202207.dao.kmj;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDaoImpl implements MainDao {

	@Autowired
	private SqlSession session;
	
}
