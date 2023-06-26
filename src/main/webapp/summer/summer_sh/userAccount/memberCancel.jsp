<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../inc/header.jsp" %>

	<!-- 회원탈퇴 폼 -->
	<div class="container body-top">
		
		<form action="#" method="post" id="form">
			<fieldset>
				<legend class="text-center">## 회원 탈퇴</legend>
				<div class="form-group">
					<strong>회원 탈퇴를 원하시면 비밀번호를 입력해주세요.</strong>
				</div>
				<div class="form-group">
					<label for="inputPass">비밀번호 입력(*)</label>
					<input type="password" class="form-control" id="inputPass" name="pass" placeholder="비밀번호를 입력해주세요"/>
				</div>
				<div class="form-group text-center">
					<div class="col-sm-6">
						<input type="submit" class="btn btn-success btn-block" value="확 인"/>
					</div>
					<div class="col-sm-6">
						<p><a href="#" class="btn btn-danger btn-block">취 소</a></p>
					</div>
				</div>
			</fieldset>
		</form>
		<script>
		//// 빈칸 검사 시작 ////
		$("#document").ready(function(){
			$("#form").on("submit",function(){
				if ($("#inputPass").val().trim()==""){ //비밀번호 빈칸 체크
					alert('비밀번호를 입력해주세요.');
					$("#inputPass").focus();
					return false;
				}
				return true;
			});
		});
		//// 빈칸 검사 끝 ////
		</script>
	</div>
	<!-- 회원탈퇴 폼 -->

<%@ include file="../../../inc/footer.jsp" %>