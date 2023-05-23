<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<%@ include file="../common.jsp" %>
<title>메인 페이지</title>
<style>
.container.is-fluid { width:1280px; }
.tile.is-ancestor { width:1280px; }
.card { width:1904px; height:550px; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:2px solid #222; min-height:500px;">
	<section class="page">
		<div class="container is-fluid">
		
			<div class="card">
			  <div class="card-image">
			    <figure class="image is-4by3">
			      <img src="./img/mainbg01.jpg" alt="가평군 문화 관광 홈페이지">
			    </figure>
			  </div>
			</div>
			
			<div class="tile is-ancestor">
			  <div class="tile is-vertical is-8">
			    <div class="tile">
			      <div class="tile is-parent is-vertical">
			        <article class="tile is-child notification is-primary">
			          <p class="title">Vertical...</p>
			          <p class="subtitle">Top tile</p>
			        </article>
			        <article class="tile is-child notification is-warning">
			          <p class="title">...tiles</p>
			          <p class="subtitle">Bottom tile</p>
			        </article>
			      </div>
			      <div class="tile is-parent">
			        <article class="tile is-child notification is-info">
			          <p class="title">Middle tile</p>
			          <p class="subtitle">With an image</p>
			          <figure class="image is-4by3">
			            <img src="https://bulma.io/images/placeholders/640x480.png">
			          </figure>
			        </article>
			      </div>
			    </div>
			    <div class="tile is-parent">
			      <article class="tile is-child notification is-danger">
			        <p class="title">Wide tile</p>
			        <p class="subtitle">Aligned with the right tile</p>
			        <div class="content">
			          <!-- Content -->
			        </div>
			      </article>
			    </div>
			  </div>
			  <div class="tile is-parent">
			    <article class="tile is-child notification is-success">
			      <div class="content">
			        <p class="title">Tall tile</p>
			        <p class="subtitle">With even more content</p>
			        <div class="content">
			          <!-- Content -->
			        </div>
			      </div>
			    </article>
			  </div>
			</div>	
		</div>
	</section>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>