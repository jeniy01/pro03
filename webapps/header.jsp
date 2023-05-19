<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%
	String sid = "";
	if(session!=null) sid = (String) session.getAttribute("sid");
%>
<header id="hd" class="container">
	<div class="container-fluid">
		<nav id="tnb" class="navbar navbar-default">
			<ul class="nav navbar-nav navbar-right" style="padding-right:40px">
				<c:if test="${empty sid }">
					<li><a href="${path }/Login.do">로그인</a></li>
					<li><a href="${path }/Terms.do">회원가입</a></li>
				</c:if>
				<c:if test="${!empty sid }">
					<li><a href="${path }/MyPage.do">마이페이지</a></li>
					<li><a href="${path }/Logout.do">로그아웃</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<div class="container-fluid">
		<nav class="navbar navbar-default" style="padding-right:30px;">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="${path1 }">가평 문화 관광</a>
		    </div>
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav" data-toggle="tab-hover" role="tablist">
		        <li class="active"><a href="${path1 }/Intro.do">가평 문화 관광<span class="sr-only">(current)</span></a></li>
		        <li class="dropdown">
		          <a href="${path1 }/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">지역정보<span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/">가평소개</a></li>
		            <li><a href="${path1 }/">가평여행소식</a></li>
		            <li><a href="${path1 }/">가평관광사진</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="${path1 }/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">관광명소<span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/">관광지</a></li>
		            <li><a href="${path1 }/">문화유적</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="${path1 }/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">숙박<span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/">관광호텔</a></li>
		            <li><a href="${path1 }/">일반숙박시설</a></li>
		            <li><a href="${path1 }/">야영장</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="${path1 }/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">맛집<span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/">100대 맛집</a></li>
		            <li><a href="${path1 }/">일반음식점</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="${path1 }/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">여행길잡이<span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/">Q&A</a></li>
		            <li><a href="${path1 }/">리뷰</a></li>
		            <li><a href="${path1 }/">공지사항</a></li>
		          </ul>
		        </li>
		      </ul>
		      
		      <c:if test="${sid=='admin' }">
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="${path1 }/UserList.do">회원 관리</a></li>
		          </ul>
		      </c:if>
		    </div>
		  </div>
		</nav>
	</div>
</header>
