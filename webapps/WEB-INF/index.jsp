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
			<div class="box">
			  <div class="">
			    <figure class="">
			      <img src="./img/main/mainbg08.jpg" alt="">
			    </figure>
			  </div>
			  <div class="card-content">
			    <div class="media">
			      <div class="media-left">
			      </div>
			      <div class="media-content">
			        <p class="title is-4" style="text-align:center;">가평군이 자랑하는 가평 8경</p>
			        <p class="title is-1" style="text-align:center;">제8경 유/명/농/계</p>
			        <!-- <progress class="progress is-small is-primary" max="100">15%</progress> -->
			      </div>
			    </div>
			    <div class="content">
			    <p class="subtitle is-5" style="padding-top:100px; text-align:center;">
			      	설악면 가일리에 위치한 해발 864m의 산으로 기암괴석의 계곡에 끊임없이 흐르는 물로 등산객의 애호를 받고 있으며<br>이곳의 계곡은 박쥐소, 용소, 마당소 등 유리알같은 맑은소와 어우러져 장관을 이룬다.
			      </p>
			      <br>
			      <time datetime="2016-1-1"></time>
			    </div>
			  </div>
			</div>
			<!-- <div class="">
			  <div class="">
			    <figure class="">
			      <img src="./img/mainbg01.jpg" alt="">
			    </figure>
			  </div>
			  <div class="flex-caption">
			  <h3>가평군이 자랑하는 가평 8경</h3>
			  <h2>제8경 유/명/농/계</h2>
			  <hr>
			  <p>
			  	설악면 가일리에 위치한 해발 864m의 산으로 기암괴석의 계곡에 끊임없이 흐르는 물로 등산객의 애호를 받고 있으며<br>이곳의 계곡은 박쥐소, 용소, 마당소 등 유리알같은 맑은소와 어우러져 장관을 이룬다.
			  </p>
			  </div>
			</div> -->
			<div class="tile is-ancestor">
			  <div class="tile is-vertical is-8">
			    <div class="tile">
			      <div class="tile is-parent">
			        <article class="tile is-child notification is-danger is-light">
			          <p class="title">자라섬 캠핑장</p>
			          <p class="subtitle">자라섬은 1943년 우리나라 최초의 발전전용댐인 청평탬이 완공되면서 생긴 섬으로 중도,서도,남도 등 3개의 섬과 2개의 부속섬으로 이루어져 있으며, 해방이후 중국인들이 농사를..</p>
			          <figure class="image is-4by3">
			            <img class="is-rounded" src="./img/main/mainsg01.jpg">
			          </figure>
			        </article>
			      </div>
			      <div class="tile is-parent">
			        <article class="tile is-child notification is-info is-light">
			          <p class="title">자라섬재즈페스티벌</p>
			          <p class="subtitle">자라섬 재즈는 1회부터 현재까지 재즈라는 특별한 장르를 고집하고 있다. 재즈는 스윙, 퓨전, 보사노바, 비밥, 월드뮤직 등 수많은 하위 카테고리로 나뉘어지며, 모든 장르를 수용할 수 있는..</p>
			          <figure class="image is-4by3">
			            <img class="is-rounded" src="./img/main/main_jarasum.jpg">
			          </figure>
			        </article>
			      </div>
			    </div>
			    <div class="tile is-parent">
			      <article class="tile is-child notification is-success is-light">
			        <p class="title">공지사항 ▼</p>
			        <p class="subtitle"><a href="${path }/NoticeList.do">.. 자세히보기</a></p>
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
			            <img class="is-rounded" src="./img/main/mainsg02.jpg">
			          </figure>
			        </div>
			      </div>
			    </article>
			  </div>
			</div>
		<!-- <table class="table is-fullwidth">
		<thead>
			<tr>
				<th><a href="https://www.visitkorea.or.kr/"><img src="./img/logo/logo_bottom_01.gif"></a></th>	
				<th><a href="https://gto.or.kr/main.php"><img src="./img/logo/logo_bottom_02.gif"></a></th>
				<th><a href="https://blog.naver.com/ecopiagp"><img src="./img/logo/logo_bottom_09.png"></a></th>
				<th><a href="https://www.musicvillage1939.com/"><img src="./img/logo/logo_bottom_10.png"></a></th>	
				<th><a href="https://www.jaraisland.or.kr/jara/main/main.php"><img src="./img/logo/logo_bottom_05.gif"></a></th>
				<th><a href="http://gfood100.com/"><img src="./img/logo/logo_bottom_06.jpg"></a></th>
				<th><a href="http://www.gpnara.kr/"><img src="./img/logo/logo_bottom_07.jpg"></a></th>
			</tr>
		</thead>
	</table> -->
		</div>
	</section>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>