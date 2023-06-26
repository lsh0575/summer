<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../inc/header.jsp" %>

	<div class="container body-top">
	<form action="#" method="get" id="">
		<fieldset>
		  <h4>그룹(조직) 추가</h4><br/>
			<div>
			 	<label for="sgroup">그룹 선택(*)</label>&emsp;
		        <label for="company">회사</label>
				<input type="radio" id="company" name="sgroup" value="1" >&emsp;
				<label for="team">팀</label>
				<input type="radio" id="team" name="sgroup" value="2" >&emsp;
				<label for="personal">개인</label>
				<input type="radio" id="personal" name="sgroup" value="3" >
			</div><br/>
				<div class="form-group">
					<label for="sgroup">그룹명 입력(*)</label>
					<input type="text" class="form-control" id="sgroup" name="sgroup" placeholder="그룹명을 입력해주세요"/>
				</div>
		<div class="form-group text-center">
			<div class="col-sm-6">
				<input type="submit" class="btn btn-success btn-block" value="확 인"/>
			</div>
			<div class="col-sm-6">
				<p><a href="#" class="btn btn-danger btn-block">취 소</a></p>
			</div>
		</div>
		
		</fieldset>	
	</form>
	</div>


<%@ include file="../../../inc/footer.jsp" %>