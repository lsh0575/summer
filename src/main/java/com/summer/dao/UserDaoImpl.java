package com.summer.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.summer.dto.UserVO;

//@Repository("userDao")
public class UserDaoImpl implements UserDao{

	@Autowired
	UserDao mapper;
	
	@Override
	public UserVO select(int no) {
		return mapper.select(no);
	}

	@Override
	public int insert(UserVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public int update(UserVO vo) {
		return mapper.update(vo);
	}

	@Override
	public int delete(int no) {
		return mapper.delete(no);
	}

	@Override
	public List<UserVO> readAll() {
		return mapper.readAll();
	}

}
