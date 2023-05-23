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
<title>구매후기 작성</title>
<style>
.container-fluid { width:1280px; }
</style>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px; ">
	<div class="container-fluid">
		<h2>구매후기</h2>
		<p>${msg }</p>
		<form action="${path1 }/UpdateReviewPro.do" method="post">
			<table class="table">
				<tbody>
					<tr>
						<th><label for="title">후기</label></th>
						<td>
							<input type="hidden" name="id" id="id" value="${rev.rnum }">	
							<input type="hidden" name="title" id="id" value="${rev.rtitle }">
							<input type="hidden" name="author" id="author" value="${rev.rauthor }">
							<input type="hidden" name="date" id="date" value="${rev.rdate }">
						</td>
					</tr>
					<tr>
						<th><label for="content">이용후기 내용</label></th>
						<td>
							<textarea rows="10" cols="100" name="content" id="content" maxlength="990" title="1000자 내로 작성" class="form-control">${rev.rcontent }</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="이용후기 수정하기" class="button is-primary">
							<a href="javascript:history.go(-1)" class="button is-light">뒤로 가기</a>				
						</td>
					</tr>
				</tbody>
			</table>
		</form>		
	</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>