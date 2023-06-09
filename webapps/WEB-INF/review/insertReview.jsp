<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=utf-8");
%> 
<!DOCTYPE html">
<html>
<head>
<%@ include file="../../common.jsp" %>
<title>리뷰 글 쓰기</title>
<style>

</style>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px; text-align:center;">
<div class="container is-fluid" style="padding-top:px;">
	<div class="field" style="text-align:center;">
		<h2 style="padding-top: 100px; padding-bottom:50px; font-size:30px;"><strong>리뷰쓰기</strong></h2>
		<form action="${path1 }/InsertReviewPro.do" method="post" enctype="multipart/form-data">
			<table class="table is-fullwidth">
				<tbody>
					<tr>
						<th><label for="rtitle">제목</label></th>
						<td>
							<input type="hidden" name="rauthor" id="rauthor" value="${sid }">
							<input type="text" name="rtitle" id="rtitle" maxlength="98" title="100자 내로 작성" placeholder="100자 내로 작성" class="input" required autofocus>
						</td>
					</tr>
					<tr>
						<th><label for="rcontent">내용</label></th>
						<td>
							<textarea rows="10" cols="100" name="rcontent" id="rcontent" maxlength="990" title="1000자 내로 작성" class="textarea"></textarea>
						</td>
					</tr>
					<tr>
						<th><label for="file1">첨부 파일</label></th>
						<td>
							<input type="file" name="file1" id="file1" class="">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="글쓰기" class="button is-primary">
							<a href="${path1 }/ReviewList.do" class="button is-light">글 목록</a>				
						</td>
					</tr>
				</tbody>
			</table>
		</form>		
	</div>
	</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>