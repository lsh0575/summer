<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../inc/header.jsp" %>

	<div class="container body-top ">
		<h3 class="text-left">MyPage</h3>
		<p class="text-center">
			<img class="btn" src="../images/default.jpg" alt="이미지를 불러올 수 없습니다." width="200px" height="200px">
		</p>
		<div class="col-sm-12">
			<table class="table table-striped">
			<thead></thead>
				<tbody class="text-left">
					<tr>
						<th scope="row">이름</th>
						<td>홍길동</td>
					</tr>
					<tr>
						<th scope="row">아이디</th>
						<td>user01</td>
					</tr>
					<tr>
						<th scope="row">직책</th>
						<td>사장</td>
					</tr>
					<tr>
						<th scope="row">성별</th>
						<td>성별</td>
					</tr>
					<tr>
						<th scope="row">이메일</th>
						<td>abcd@abcd.com</td>
					</tr>
					<tr>
						<th scope="row">전화번호</th>
						<td>010-1234-5678</td>
					</tr>
					<tr>
						<th scope="row">우편번호</th>
						<td>05972</td>
					</tr>
					<tr>
						<th scope="row">주소</th>
						<td>서울특별시</td>
					</tr>
					<tr>
						<th scope="row">상세 주소</th>
						<td>ㅁㅁ아파트 1304호</td>
					</tr>
				</tbody>			
			</table>
		</div>
		<div class="row myPageBtn">
			<div class="col-sm-4"> <a class="btn btn-success btn-block" href="#">회원정보 수정</a></div>
			<div class="col-sm-4"> <a class="btn btn-warning btn-block" href="#">취 소</a> </div>
			<div class="col-sm-4"> <a class="btn btn-danger btn-block" href="#">회원 탈퇴</a> </div>
		</div>
	</div>

<%@ include file="../../../inc/footer.jsp" %>