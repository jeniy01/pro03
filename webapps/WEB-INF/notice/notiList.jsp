<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- <%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %> --%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<%-- <c:set var="path1" value="<%=request.getContextPath() %>" /> --%>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../common.jsp" %>
<title>공지사항</title>
<%-- <link rel="stylesheet" href="${path1 }/resource/datatables.min.css">
<script src="${path1 }/resource/datatables.min.js"></script>
<script>
	$(document).ready( function () {
	    $('#tb1').DataTable({
	    	  aaSorting: []
	    	  //, order : [[ 0, "asc" ]]
	   	});
	});
</script> --%>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px; text-align:center;">
<div class="container is-fluid" style="padding-top:px;">
	<div class="field">
		<h2 style="padding-top: 100px; padding-bottom:50px; font-size:30px;"><strong>공지사항</strong></h2>
		<table class="table is-fullwidth" style="text-align:center;">
			<thead>
				<tr><th style="text-align:center;">연번</th><th style="text-align:center;">제목</th><th style="text-align:center;">작성자</th><th style="text-align:center;">작성일</th></tr>
			</thead>
			<tbody>
				<c:forEach var="noti" items="${notiList }" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td><a href="${path1 }/GetNotice.do?nnum=${noti.nnum }">${noti.ntitle }</a></td>
					<td>
					<input type="hidden" name="nauthor" id="nauthor" value="${sid }">
					${sid }
					</td>
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
		<c:if test="${sid=='admin' }">
			<div class="navbar-item">
		        <div class="buttons">
					<a href="${path1 }/InsertNotice.do" class="button is-primary">글 등록</a>
				</div>
			</div>
		</c:if>
		</div>
	</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>