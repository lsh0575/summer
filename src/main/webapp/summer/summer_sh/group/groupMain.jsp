<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../inc/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div class="container">
		<h2>조직도</h2>
		<div class="form-group text-right">
			<input type="button" id="groupAdd" name="groupAdd" value="그룹 추가" class="btn btn-basic">
		</div>
		 <p class="text-right">(*) 조직 이름 클릭 시 조직 상세보기가 가능합니다.</p>            
		  <table class="table table-bordered">
		    <thead>
		      <tr class="active">
		        <th>NO</th>
		        <th>조직</th>
		        <th>담당자</th>
		        <th>직책</th>
		        <th>조직명(*)</th>
		        <th>전화번호</th>
		        <th>생성날짜</th>
		      </tr>
		    </thead>
		    <tbody>
		    <!-- 생성날짜를 받아오고 그룹 리스트는 forEach돌리기 -->
		      <tr>
		        <td>1</td>
		        <td>회사</td>
		        <td>가사장</td>
		        <td>사장</td>
		        <td>ㅁㅁ그룹</td>
		        <td>010-1234-5678</td>
		        <td>2023-06-15</td>
		      </tr>
		      <tr>
		        <td>2</td>
		        <td>팀</td>
		        <td>나부장</td>
		        <td>부장</td>
		        <td>ㅂㅂ그룹</td>
		        <td>010-5674-4567</td>
		        <td>2023-06-18</td>
		      </tr>
		      <tr>
		        <td>3</td>
		        <td>개인</td>
		        <td>마사원</td>
		        <td>사원</td>
		        <td>ㅊㅊ그룹</td>
		        <td>010-9865-1273</td>
		        <td>2023-06-23</td>
		      </tr>
		    </tbody>
		  </table>
	</div>

	
<%@ include file="../../../inc/footer.jsp"%>