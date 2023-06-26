<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>SUMMER 그룹웨어</title>
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
<div class="container text-center">
  <form id="beforeLoginMain">
    <h1>SUMMER 그룹웨어</h1>
    <div class="row form-group">
      <label for="id">아이디:</label>
      <input type="text" class="" id="id" placeholder="아이디를 입력하세요.">
    </div>
    <div class="form-group">
      <label for="pwd">비밀번호:</label>
      <input type="password" class="" id="pwd" placeholder="비밀번호를 입력하세요.">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>

    <div>
      <button type="submit" id="loginBtn" class="btn btn-info">로그인</button>
    </div>
    <div class="#">
    <!--  termsOfUse 이용약관으로 보내기  -->
      <button type="submit" class="btn btn-info">회원가입</button>
    </div>
    <div>
      <button type="submit" class="btn btn-info">아이디/비밀번호 찾기</button>
    </div>
  </form>
  
  <script>
	//로그인 버튼 클릭 시 빈칸 검사
    $(function () {
      $("#loginBtn").on("click", function (event) {
        event.preventDefault();
        if ($("#id").val() === "") { $("#id").focus(); alert("아이디를 입력해주세요."); return false; }
        if ($("#pwd").val() === "") { $("#pwd").focus(); alert("비밀번호를 입력해주세요."); return false; }
      });
    });
  </script>
</div>

</body>
</html>