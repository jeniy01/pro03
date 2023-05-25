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
.image.is-4by3 { width:280px; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:2px solid #222; min-height:500px;">
	<section class="page">
		<div class="container is-fluid">
		
			<div class="">
			  <div class="">
			    <figure class="">
			      <img src="./img/mainbg01.jpg" alt="">
			    </figure>
			  </div>
			</div>
			
			<div class="tile is-ancestor">
			  <div class="tile is-vertical is-8">
			    <div class="tile">
			      <div class="tile is-parent">
			        <article class="tile is-child notification is-danger is-light">
			          <p class="title">자라섬 캠핑장</p>
			          <p class="subtitle">자라섬은 1943년 우리나라 최초의 발전전용댐인 청평탬이 완공되면서 생긴 섬으로 중도,서도,남도 등 3개의 섬과 2개의 부속섬으로 이루어져 있으며, 해방이후 중국인들이 농사를..</p>
			          <figure class="image is-4by3">
			            <img src="./img/main/mainsg01.jpg">
			          </figure>
			        </article>
			      </div>
			      <div class="tile is-parent">
			        <article class="tile is-child notification is-info is-light">
			          <p class="title">자라섬재즈페스티벌</p>
			          <p class="subtitle">자라섬 재즈는 1회부터 현재까지 재즈라는 특별한 장르를 고집하고 있다. 재즈는 스윙, 퓨전, 보사노바, 비밥, 월드뮤직 등 수많은 하위 카테고리로 나뉘어지며, 모든 장르를 수용할 수 있는..</p>
			          <figure class="image is-4by3">
			            <img src="./img/main/main_jarasum.jpg">
			          </figure>
			        </article>
			      </div>
			    </div>
			    <div class="tile is-parent">
			      <article class="tile is-child notification is-success is-light">
			        <p class="title">가평 구석구석 스탬프투어</p>
			        <p class="subtitle">2023년 가평군 구석구석 모바일 스탬프투어를  운영합니다. 스탬프 투어에 참여하셨다면 사은품 신청해주세요~</p>
			        <div class="content">
			          <!-- Content -->
			        </div>
			      </article>
			    </div>
			  </div>
			  <div class="tile is-parent">
			    <article class="tile is-child notification is-primary is-light">
			      <div class="content">
			        <p class="title">남송미술관</p>
			        <p class="subtitle">허수아비가 좋아서 고향에 허수아비 마을을 설립한 서양화가 남궁원은 고향을 그리는 마음에 시골의 대표적 상징물인 허수아비를 화폭에 옮겼다. 1960년대 산을 불태워 밭을 일구어 내던..</p>
			        <div class="content">
			          <figure class="image is-4by3">
			            <img src="./img/main/mainsg02.jpg">
			          </figure>
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