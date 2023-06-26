package com.summer.snp;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.summer.dto.UserVO;
import com.summer.service.UserService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:config/*-context.xml")
public class ServiceTest {
	
	@Autowired
	UserService service;
	
	@Test @Ignore
	public void test0() {
		service.insert(new UserVO("test123", 12345));
		service.update(new UserVO(20, "TEST", 12345));
		service.delete(11);
		System.out.println(service.select(6));
	}
}
