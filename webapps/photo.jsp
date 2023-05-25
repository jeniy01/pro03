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
<title>가평관광사진</title>
<style>
.container.is-fluid { width:1280px; }
</style>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px; text-align:center;">
<div class="container is-fluid" style="padding-top:50px;">
	<div class="box">
	<h2 style="text-align:center; font-size:30px; padding-top:20px;"><strong>가평관광사진</strong></h2>
	<img src="./img/photo1.jpg" alt="" style="padding-top:50px; padding-left:px;">
	<img src="./img/photo2.jpg" alt="" style="padding-left:px;">
	</div>
</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>