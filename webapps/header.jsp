<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%
	String sid = "";
	if(session!=null) sid = (String) session.getAttribute("sid");
%>
<style>
.container.is-fluid { width:1280px; }
.navbar { padding-top:20px; width:1280px; }
.navbar-link { padding-left:50px; }
.logo { width:150px; height:56px; }
</style>
<header id="hd" class="container">
	<div class="container is-fluid">
		<nav class="navbar" role="navigation" aria-label="main navigation">
		  <div class="navbar-brand">
		    <a class="logo" href="${path }/">
		      <img src="${path }/img/logo.gif" width="126" height="56">
		    </a>
		    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
		      <span aria-hidden="true"></span>
		      <span aria-hidden="true"></span>
		      <span aria-hidden="true"></span>
		    </a>
		  </div>
		  <div id="navbarBasicExample" class="navbar-menu">
		    <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">지역정보</a>
		        <div class="navbar-dropdown">
		          <a href="${path }/localinfo.jsp"" class="navbar-item">가평소개</a>
		          <a href="${path }/news.jsp" class="navbar-item">가평여행소식</a>
		          <a href="${path }/photo.jsp" class="navbar-item">가평관광사진</a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">관광명소</a>
		        <div class="navbar-dropdown">
		          <a href="${path }/gpplace.jsp" class="navbar-item">관광지</a>
		          <a href="${path }/history.jsp" class="navbar-item">문화유적</a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">숙박</a>
		        <div class="navbar-dropdown">
		          <a href="${path }/hotel.jsp" class="navbar-item">관광호텔</a>
		          <a href="${path }/guest.jsp" class="navbar-item">일반숙박시설</a>
		          <a href="${path }/camp.jsp" class="navbar-item">야영장</a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">맛집</a>
		        <div class="navbar-dropdown">
		          <a href="${path }/mlist.jsp" class="navbar-item">100대 맛집</a>
		          <a href="${path }/rest.jsp" class="navbar-item">일반음식점</a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">여행길잡이</a>
		        <div class="navbar-dropdown">
		          <a href="${path }/QnaList.do" class="navbar-item">Q&A</a>
		          <a href="${path }/ReviewList.do" class="navbar-item">리뷰</a>
		          <a href="${path }/NoticeList.do" class="navbar-item">공지사항</a>
		        </div>
		      </div>
		    </div>
		    <div class="navbar-end">
		      <div class="navbar-item">
		        <div class="buttons">
		        	<c:if test="${empty sid }">
		          		<a href="${path }/User1Terms.do" class="button is-primary">회원가입</a>
		          		<a href="${path }/User1Login.do" class="button is-light">로그인</a>
		          	</c:if>
		          	<c:if test="${!empty sid }">
						<a href="${path }/MyPage.do" class="button is-primary">마이페이지</a>
						<a href="${path }/User1Logout.do" class="button is-light">로그아웃</a>
					</c:if>
		        </div>
		      </div>
		      <c:if test="${sid=='admin' }">
			<div class="navbar-item">
		        <div class="buttons">
					<a href="${path }/User1List.do" class="button is-primary">회원 관리</a>
				</div>
			</div>
		</c:if>
		    </div>
		</nav>
		<%-- <c:if test="${sid=='admin' }">
			<div class="navbar-item">
		        <div class="buttons">
					<a href="${path1 }/User1List.do" class="button is-primary">회원 관리</a>
				</div>
			</div>
		</c:if> --%>
	</div>
</header>