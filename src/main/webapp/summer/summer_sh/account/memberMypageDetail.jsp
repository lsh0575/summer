<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../../inc/header.jsp"%>

<div class="container body-top ">
	<h3 class="text-left">My Page</h3>
	<p class="text-center">
		<img class="btn" src="../images/default.jpg" alt="이미지를 불러올 수 없습니다."
			width="200px" height="200px">
	</p>
	<div class="col-sm-12">
		<table class="table table-striped">
			<thead></thead>
			<tbody class="text-left">
				<tr>
					<th scope="row">이름</th>
					<td>${userDetails.username}</td>
				</tr>
				<tr>
					<th scope="row">생년월일</th>
					<td>${userDetails.userbirth}</td>
				</tr>
				<tr>
					<th scope="row">아이디</th>
					<td>${sessionScope.userid}</td>
				</tr>
				<tr>
					<th scope="row">직책</th>
					<td><c:forEach items="${userDetails.positionlist}"
							var="position">
					            ${position}
					        </c:forEach></td>
				</tr>
				<tr>
					<th scope="row">성별</th>
					<td><c:choose>
							<c:when test="${userDetails.usersex == '1'}">남자</c:when>
							<c:when test="${userDetails.usersex == '2'}">여자</c:when>
							<c:otherwise>알 수 없음</c:otherwise>
						</c:choose></td>
				</tr>
				<tr>
					<th scope="row">이메일</th>
					<td>${userDetails.useremail}</td>
				</tr>
				<tr>
					<th scope="row">전화번호</th>
					<td>${userDetails.userphone}</td>
				</tr>
				<tr>
					<th scope="row">우편번호</th>
					<td>${userDetails.userpostnum}</td>
				</tr>
				<tr>
					<th scope="row">주소</th>
					<td>${userDetails.basic_useraddr}</td>
				</tr>
				<tr>
					<th scope="row">상세 주소</th>
					<td>${userDetails.useraddr}</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="row myPageBtn">
		<div class="col-sm-4">
			<a class="btn btn-success btn-block"
				href="${pageContext.request.contextPath}/account/uUpdate">회원정보
				수정</a>
		</div>
		<div class="col-sm-4">
			<a class="btn btn-warning btn-block"
				href="${pageContext.request.contextPath}/account/afterLoginMain">취
				소</a>
		</div>
		<div class="col-sm-4">
			<button type="button" class="btn btn-danger btn-block"
				onclick="removeMember();">탈퇴하기</button>
		</div>
	</div>

	<script>
		function removeMember() {
			if (window.confirm("탈퇴하시겠습니까?")) {
				location.href = "${pageContext.request.contextPath}/account/uDelete";
			}
		}
	</script>

</div>

<%@ include file="../../../inc/footer.jsp"%>