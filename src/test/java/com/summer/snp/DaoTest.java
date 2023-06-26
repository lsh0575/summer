package com.summer.snp;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.summer.dao.TestDao;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:config/root-context.xml")
public class DaoTest {
	
	@Autowired
	TestDao dao;
	
	@Test //@Ignore
	public void test0() {
		System.out.println(dao.readTime());
	}

}
