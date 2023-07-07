<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../../../inc/header.jsp" %>

	<div class="container">
		<h3 class="text-center">${param.groupname}</h3>
		<div class="form-group text-right">
		<div class="row">
			<div class="col-sm-6 text-left">
				<h4>그룹 멤버 현황</h4>
			</div>
			<div class="col-sm-6">
				<input type="button" id="memberAdd" name="memberAdd" value="멤버 초대" class="btn btn-basic">
			</div>
		</div>
		</div> 
		<!--  					-->
		<!-- 현재 프로젝트에 소속된 인원 -->
		<!--  					-->
		<table class="table table-bordered">
		    <thead>
		      <tr class="active">
		        <th>NO</th> <th>그룹(조직) 명</th> <th>담당자</th> <th>직책</th>
		        <th>소속그룹</th> <th>전화번호</th> <th>가입날짜</th> <th>멤버삭제</th>
		      </tr>
		    </thead>
		    <tbody>
		      <c:forEach var="sgroup" items="${gdRead}" varStatus="status">
		      <tr>	
					<td>${gdRead.size() - status.index}</td>
					<td>${sgroup.groupname}</td>
					<td>${sgroup.username}</td>
					<td>${sgroup.positionlist}</td>
					<td>${sgroup.groupdivision}</td>
					<td>${sgroup.userphone}</td>
					<td>${sgroup.joindate}</td>
					<td>
					<input type="button" id="gdCancle" name="gdCancle" value="멤버 삭제" class="btn btn-basic">
					</td>
		      </tr>
		      </c:forEach>
		    </tbody>
		  </table>
		  <div class="row groupDetailBtn">
			<div class="col-sm-4"> <a class="btn btn-success btn-block" href="${pageContext.request.contextPath}/group/gUpdate?groupno=${param.groupno}">그룹명 수정</a></div>
			<div class="col-sm-4"> <a class="btn btn-warning btn-block" href="${pageContext.request.contextPath}/group/gmReadAll">목 록</a> </div>
			<div class="col-sm-4"> <a class="btn btn-danger btn-block"  href="${pageContext.request.contextPath}/group/gDelete?groupno=${param.groupno}">그룹 삭제</a> </div>
		  </div>
		<!--  					  -->
		<!-- 현재 프로젝트에 소속된 인원 끝 -->
		<!--  					  -->
		
		<!-- 				    -->
		<!--  프로젝트 초대 리스트 시작 -->
		<!--  			        -->
		<div class="form-group text-right">
		<div class="row">
			<div class="col-sm-6 text-left"><h4>멤버 초대 현황</h4></div>
			<div class="col-sm-6"></div>
		</div>
		</div> 
		<table class="table table-bordered">
		    <thead>
		      <tr class="active">
		        <th>NO</th> <th>그룹(조직) 명</th> <th>담당자</th> <th>직책</th>
		        <th>전화번호</th> <th>가입날짜</th> <th>초대수락여부</th> <th>초대취소</th>
		      </tr>
		    </thead>
		    <tbody>
		     <c:forEach var="sgroup" items="${gdRead2}" varStatus="status">
		      <tr>
				<td>${gdRead2.size() - status.index}</td>
				<td>${sgroup.groupname}</td>
				<td>${sgroup.username}</td>
				<td>${sgroup.positionlist}</td>
				<td>${sgroup.userphone}</td>
				<td>${sgroup.iaccept}</td>
				<td>${sgroup.idate}</td>
				<td>
					<input type="button" id="sg2Cancle" name="sg2Cancle" value="초대 취소" class="btn btn-basic">
				</td>
		      </tr>
		      </c:forEach>
		    </tbody>
		  </table>
		<!-- 				    -->
		<!--  프로젝트 초대 리스트 끝  -->
		<!--  			        --> 
		
	<script>
	function deleteGroup(userid) {
	    if (confirm('그룹을 삭제하시겠습니까?')) {
	        var form = document.createElement('form');
	        form.setAttribute('method', 'post');
	        form.setAttribute('action', '${pageContext.request.contextPath}/group/gDelete');
	
	        var input = document.createElement('input');
	        input.setAttribute('type', 'hidden');
	        input.setAttribute('name', 'summer_user_userid');
	        input.setAttribute('value', userid);
	
	        form.appendChild(input);
	        document.body.appendChild(form);
	
	        form.submit();
	    }
	}
	</script>
		
	</div>
</body>

<%@ include file="../../../inc/footer.jsp" %>