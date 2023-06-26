<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../inc/header.jsp" %>

	<div class="container">
		<div class="form-group text-right">
		<div class="row">
			<div class="col-sm-4 text-left"><h4>초대 현황</h4></div>
			<div class="col-sm-8">
				<input type="button" id="irAgree" name="irAgree" value="초대 수락" class="btn btn-basic">
				<input type="button" id="irCancle" name="irCancle" value="초대 거절" class="btn btn-basic">
			</div>
		</div>
		</div>
		<table class="table table-bordered">
		    <thead>
		      <tr class="success">
		      	<th></th>
		        <th>NO</th>
		        <th>초대자</th>
		        <th>초대 그룹/프로젝트</th>
		        <th>초대 내용</th>
		        <th>초대 날짜</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		      	<td><input type="checkbox" id="check1" name="check" class="" value="1"></td>
		        <td>1</td>
		        <td>가사장</td>
		        <td>ㅁㅁ그룹</td>
		        <td>ㅁㅁ그룹에서 초대를 보냈습니다.</td>
		        <td>2023-06-22</td>
		      </tr>
		      <tr>
		      	<td><input type="checkbox" id="check2" name="check" class="" value="2"></td>
		        <td>2</td>
		        <td>나부장</td>
		        <td>ㄱㄱ프로젝트</td>
		        <td>ㄱㄱ프로젝트에서 초대를 보냈습니다.</td>
		        <td>2023-06-23</td>
		      </tr>
    		  <tr>
		      	<td><input type="checkbox" id="check3" name="check" class="" value="3"></td>
		        <td>3</td>
		        <td>다과장</td>
		        <td>ㅂㅂ프로젝트</td>
		        <td>ㅂㅂ프로젝트에서 초대를 보냈습니다.</td>
		        <td>2023-06-24</td>
		      </tr>
			  <tr>
		      	<td><input type="checkbox" id="check3" name="check" class="" value="3"></td>
		        <td>4</td>
		        <td>라대리</td>
		        <td>ㅋㅋ프로젝트</td>
		        <td>ㅋㅋ프로젝트에서 초대를 보냈습니다.</td>
		        <td>2023-06-24</td>
		      </tr>
		    </tbody>
		  </table>
	</div>

<%@ include file="../../../inc/footer.jsp" %>