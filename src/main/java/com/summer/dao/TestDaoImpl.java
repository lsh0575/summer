package com.summer.dao;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

//@Repository("testDao")
public class TestDaoImpl implements TestDao {

	//@Autowired private SqlSession sqlsession;
	//private static final String namespace="com.company.dao.TestMapper";
	
	@Autowired
	TestDao dao;
		
	@Override
	public String readTime() {
		return dao.readTime();
	}

}
