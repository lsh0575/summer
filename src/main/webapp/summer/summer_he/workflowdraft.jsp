<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../inc/header.jsp"%>

<strong class="leftspace">기안함</strong>
<div class="bottomline"></div>

<table class="table">
	<thead>
		<tr>
			<th scope="col" class="tcenter">기안일</th>
			<th scope="col" class="tcenter">전자결재명</th>
			<th scope="col" class="tcenter">기안상태</th>
			<th scope="col" class="tcenter">기안삭제</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td class="tcenter">2023-06-21</td>
			<td class="tcenter">휴가신청</td>
			<td class="tcenter">진행중/승인/반려</td>
			<td class="tcenter"><button class="btn btn-primary">기안 삭제</button></td>
		</tr>
	</tbody>
</table>

<%@ include file="../../inc/footer.jsp"%>