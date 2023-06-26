<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>SUMMER 그룹웨어 이용약관</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
	.btn{ width: 740px }
	textarea { resize: none; }
</style>

</head>
<body>
	<!-- 그룹웨어 이용약관 폼 -->
	<div class="container body-top">
		<h3 class="text-center">SUMMER 그룹웨어 이용약관</h3>
		<div class="text-center">
			<input type="checkbox" id="allCheck">
			<label for="allCheck">모두 동의하기</label><br/>
			<label>(*)은 필수 요소입니다.</label>
		</div>
		<div class="form-group text-center">
			<input type="checkbox" id="check1" name="agree">
			<label for="check1">개인정보 이용 약관 동의(*)</label>
		</div>
		<div class="form-group text-center">
			<textarea cols="100" rows="9" readonly><%@ include file="../terms/termsOfUse.txt"%></textarea>
		</div>
		<div class="form-group text-center">
			<input type="checkbox" id="check2" name="agree">
			<label for="check2">개인정보 제3자 제공 동의(*)</label>
		</div>
		<div class="form-group text-center">
			<textarea cols="100" rows="9" readonly><%@ include file="../terms/privacyTermsConditions.txt" %></textarea>
		</div>
		<div class="text-center">
			<p><a href="#" class="btn btn-success form-control" id="accept" title="약관에 동의합니다">동의</a>
		</div>
		<div class="text-center">
			<p><a href="javascript:history.go(-1)" class="btn btn-danger form-control" id="cancle" title="약관에 동의하지 않습니다.">취소</a>
		</div>
		
		<script>
			$(document).ready(function(){
				$("#accept").on("click",function(){
					if ($("#check1").is(":checked")==false){
						$("#check1").focus();
						alert('개인정보 이용 약관 동의 체크바랍니다.');
						return false;
					}
					else if ($("#check2").is(":checked")==false){
							 $("#check2").focus();
							 alert('개인정보 제3자 제공 동의 체크 바랍니다.');
							 return false;
					}
				});						
			});
			$(document).ready(function(){
				$("#allCheck").on("click",function(){
					if ($("#allCheck").is(":checked")==true){
						$(":checkbox[name=agree]").prop("checked",true);
					} else {
						$(":checkbox[name=agree]").prop("checked",false);
					}
				});
			});
		</script>
	</div>
	<!-- 그룹웨어 이용약관 폼 -->
</body>
</html>