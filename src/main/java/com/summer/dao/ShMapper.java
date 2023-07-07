package com.summer.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.summer.dto.AccountVO;

@SummerMapper
public interface ShMapper {

	public List<AccountVO> readAll();

	// 회원가입ㅇ
	public int uInsert(AccountVO vo);

	// 회원가입 시 아이디 중복체크
	public int uIdCheck(String user_id);

	// 회원가입 시 이메일 중복체크
	public int uEmailCheck(String user_email);

	// 아이디 찾기
	public String idSearch(String searchKey);

	// 패스워드 체크
	public int pwIdCheck(Map<String, Object> param);

	// 임시비밀번호 생성 후 DB업데이트
	public void updatePw(Map<String, Object> param);

	// 로그인
	public int loginCheck(AccountVO vo);

	// 그룹 메인
	public List<AccountVO> gmReadAll();

	// 그룹멤버 상세보기
	public AccountVO mmdRead(AccountVO vo);

	// 그룹 멤버 현황
	public List<AccountVO> gdRead(AccountVO vo);

	// 그룹 멤버 현황 - 하단 초대 리스트
	public List<AccountVO> gdRead2(AccountVO vo);

	// 그룹 추가
	public int gaInsert(AccountVO vo);

	// 그룹 삭제
	public int gDelete(AccountVO vo);

	// 그룹명 업데이트 
	public int gUpdate(AccountVO vo);

	// 사용자 마이페이지 업데이트
	public int uUpdate(AccountVO vo);

	// 사용자 탈퇴
	public int uDelete(AccountVO vo);
	
	///////////////////////////////////
	
	// 그룹 초대 추가
	public int inviteInsert(AccountVO vo);

	// 그룹 초대 수락 리스트
	public int inviteAupdate(AccountVO vo);

	// 그룹 초대 거절 리스트
	public int inviteCupdate(AccountVO vo);

}
