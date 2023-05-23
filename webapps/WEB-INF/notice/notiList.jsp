<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../common.jsp" %>
<%-- <script src="${path }/jquery-1.10.1.min.js"></script>
<script src="${path }/datatables.min.js"></script>
<link rel="stylesheet" href="${path }/datatables.min.css"> --%>
<title>공지사항 목록</title>
<style>
.container.is-fluid { width:1280px; }
/* .h { margin-left:500px; } */
/* .table { width:500px; } */
</style>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px;">
	<div class="container is-fluid">
		<h2>공지사항</h2>
		<table class="table">
			<thead>
				<tr><th>연번</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
			</thead>
			<tbody>
				<c:forEach var="noti" items="${notiList }" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td>
					<c:if test="${empty sid }">
						<span>${noti.ntitle }</span>
					</c:if>
					<c:if test="${!empty sid }">
						<a href="${path1 }/GetNotice.do?nnum=${noti.nnum }">${noti.ntitle }</a>
					</c:if>
						
					</td>
					<td>${noti.nauthor }</td>
					<%-- <td><a href="${path1 }/GetNotice.do?idx=${noti.name }">${noti.title }</a></td>
					<td>${noti.author }</td> --%>
					<td>
						<fmt:parseDate value="${noti.ndate }" var="ndate" pattern="yyyy-MM-dd HH:mm:ss" />
						<fmt:formatDate value="${ndate }" pattern="yyyy년 MM월 dd일" />
					</td>
				</tr>
				</c:forEach>
				<c:if test="${empty notiList }">
				<tr>
					<td colspan="4">해당 공지사항이 존재하지 않습니다.</td>
				</tr>
				</c:if>
			</tbody>
		</table>
		<c:if test="${!empty sid }">
		<div class="btn-group">
			<a href="${path1 }/InsertNotice.do" class="button is-primary">글 등록</a>
		</div>
		</c:if>
		<!-- <script>
				$(document).ready(function(){
				    $('#tb1').DataTable({'order': [[0, 'desc']]});
				});
		</script> -->
	</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>