<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ID / Password 찾기</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
	body, html { height: 100%; margin: 0; display: flex; align-items: center; justify-content: center; }
</style>

</head>
<body>
<div class="body-top container">
	<div>
		<!-- 아이디 찾기 -->
		<div class="col-sm-6">
			<h3 class="text-center">아이디 찾기</h3>
			<form action="${pageContext.request.contextPath}/#" id="idSearch">
				<fieldset>
					<legend></legend>
					<div class="form-group">
						<label for="idSearchKey">이메일</label>
						<input type="text" class="form-control" name="searchKey" id="idSearchKey" placeholder="이메일을 입력해주세요."/>
					</div>
					<div class="form-group text-center">
						<input type="submit" class="btn btn-info form-control" value="아이디 찾기" title="아이디를 검색합니다."/>
					</div>
				</fieldset>
			</form>
			<script>
				$(document).ready(function(){
					$("#idSearch").on("submit",function(){
						if ($("#idSearchKey").val().trim()==""){
							alert('이메일을 입력바랍니다.');
							return false;
						}
					});
				});
			</script>
		</div>
		<!-- 아이디 찾기 -->
		<!-- 비밀번호 찾기 -->
		<div class="col-sm-6 leftline">
			<h3 class="text-center">비밀번호 찾기</h3>
			<form action="${pageContext.request.contextPath}/#" id="passSearch">
				<fieldset>
					<legend></legend>
					<div class="form-group">
						<label for="passSearchId">아이디</label>
						<input type="text" class="form-control" name="passSearchId" id="passSearchId" placeholder="아이디를 입력해주세요."/>
					</div>
					<div class="form-group">
						<label for="passSearchKey">이메일</label>
						<input type="text" class="form-control" name="searchKey" id="passSearchKey" placeholder="이메일을 입력해주세요."/>
					</div>
					<div class="form-group text-center">
						<input type="submit" class="btn btn-info form-control" value="찾기" title="가입한 이메일 주소를 입력해주세요."/>
					</div>
				</fieldset>
			</form>
			<script>
				$(document).ready(function(){
					$("#passSearch").on("submit",function(){
						if ($("#passSearchKey").val().trim()==""){
							alert('빈칸을 확인해주세요.');
							return false;
						}
					});
				});
			</script>
		</div>
		<!-- 비밀번호 찾기 -->
	</div>
</div>

</body>
</html>