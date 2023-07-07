<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../../inc/header.jsp" %>

<div class="container">
    <div class="form-group text-right">
        <div class="row">
            <div class="col-sm-4 text-left"><h4>초대 현황</h4></div>
            <div class="col-sm-8"> </div>
        </div>
    </div>
    <table class="table table-bordered text-center">
        <thead>
            <tr class="success text-center">
                <th>NO</th>
                <th>초대자</th>
                <th>초대 그룹/프로젝트</th>
                <th>초대 내용</th>
                <th>초대 날짜</th>
                <th>초대 수락 / 거절</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="invite" items="${inviteList}" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td>${invite.uid}</td>
                    <td>${invite.groupname}</td>
                    <td>${invite.uid}님이 ${invite.groupname}에서 초대를 보냈습니다.</td>
                    <td>${invite.idate}</td>
                    <td>
                        <form action="/inviteAupdate" method="post">
                            <input type="hidden" name="uid" value="${invite.uid}">
                            <input type="hidden" name="pgsrn" value="${invite.pgsrn}">
                            <button type="submit" class="btn btn-basic">초대 수락</button>
                        </form>
                        <form action="/inviteCupdate" method="post">
                            <input type="hidden" name="uid" value="${invite.uid}">
                            <input type="hidden" name="pgsrn" value="${invite.pgsrn}">
                            <button type="submit" class="btn btn-basic">초대 거절</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<%@ include file="../../../inc/footer.jsp" %>