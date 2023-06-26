package com.summer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.summer.dao.TestDao;


@Service("testService")
public class TestServiceImpl implements TestService {
	
	@Autowired
	TestDao dao;
	
	@Override
	public String readTime() {
		return dao.readTime();
	}

}
