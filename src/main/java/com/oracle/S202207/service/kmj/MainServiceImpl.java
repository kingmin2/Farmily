package com.oracle.S202207.service.kmj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.S202207.dao.kmj.MainDao;

@Service
public class MainServiceImpl implements MainService {

	@Autowired MainDao md;
	
	
}
