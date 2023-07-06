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
	<strong class="leftspace">출퇴근 수정</strong>
	<div class="bottomline"></div>
	<div class="row popupcenter">
		<div class="col-sm-3 popupborder">
			<div class="topspace">기안</div>
			<div>${workingHour.userid}</div>
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
					<input type="text" value="출퇴근 수정" name="workflowname"
						id="workfolwname" readonly />
				</div>
			</div>

			<div class="row form-group">
				<div class="col-sm-3 popupfont">
					<label class="leftspacename">날짜</label>
				</div>
				<div class="col-sm-9">
					<input type="date" name="date" id="date" value="${workingHour.whdate}" />
				</div>
			</div>

	<div class="row form-group">
				<div class="col-sm-3 popupfont">
					<label class="leftspacename">출근시간</label>
				</div>
				<div class="col-sm-9">
					<input type="text" value="${workingHour.whgotime}" name="gotime" id="gotime" />
				</div>
			</div>
			
						<div class="row form-group">
				<div class="col-sm-3 popupfont">
					<label class="leftspacename">퇴근시간</label>
				</div>
				<div class="col-sm-9">
					<input type="text" value="${workingHour.whleavetime}" name="leavetime" id="leavetime" />
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

	</script>
</body>
</html>