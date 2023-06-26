<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../inc/header.jsp"%>

<strong class="leftspace">A그룹</strong>

<div class="checktop">
	<img src="${pageContext.request.contextPath}/images/backarrow.png" alt="이전 화살표 사진" class="imgsize" id="backdate"/>
	<div id="yesterday"></div>
	<img src="${pageContext.request.contextPath}/images/nextarrow.png" alt="다음 화살표 사진" class="imgsize" />
</div>

<table class="table">
	<thead>
		<tr>
			<th scope="col"></th>
			<th scope="col">출근시간</th>
			<th scope="col">퇴근시간</th>
			<th scope="col">휴가내역</th>
			<th scope="col">근무시간</th>
		</tr>
	</thead>
	<tbody>
	<tr>
	<td>강씨</td>
	<td>09:30</td>
	<td>18:30</td>
	<td>-</td>
	<td>8시간</td>
	</tr>
	</tbody>
</table>

<script>
	let date = new Date();
	var year = date.getFullYear();
	var month = ("0" + (1 + date.getMonth())).slice(-2);
	var day = ("0" + date.getDate()).slice(-2);
	var today = year + "." + month + "." + (day - 1);

	$(function() {
		var selector = document.querySelector("#yesterday");
		selector.innerHTML = today;
	});
	
	$(function() {
		$("#backdate").on(
				"click",
				function() {
					$.ajax({
						url : ,
						type : "get",
						dataType : "text",
						data : {
							"name" : $("#name").val()
						},
						success : function(data) {
							$(".result").html(data);
						},
						error : function(xhr, textStatus, errorThrown) {
							$(".result").html(
									textStatus + "(HTTP-" + xhr.status
											+ "/" + errorThrown + ")");
						}
					});
				});
	});
</script>

<%@include file="../../inc/footer.jsp"%>