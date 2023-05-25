<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=utf-8");
%>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html">
<html>
<head>
<%@ include file="../../common.jsp" %>
<title>공지사항 글 상세보기</title>
<style>

</style>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px; text-align:center;">
<div class="container is-fluid" style="padding-top:px;">
	<div class="field" style="text-align:center;">
		<h2 style="padding-top: 100px; padding-bottom:50px; font-size:30px;"><strong>글 상세보기</strong></h2>
		<table class="table is-fullwidth">
			<tbody>
				<tr>
					<th>글 번호</th>
					<td>${noti.nnum }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${noti.ntitle }</td>
				</tr>
				<tr>
					<th>글 내용</th>
					<td>${noti.ncontent }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>
					<input type="hidden" name="nauthor" id="nauthor" value="${sid }">
					${sid }
					</td>
				</tr>
				<tr>
					<th>작성일</th>
					<td>
						<fmt:parseDate value="${noti.ndate }" var="ndate" pattern="yyyy-MM-dd HH:mm:ss" />
						<fmt:formatDate value="${ndate }" pattern="yyyy년 MM월 dd일" />
					</td>
				</tr>
				<c:if test="${!empty noti.file1 }">
				<tr>
					<th>첨부 파일</th>
					<td>
						<c:set var="lh" value="${fn:length(noti.file1) }" />
						<c:set var="download" value="${fn:substring(noti.file1,5,lh) }" />
						<a href="${path1 }/${filepath1 }/${file1 }" download>${download }</a>
					</td>
				</tr>
				</c:if>
			</tbody>
		</table>
		<div class="btn-group">
			<a href="${path1 }/NoticeList.do" class="button is-light">목록보기</a>
			<a href="${path1 }/InsertNotice.do" class="button is-primary">글쓰기</a>
			<a href="${path1 }/UpdateNotice.do?nnum=${noti.nnum }" class="button is-link">글수정</a>
			<a href="${path1 }/DelNotice.do?nnum=${noti.nnum }" class="button is-danger">글삭제</a>
		</div>
	</div>
	</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>