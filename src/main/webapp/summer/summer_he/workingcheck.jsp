<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../../inc/header.jsp"%>

<strong class="leftspace">${groupname}</strong>

<div class="checktop">
	<div id="date"></div>
</div>

<table class="table">
	<thead>
		<tr>
			<th scope="col">이름</th>
			<th scope="col">출근시간</th>
			<th scope="col">퇴근시간</th>
			<th scope="col">근무시간</th>
		</tr>
	</thead>
	<tbody>

		<c:forEach var="list" items="${list}" varStatus="status">
			<!--  -->
			<tr>
				<td><a
					href="${pageContext.request.contextPath}/work/monthlyWorkingHour?userid=${list.userid}&username=${list.username}"
					title="${list.username} 근무기록 보러가기">${list.username}</a></td>
				<td class="whgotime"><input type="hidden" name="whgotime"
					class="whgotime1" value="${list.whgotime}" /> ${list.whgotime}</td>
				<td class="whleavetime">
				<input type="hidden" name="whleavetime" class="whleavetime1" value="${list.whleavetime}"/>
				${list.whleavetime}</td>
				<td class="workinghour"></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<script>

	let date = new Date();
	var year = date.getFullYear();
	var month = ("0" + (1 + date.getMonth())).slice(-2);
	var day = ("0" + date.getDate()).slice(-2);
	var today = year + "-" + month + "-" + day; //2023-07-4

	$(function() {
		var selector = document.querySelector("#date");
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
			workinghourrecord.innerHTML = (leavenum2 - gonum2)
					+ "시간 " + (leavenum1 - gonum1 + 60) + "분";
		} else {
			workinghourrecord.innerHTML = (leavenum2 - gonum2)
					+ "시간 " + (leavenum1 - gonum1) + "분";
		} 
		
		// 이전버튼 눌렀을 때
		$("#backarrow").on("click",function() {
			
			const todayelement = document.getElementById('yesterday');
			const todayelementcheck = todayelement.innerText; //2023-07-4

			var result1 = todayelementcheck.substr(8, 2); //4
			//console.log(result1);
			//console.log(result1);
			var result2 = Number(result1); // 숫자로 변환
			//console.log(result2);	

				let date = new Date();
				var year = date.getFullYear();
				var month = ("0" + (1 + date.getMonth())).slice(-2);
				var day = ("0" + date.getDate()).slice(-2);
				var today = year + "-" + month + "-" + (result2-1);
							//console.log(today);
				var selector = document.querySelector("#yesterday");
				selector.innerHTML = today;
				
					$.ajax({
							url : "${pageContext.request.contextPath}/work/groupWorkingHour2",
							type : "GET",
							data : {
								"whdate" : today
							},
							dataType: "json",
							contentType :"application/json; charset=UTF-8",
							success : function(json) {
							console.log(json);
							},
							error : function() {
							alert("관리자에게 문의 바랍니다.");
					}
		});
});

		// 다음버튼 눌렀을 때

		$("#nextarrow").on("click", function() {
			const todayelement = document.getElementById('yesterday');
			const todayelementcheck = todayelement.innerText; //2023-06-29

			var result1 = todayelementcheck.substr(8, 2); //29
			//console.log(result1);
			var result2 = Number(result1); // 숫자로 변환
			//console.log(result2);

			let date = new Date();
			var year = date.getFullYear();
			var month = ("0" + (1 + date.getMonth())).slice(-2);
			var day = ("0" + date.getDate()).slice(-2);
			var today = year + "-" + month + "-" + (result2 + 1);
			//console.log(today);

			var selector = document.querySelector("#yesterday");
			selector.innerHTML = today;

			/* 	$.ajax({
					url : "${pageContext.request.contextPath}/work/groupWorkingHour",
					type : "GET",
					data : {
						"whdate" : today-1
					},
					success : function(data) {
					},
					error : function() {
						alert("관리자에게 문의 바랍니다.");
					}
				}); */
		});
	});
</script>

<%@include file="../../inc/footer.jsp"%>