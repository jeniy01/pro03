<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../common.jsp" %>
<title>관광지</title>
<style>
.container.is-fluid { width:1280px; }
</style>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="container" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px; text-align:center;">
<div class="container is-fluid" style="padding-top:50px;">
	<div class="box">
	<h2 style="text-align:center; font-size:30px; padding-top:20px;"><strong>100대 맛집</strong></h2>
	<table class="table" style="text-align:center;">
			<thead>
				<tr><th style="text-align:center;">업소명</th><th style="text-align:center;">대표메뉴</th><th style="text-align:center;">소재지</th><th style="text-align:center;">연락처</th></tr>
			</thead>
			<tbody>
				<tr>
					<td>가시머리</td><br><td>민물매운탕</td><br><td>가평읍 북한강변로 1115-6</td><br><td>031-582-1930</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>