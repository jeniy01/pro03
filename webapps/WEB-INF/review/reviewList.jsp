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
<title>리뷰 목록</title>
<style>
.container.is-fluid { width:1280px; }
</style>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px;">
	<div class="container is-fluid">
		<h2>리뷰</h2>
		<fmt:setLocale value="ko_kr" />
		<table class="table">
			<thead>
				<tr>
					<tr><th>연번</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="rev" items="${rList }">
				<tr>
					<td>연번 : ${rev.rnum }</td>
					<td>제목 : ${rev.rtitle }</td>
					<td>작성자 : ${rev.rauthor }</td>
					<td>작성일 : ${rev.rdate }</td>
					
					<c:if test="${sid.equals('admin') }">
						<a href="${path1 }/DeleteReview.do?rnum=${rev.rnum }" class="button is-danger">삭제</a>
					</c:if>
				</tr>
				</c:forEach>
				<c:if test="${empty rList }">
				<tr>
					<td colspan="4">게시글이 존재하지 않습니다.</td>
				</tr>
				</c:if>
			</tbody>
		</table>
		<c:if test="${!empty sid }">
		<div class="btn-group">
			<a href="${path1 }/AddReview.do" class="button is-primary">글쓰기</a>
		</div>
		</c:if>
	</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>