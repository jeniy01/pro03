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
<title>답변 글쓰기</title>
<style>
.container-fluid { width:1280px; }
</style>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px; text-align:center;">
<div class="container is-fluid" style="padding-top:px;">
	<div class="container-fluid">
		<h2>답변 쓰기</h2>
		<%-- <p>${msg }</p> --%>
		<form action="${path1 }/AddReplyPro.do" method="post">
			<table class="table">
				<tbody>
					<tr>
						<th><label for="qtitle">답변 제목</label></th>
						<td>
							<input type="hidden" name="lev" id="lev" value="2">
							<input type="hidden" name="parno" id="parno" value="${qna.qnum }">
							<input type="hidden" name="qauthor" id="qauthor" value="${sid }">
							<input type="text" name="qtitle" id="qtitle" value="[답변] ${qna.qtitle }" maxlength="98" title="100자 내로 작성" placeholder="100자 내로 작성" class="input" required autofocus>
						</td>
					</tr>
					<tr>
						<th><label for="qcontent">질문 내용</label></th>
						<td>
							<p>${qna.qcontent }</p>
						</td>
					</tr>
					<tr>
						<th><label for="qcontent">답변 내용</label></th>
						<td>
							<textarea rows="10" cols="100" name="qcontent" id="qcontent" maxlength="990" title="1000자 내로 작성" class="textarea"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="답변 쓰기" class="button is-primary">
							<a href="${path1 }/QnaList.do" class="button is-light">목록보기</a>				
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