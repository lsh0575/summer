package com.summer.snp;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.summer.dao.UserDao;
import com.summer.dto.UserVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:config/*-context.xml")
public class MapperTest {

	@Autowired
	UserDao dao;
	
	@Test //@Ignore
	public void test0() {
		dao.insert(new UserVO("test", 111));
		dao.update(new UserVO(29, "test", 123));
		dao.delete(10);
		System.out.println(dao.select(2));
	}
}
