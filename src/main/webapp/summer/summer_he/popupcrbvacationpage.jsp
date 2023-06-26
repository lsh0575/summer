<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/inc/summer_css.css">

</head>
<body>
	<strong class="leftspace">반차(오전/오후) 신청</strong>
	<div class="bottomline"></div>
	<div class="row popupcenter">
		<div class="col-sm-3 popupborder">
			<div class="topspace">기안</div>
			<div>김혜은</div>
		</div>
		<div class="col-sm-3 popupborder">
			<div class="topspace">결재자</div>
			<div>김혜금</div>
		</div>
		<div class="col-sm-3"></div>
		<div class="col-sm-3"></div>
	</div>

	<form action="" method="">
		<fieldset>
			<div class="row form-group">
				<div class="col-sm-3 popupfont">
					<label class="leftspacename">전자결재명</label>
				</div>
				<div class="col-sm-9">
					<input type="text" value="반차(오전/오후) 신청" name="workflowname"
						id="workfolwname" readonly/>
				</div>
			</div>

			<div class="row form-group">
				<div class="col-sm-3 popupfont">
					<label class="leftspacename">시작일</label>
				</div>
				<div class="col-sm-9">
					<input type="date" name="startdate" id="startdate" />
				</div>
			</div>

			<div class="row form-group">
				<div class="col-sm-3 popupfont">
					<label class="leftspacename">종료일</label>
				</div>
				<div class="col-sm-9">
					<input type="date" name="enddate" id="enddate" />
				</div>
			</div>

			<div class="row form-group">
				<div class="col-sm-3 popupfont">
					<label class="leftspacename">사용시간</label>
				</div>
				<div class="col-sm-9">
					<input type="text" value="자동으로 들어가게" name="usetime" id="usetime" />
				</div>
			</div>

			<div class="row form-group">
				<div class="col-sm-3 popupfont">
					<label class="leftspacename">사유</label>
				</div>
				<div class="col-sm-9">
					<textarea placeholder="사유를 입력해주세요." name="wcontent" id="wcontent"></textarea>
				</div>
			</div>

			<div class="formbtn">
				<input type="submit" title="기안하기" class="btn btn-primary"
					value="기안하기" /> <input type="button" title="취소"
					class="btn btn-primary" value="취소" />
			</div>
		</fieldset>
	</form>
	
	<script>
	//아작스로 불러와주기
	
	</script>
</body>
</html>