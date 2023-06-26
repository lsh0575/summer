package com.summer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.summer.dao.UserDao;
import com.summer.dto.UserVO;


@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao dao;
	
	@Override
	public UserVO select(int no) {
		return dao.select(no);
	}

	@Override
	public int insert(UserVO vo) {
		return dao.insert(vo);
	}

	@Override
	public int update(UserVO vo) {
		return dao.update(vo);
	}

	@Override
	public int delete(int no) {
		return dao.delete(no);
	}

	@Override
	public List<UserVO> readAll() {
		return dao.readAll();
	}
}
