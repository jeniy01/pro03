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
<title>질문 및 답변 상세보기</title>
<style>
.container.is-fluid { width:1280px; }
</style>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px; ">
	<div class="container is-fluid">
		<h2>글 상세보기</h2>
		<table class="table">
			<tbody>
				<tr>
					<th>글 번호</th>
					<td>${rev.rnum }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${rev.rtitle }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${rev.rcontent }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${rev.rauthor }</td>
				</tr>
				<tr>
					<th>작성일</th>
					<td>
						<fmt:parseDate value="${rev.rdate }" var="rdate" pattern="yyyy-MM-dd HH:mm:ss" />
						<fmt:formatDate value="${rdate }" pattern="yyyy년 MM월 dd일" />
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<a href="${path1 }/ReviewList.do" class="button is-light">글 목록</a>
			<c:if test="${qn.qauthor.equals(sid) || sid.equals('admin') }">
			<a href="${path1 }/UpdateReview.do?rnum=${rev.rnum }" class="button is-primary">내용 수정</a>
			<a href="${path1 }/DeleteReview.do?rnum=${rev.rnum }" class="button is-danger">질문 삭제</a>
			</c:if>
		</div>
	</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>