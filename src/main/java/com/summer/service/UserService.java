package com.summer.service;

import java.util.List;

import com.summer.dto.UserVO;


public interface UserService {

	public  List<UserVO>  readAll();
	public  UserVO select(int no);
	public int insert(UserVO vo);
	public int update(UserVO vo);
	public int delete(int no); 
}
