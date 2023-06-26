package com.summer.dao;

import java.util.List;

import com.summer.dto.UserVO;


@MyMapper
public interface UserDao {

	public  List<UserVO>  readAll();
	public  UserVO select(int no);
	public int insert(UserVO vo);
	public int update(UserVO vo);
	public int delete(int no); 

}
