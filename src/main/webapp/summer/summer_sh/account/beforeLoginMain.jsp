<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>SUMMER 그룹 웨어</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        body, html { height: 100%; margin: 0; display: flex; align-items: center; justify-content: center; }
        .container { max-width: 800px; }
        h1 { margin-bottom: 50px; }
        .btn-info { margin: 1%; }
    </style>

</head>
<body>
<div class="container text-center sh_blogin">
    <form action="${pageContext.request.contextPath}/account/loginCheck" method="post" id="loginForm">
        <h1>SUMMER 그룹웨어</h1>
        <div class="row">
        <div class="col-sm-8">
	        <div class="form-group row">
	            <div class="col-sm-3"><label for="id">아이디:</label></div>
	            <div class="col-sm-9"><input type="text" class="form-control" id="id" name="userid" placeholder="아이디를 입력하세요."> </div>
	        </div>
	        <div class="form-group row">
	            <div class="col-sm-3"><label for="pwd">비밀번호:</label></div>
	            <div class="col-sm-9"><input type="password" class="form-control" id="pwd" name="userpass" placeholder="비밀번호를 입력하세요."> </div>
	        </div>
        </div>
        <div class="col-sm-4">
        	<button type="submit" id="loginBtn" class="btn btn-info btn-block loginBtn" style="height:80px;">로그인</button>
        </div>
        </div>
        <div class="checkbox row">
            <label><input type="checkbox"> Remember me</label>
        </div>
        <hr/>
        <div class="row beforeLoginBtn">
            <div class="col-sm-6"> <a class="btn btn-success btn-block" href="${pageContext.request.contextPath}/account/termsOfUse">회원가입</a></div>
            <div class="col-sm-6"> <a class="btn btn-warning btn-block" href="${pageContext.request.contextPath}/account/idPasswordSearch">아이디/비밀번호 찾기</a> </div>
        </div>
    </form>
    
	<script>
		$("#loginForm").on("submit", function(){
			if($("#id").val().trim() == ""){
			   $("#id").focus();
			   alert('아이디를 입력해주세요.');
			   return false;
			}else if($("#pwd").val().trim() == ""){
				     $("#pwd").focus();
				     alert('비밀번호를 입력해주세요.');
				     return false;
			}
		});
	</script>
    
</div>

</body>
</html>