<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../inc/header.jsp"%>

<strong class="leftspace">근태 등록</strong>
<div class="bottomline"></div>
<strong class="leftspace">근태 체크</strong>

<div class="bottomline workingcheck">
	<div class="row">
		<div class="col-sm-3">
			<div id="today"></div>
		</div>
		<div class="col-sm-3">
			<div class="topspace">출근</div>
			<div id="gotime">-</div>
			<button class="btn btn-primary btnspace" id="gotowork">출근하기</button>
		</div>
		<div class="col-sm-3">
			<div class="topspace">퇴근</div>
			<div id="leavetime">-</div>
			<button class="btn btn-primary btnspace" id="leavetowork">퇴근하기</button>
		</div>
		<div class="col-sm-3">
			<div class="topspace">근무시간</div>
			<div id="workinghour">-</div>
		</div>
	</div>
</div>

<table class="table table-striped">
	<caption class="leftspace" id="currentmonth"></caption>
	<thead>
		<tr>
			<th scope="col"></th>
			<th scope="col">출근시간</th>
			<th scope="col">퇴근시간</th>
			<th scope="col">휴가 사용내역</th>
			<th scope="col">1일 근무시간</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>2023-06-01</td>
			<td>09:00</td>
			<td>21:00</td>
			<td>오전반차/4시간</td>
			<td>11시간</td>
			<td><a href="${pageContext.request.contextPath}/editworkinghour.hyeeun" title="출퇴근수정 바로가기"><button
						class="btn btn-primary">수정</button></a></td>
		</tr>
	</tbody>
	<tfoot>
		<th>평균</th>
		<td>09:35</td>
		<td>19:00</td>
		<td>-</td>
		<td>9시간 35분</td>
		<td></td>
	</tfoot>
</table>

<script>
	//현재 날짜, 시간 불러오기
	let date = new Date();
	var year = date.getFullYear();
	var month = ("0" + (1 + date.getMonth())).slice(-2);
	var day = ("0" + date.getDate()).slice(-2);
	var today = year + "." + month + "." + day;

	var hours = ('0' + date.getHours()).slice(-2);
	var minutes = ('0' + date.getMinutes()).slice(-2);
	var seconds = ('0' + date.getSeconds()).slice(-2);
	var time = hours + ":" + minutes + ":" + seconds;

	//현재 날짜 미리 띄우기
	$(function() {
		var selector = document.querySelector("#today");
		selector.innerHTML = today + "<div class='actfont'>" + time + "</div>";
	});
	
	//현재 날짜, 시간 1초마다 메서드 호출
	setInterval(function() {
		let date = new Date();
		var year = date.getFullYear();
		var month = ("0" + (1 + date.getMonth())).slice(-2);
		var day = ("0" + date.getDate()).slice(-2);
		var today = year + "." + month + "." + day;

		var hours = ('0' + date.getHours()).slice(-2);
		var minutes = ('0' + date.getMinutes()).slice(-2);
		var seconds = ('0' + date.getSeconds()).slice(-2);
		var currenttime = hours + ":" + minutes + ":" + seconds;
		var selector = document.querySelector("#today");
		selector.innerHTML = today + "<div class='actfont'>" + currenttime + "</div>";
	}, 1000);
	
	//테이블캡션
	var selectmonth = year + "-" + month;
	var selectormonth = document.querySelector("#currentmonth");
	selectormonth.innerHTML = selectmonth

	//출근버튼 + 데이터 insert
	$(function() {
		$("#gotowork").on("click", function() {
			let date = new Date();
			var year = date.getFullYear();
			var month = ("0" + (1 + date.getMonth())).slice(-2);
			var day = ("0" + date.getDate()).slice(-2);
			var today = year + "." + month + "." + day;

			var hours = ('0' + date.getHours()).slice(-2);
			var minutes = ('0' + date.getMinutes()).slice(-2);
			var seconds = ('0' + date.getSeconds()).slice(-2);
			var gotime = hours + ":" + minutes + ":" + seconds;
			
			var gotimerecord = document.querySelector("#gotime");
			gotimerecord.innerHTML = gotime;
			
			$("#gotowork").unbind('click');
			
		});
	//퇴근버튼 + 데이터 insert	
		$("#leavetowork").on("click", function() {
			let date = new Date();
			var year = date.getFullYear();
			var month = ("0" + (1 + date.getMonth())).slice(-2);
			var day = ("0" + date.getDate()).slice(-2);
			var today = year + "." + month + "." + day;

			var hours = ('0' + date.getHours()).slice(-2);
			var minutes = ('0' + date.getMinutes()).slice(-2);
			var seconds = ('0' + date.getSeconds()).slice(-2);
			var leavetime = hours + ":" + minutes + ":" + seconds;	
			
			var leavetimerecord = document.querySelector("#leavetime");
			leavetimerecord.innerHTML = leavetime;
			
			$("#leavetowork").unbind('click');
			
			// 퇴근시간-출근시간은 테이블에서 가져와서 하기
		});
	});
	
</script>

<%@ include file="../../inc/footer.jsp"%>
