<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../../inc/header.jsp"%>

<div class="mtotal">
<strong class="leftspace">${groupname}</strong>

<div class="checktop">
	<div id="date"></div>
</div>

<table class="table table-striped table-hover">
	<thead>
		<tr>
			<th scope="col">이름</th>
			<th scope="col">출근시간</th>
			<th scope="col">퇴근시간</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="list" items="${list}" varStatus="status1">
			<c:forEach var="selectname" items="${selectname}" varStatus="status">
				<c:choose>
					<c:when test="${list.userid==selectname.userid}">
						<tr>
							<td><a
								href="${pageContext.request.contextPath}/work/monthlyWorkingHour?userid=${selectname.userid}&username=${selectname.username}"
								title="${selectname.username} 근무기록 보러가기">${selectname.username}</a></td>
							<td class="whgotime"><input type="hidden" name="whgotime"
								class="whgotime1" value="${list.whgotime}" />${list.whgotime}</td>
							<td class="whleavetime"><input type="hidden"
								name="whleavetime" class="whleavetime1"
								value="${list.whleavetime}" />${list.whleavetime}</td>
						</tr>
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</c:forEach>
	</tbody>
</table>
</div>
<script>
	let date = new Date();
	var year = date.getFullYear();
	var month = ("0" + (1 + date.getMonth())).slice(-2);
	var day = ("0" + date.getDate()).slice(-2);
	var today = year + "-" + month + "-" + day; //2023-07-4

	$(function() {
/* 		var selector = document.querySelector("#date");
		selector.innerHTML = today; //2023-07-4
		
		///////////퇴근시간-출근시간
		var gotimediff = $(".whgotime1").val();
		var leavetimediff = $(".whleavetime1").val();

		//console.log(gotimediff);
		//console.log(leavetimediff);

		var gotimediffmin = gotimediff.substr(3, 2); //출근시간 분
		var leavetimediffmin = leavetimediff.substr(3, 2); //퇴근시간 분

		const gonum1 = parseInt(gotimediffmin);
		const leavenum1 = parseInt(leavetimediffmin);

		var gotimediffhour = gotimediff.substr(0, 2); //출근시간 시
		var leavetimediffhour = leavetimediff.substr(0, 2); //퇴근시간 시

		const gonum2 = parseInt(gotimediffhour);
		const leavenum2 = parseInt(leavetimediffhour);

		//console.log(gotimediffhour);
		//console.log(leavetimediffhour);
		//console.log(leavenum2);

		var workinghourrecord = document.querySelector(".workinghour");

		if (leavetimediffmin - gotimediffmin < 0) {
			workinghourrecord.innerHTML = (leavenum2 - gonum2) + "시간 "
					+ (leavenum1 - gonum1 + 60) + "분";
		} else {
			workinghourrecord.innerHTML = (leavenum2 - gonum2) + "시간 "
					+ (leavenum1 - gonum1) + "분";
		} */

	});
</script>

<%@include file="../../inc/footer.jsp"%>