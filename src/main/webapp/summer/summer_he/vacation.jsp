<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../inc/header.jsp"%>

<div id="currentyear" class="topspace"></div>

<div class="row">
	<div class="col-sm-4 vacationcheck bottomline  topspace">연차 부여일 데이터 가져오기</div>
	<div class="col-sm-4 vacationcheck bottomline  topspace">연차 사용일 데이터 가져오기</div>
	<div class="col-sm-4 vacationcheck bottomline  topspace">남은 연차일수 데이터 가져오기</div>
</div>
<p class="btnright">
<a href="#" title="연차 사용 바로가기" class="btn btn-primary">연차 사용</a>
</p>

<table class="table">
<caption class="leftspace">연차 상세내역</caption>
<thead>
<tr>
<th scope="col">연차사용일</th>
<th scope="col">사용연차</th>
<th scope="col">남은연차</th>
</tr>
</thead>
<tbody>
<tr>
<td>2023-06-21</td>
<td>0.5일</td>
<td>10.5일</td>
</tr>
</tbody>
</table>

<script>
	$(function() {
		let date = new Date();
		var year = date.getFullYear();
		var currentyear = year + "년도";
		console.log(currentyear);
		
		var selector = document.querySelector("#currentyear");
		selector.innerHTML = currentyear;
	});
</script>

<%@ include file="../../inc/footer.jsp"%>