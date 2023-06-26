<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../inc/header.jsp" %>

	<div class="container">
		<h3 class="text-center">#### 클릭한 소속그룹명 가져오기 - ex 현재 ㅁㅁ그룹 ####</h3>
		<div class="form-group text-right">
		<div class="row">
			<div class="col-sm-6 text-left">
				<h4>그룹 멤버 현황</h4>
			</div>
			<div class="col-sm-6">
				<input type="button" id="memberAdd" name="memberAdd" value="멤버 초대" class="btn btn-basic">
				<input type="button" id="memberDelete" name="memberDelete" value="멤버 삭제" class="btn btn-basic">
			</div>		
		</div>
		</div> 
		<!--  					-->
		<!-- 현재 프로젝트에 소속된 인원 -->
		<!--  					-->
		<table class="table table-bordered">
		    <thead>
		      <tr class="active">
		      	<th></th>
		        <th>NO</th>
		        <th>그룹(조직) 명</th>
		        <th>담당자</th>
		        <th>직책</th>
		        <th>소속그룹</th>
		        <th>전화번호</th>
		        <th>가입날짜</th>
		      </tr>
		    </thead>
		    <tbody>
		    <!-- 생성날짜를 받아오고 그룹 리스트는 forEach돌리기 -->
		    <!-- no가 1일 경우 class="danger" 아닐경우 감추기 가능한지 확인 -->
		      <tr class="danger">
		      <!-- value는 no의 숫자를 받아와서 동일하게 간다. -->
		      	<td><input type="checkbox" id="check1" name="check" class="" value="1"></td>
		        <td>1</td>
		        <td>회사</td>
		        <td>가사장</td>
		        <td>사장</td>
		        <td>ㅁㅁ그룹</td>
		        <td>010-1234-5678</td>
		        <td>2023-06-15</td>
		      </tr>
		      <tr>
		      	<td><input type="checkbox" id="check2" name="check" class="" value="2"></td>
		        <td>2</td>
		        <td>회사</td>
		        <td>나부장</td>
		        <td>부장</td>
		        <td>ㅁㅁ그룹</td>
		        <td>010-3367-2458</td>
		        <td>2023-06-16</td>
		      </tr>
    		  <tr>
		      	<td><input type="checkbox" id="check3" name="check" class="" value="3"></td>
		        <td>3</td>
		        <td>회사</td>
		        <td>라과장</td>
		        <td>과장</td>
		        <td>ㅁㅁ그룹</td>
		        <td>010-5469-1454</td>
		        <td>2023-06-19</td>
		      </tr>
		    </tbody>
		  </table>
		  <div class="row groupDetailBtn">
			<div class="col-sm-4"> <a class="btn btn-success btn-block" href="#">그룹명 수정</a></div>
			<div class="col-sm-4"> <a class="btn btn-warning btn-block" href="#">목 록</a> </div>
			<div class="col-sm-4"> <a class="btn btn-danger btn-block" href="#">그룹 삭제</a> </div>
		</div>
		<!--  					  -->
		<!-- 현재 프로젝트에 소속된 인원 끝 -->
		<!--  					  -->
		
		<!-- 				    -->
		<!--  프로젝트 초대 리스트 끝  -->
		<!--  			        -->
		
		<div class="form-group text-right">
		<div class="row">
			<div class="col-sm-6 text-left"><h4>멤버 초대 현황</h4></div>
			<div class="col-sm-6"><input type="button" id="cancelInvi" name="cancelInvi" value="초대 취소" class="btn btn-basic"></div>
		</div>
		</div> 
		<table class="table table-bordered">
		    <thead>
		      <tr class="active">
		      	<th></th>
		        <th>NO</th>
		        <th>그룹(조직) 명</th>
		        <th>담당자</th>
		        <th>직책</th>
		        <th>소속그룹</th>
		        <th>전화번호</th>
		        <th>가입날짜</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr class="danger">
		      	<td><input type="checkbox" id="check1" name="check" class="" value="1"></td>
		        <td>1</td>
		        <td> </td>
		        <td>마사원</td>
		        <td>사원</td>
		        <td>ㅁㅁ그룹</td>
		        <td>010-1234-5678</td>
		        <td>2023-06-22</td>
		      </tr>
		      <tr>
		      	<td><input type="checkbox" id="check2" name="check" class="" value="2"></td>
		        <td>2</td>
		        <td> </td>
		        <td>바사원</td>
		        <td>사원</td>
		        <td>ㅁㅁ그룹</td>
		        <td>010-3367-2458</td>
		        <td>2023-06-23</td>
		      </tr>
    		  <tr>
		      	<td><input type="checkbox" id="check3" name="check" class="" value="3"></td>
		        <td>3</td>
		        <td> </td>
		        <td>사사원</td>
		        <td>사원</td>
		        <td>ㅁㅁ그룹</td>
		        <td>010-5469-1454</td>
		        <td>2023-06-24</td>
		      </tr>
			  <tr>
		      	<td><input type="checkbox" id="check3" name="check" class="" value="3"></td>
		        <td>4</td>
		        <td> </td>
		        <td>아사원</td>
		        <td>사원</td>
		        <td>ㅁㅁ그룹</td>
		        <td>010-5469-1454</td>
		        <td>2023-06-24</td>
		      </tr>
		    </tbody>
		  </table>
		<!-- 				    -->
		<!--  프로젝트 초대 리스트 끝  -->
		<!--  			        --> 
		
	</div>
</body>

<%@ include file="../../../inc/footer.jsp" %>