<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../inc/header.jsp"%>
<div class="mtotal">
	<div id="currentyear" class="topspace"></div>

	<div class="row">
		<div class="col-sm-4 vacationcheck bottomline  topspace">${totaldayoff/8}일</div>
		<div class="col-sm-4 vacationcheck bottomline  topspace">${usedayoff/8}일</div>
		<div class="col-sm-4 vacationcheck bottomline  topspace">${(totaldayoff-usedayoff)/8}일</div>
	</div>
	<table class="table table-striped table-hover">
		<caption class="leftspace">연차 상세내역</caption>
		<thead>
			<tr>
				<th scope="col">연차사용일</th>
				<th scope="col">사용연차</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list" items="${list}" varStatus="status">
				<!-- 4번 -->
				<fmt:parseNumber var="i" type="number"
					value="${list.wfapplystartday}" />
				<!-- 26 -->
				<fmt:parseNumber var="i2" type="number"
					value="${list.wfapplyendday}" />
				<!-- 28  -->
				<c:forEach var="date" begin="${i}" end="${i2}" step="1">
					<!--26 27 28  -->
					<tr>
						<td>${list.wfapplystartmonth}월${date}일</td>
						<td><c:choose>
								<c:when test="${list.wfcsrn==1}">휴가 1일/8시간</c:when>
								<c:when test="${list.wfcsrn==2}">반차(오전) 4시간</c:when>
								<c:otherwise>반차(오후) 4시간</c:otherwise>
							</c:choose></td>
					</tr>
				</c:forEach>
			</c:forEach>
		</tbody>
	</table>
</div>
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