<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../../../inc/header.jsp"%>

<div class="container text-center">
	<h3>What We Doㅇ</h3>
	<br>
<div class="afterMain From">
	<div class="form-group row">
		<div class="col-sm-4">
			<a href="#"> 
				<span class="glyphicon glyphicon-list-alt" aria-hidden=”true”></span>
			</a>
			<p>프로젝트</p>
		</div>
		<div class="col-sm-4">
			 <a href="${pageContext.request.contextPath}/work/workinghour">
         		 <span class="glyphicon glyphicon-tasks" aria-hidden=”true”></span>
       		 </a>
			<p>출퇴근 관리</p>
		</div>
		<div class="col-sm-4">
			 <a href="${pageContext.request.contextPath}/work/totaldayoff">
         		 <span class="glyphicon glyphicon-pencil" aria-hidden=”true”></span>
       		 </a>
				<p>연차관리</p>
		</div>
	</div>
	<div class="form-group row">
		<div class="col-sm-4">
		 <a href="${pageContext.request.contextPath}/work/workflow">
        		 <span class="glyphicon glyphicon-folder-open" aria-hidden=”true”></span>
       	</a>
			  <p>전자결재</p>
		</div>
		<div class="col-sm-4">
			 <a href="${pageContext.request.contextPath}/group/gmReadAll">
          		<span class="glyphicon glyphicon-user" aria-hidden=”true”></span>
       		 </a>
				<p>조직도</p>
		</div>
		<div class="col-sm-4">
			 <a href="#">
         		 <span class="glyphicon glyphicon-calendar" aria-hidden=”true”></span>
        	</a>
				<p>캘린더</p>
		</div>
	</div>
</div>
</div>


<%@include file="../../../inc/footer.jsp"%>