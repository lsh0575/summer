<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../inc/header.jsp"%>

<div class="row">
	<div class="col-sm-6">
		<strong class="leftspace">최근 기안문서</strong>
		<div class="row">
			<div class="col-sm-4 lastworkflow">결재명 : db갖고오기 기안일 : db갖고오기
				기안상태 : db갖고오기</div>
			<div class="col-sm-4 lastworkflow">결재명 : db갖고오기 기안일 : db갖고오기
				기안상태 : db갖고오기</div>
			<div class="col-sm-4 lastworkflow">결재명 : db갖고오기 기안일 : db갖고오기
				기안상태 : db갖고오기</div>

		</div>
	</div>

	<div class="col-sm-6 bottomline workflowcheck">
		<strong class="leftspace">전자결재 목록</strong>
		<div class="bottomline"></div>
		<p>
			<button onclick=popupedit() class="workflowpopup" id="editworkinghour">출퇴근시간 변경</button>
		</p>
		<p>
			<button onclick=popupcrv() class="workflowpopup" id="crvacation">휴가 신청</button>
		</p>
		<p>
			<button onclick=popupcrbv() class="workflowpopup" id="crbanvacation">반차(오전/오후) 신청</button>
		</p>
	</div>
</div>

<script>
	function popupedit() {
		var target = 'popupeditpage.jsp';
		var popupeditWidth = 1000;
		var popupeditHeight = 800;

		var popupeditX = Math.ceil(( window.screen.width - popupeditWidth )/2);
		var popupeditY = Math.ceil(( window.screen.height - popupeditHeight )/2); 

		var popupedit = window.open(target, '_blank', 'width=' + popupeditWidth + ',height=' + popupeditHeight + ',left='+ popupeditX + ', top='+ popupeditY);
	}
	
	function popupcrv() {
		var target = 'popupcrvacationpage.jsp';
		var popupcrvWidth = 1000;
		var popupcrvHeight = 800;

		var popupcrvX = Math.ceil(( window.screen.width - popupcrvWidth )/2);
		var popupcrvY = Math.ceil(( window.screen.height - popupcrvHeight )/2); 

		var popupcrv = window.open(target, '_blank', 'width=' + popupcrvWidth + ',height=' + popupcrvHeight + ',left='+ popupcrvX + ', top='+ popupcrvY);
	}
	
	function popupcrbv() {
		var target = 'popupcrbvacationpage.jsp';
		var popupcrbvWidth = 1000;
		var popupcrbvHeight = 800;

		var popupcrbvX = Math.ceil(( window.screen.width - popupcrbvWidth )/2);
		var popupcrbvY = Math.ceil(( window.screen.height - popupcrbvHeight )/2); 

		var popupcrbv = window.open(target, '_blank', 'width=' + popupcrbvWidth + ',height=' + popupcrbvHeight + ',left='+ popupcrbvX + ', top='+ popupcrbvY);
	}
	
	
</script>

<%@ include file="../../inc/footer.jsp"%>