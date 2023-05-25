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
<title>일반음식점</title>
<style>
.container.is-fluid { width:1280px; }
</style>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px;">
	<div class="container is-fluid" style="padding-top:50px;">
		<div class="box">
		<h2 style="text-align:center; font-size:30px; padding-top:20px; padding-bottom:100px;"><strong>일반음식점</strong></h2>
		<table class="table" style="">
			<tbody>
				<tr>
					<th>◈ 가람</th>
					<td>경기도 가평군 가평읍 태봉두밀로 66</td>
					<td>☏ 031 -581 -4848</td>
				</tr>
				<tr>
					<th>◈ 가평 장가네</th>
					<td>경기도 가평군 가평읍 석봉로191번길 66</td>
					<td>☏ 031 -581 -0722</td>
				</tr>
				<tr>
					<th>◈ 가평 황금잣두부</th>
					<td>경기도 가평군 가평읍 태봉두밀로 129-15, B동 1층</td>
					<td>☏ 031 -582 -2665</td>
				</tr>
				<tr>
					<th>◈ 가평감자탕</th>
					<td>경기도 가평군 가평읍 석봉로 118</td>
					<td>☏ 031- 582-0225</td>
				</tr>
				<tr>
					<th>◈ 가평농가식당</th>
					<td>경기도 가평군 가평읍 호반로 2034-12, 가동 1층</td>
					<td>☏ 031 -581 -3090</td>
				</tr>
				<tr>
					<th>◈ 가평돼지국밥</th>
					<td>경기도 가평군 가평읍 호반로 2613, B동 2층</td>
					<td>☏ 031- 582-8379</td>
				</tr>
				<tr>
					<th>◈ 가평메밀촌</th>
					<td>경기도 가평군 가평읍 호반로 2585, 제1동 1층</td>
					<td>☏ 031 -582 -8942</td>
				</tr>
				<tr>
					<th>◈ 가평물회막회</th>
					<td>경기도 가평군 가평읍 보납로 40</td>
					<td>☏ 031- 582-6574</td>
				</tr>
				<tr>
					<th>◈ 가평손두부</th>
					<td>경기도 가평군 가평읍 가화로 301, 가동 1층</td>
					<td>☏ 031- 581-0384</td>
				</tr>
				<tr>
					<th>◈ 가평숯불막국수</th>
					<td>경기도 가평군 가평읍 호반로 1721, 1층</td>
					<td>☏ 031 -582 -1110</td>
				</tr>
				<tr>
					<th>◈ 가평칼국수</th>
					<td>경기도 가평군 가평읍 보납로6번길 37</td>
					<td>☏ 031- 581-7008</td>
				</tr>
				<tr>
					<th>◈ 가평한식맛집</th>
					<td>경기도 가평군 가평읍 굴다리길 3</td>
					<td>☏ 031 -581 -9251</td>
				</tr>
				<tr>
					<th>◈ 가평힐스</th>
					<td>경기도 가평군 가평읍 용추로 398-34 (외 1필지)</td>
					<td>☏ 031- 582-5581</td>
				</tr>
				<tr>
					<th>◈ 감동피자</th>
					<td>경기도 가평군 가평읍 석봉로 209, 1층 110호</td>
					<td>☏ 031 -581 -5512</td>
				</tr>
				<tr>
					<th>◈ 경춘</th>
					<td>경기도 가평군 가평읍 굴다리길 2 (,2)</td>
					<td>☏ 031- 582-2286</td>
				</tr>
				<tr>
					<th>◈ 두루두루</th>
					<td>경기도 가평군 가평읍 석봉로 139-1</td>
					<td>☏ 031 -581 -3353</td>
				</tr>
				<tr>
					<th>◈ 두밀리 흙집</th>
					<td>경기도 가평군 가평읍 태봉두밀로 87, 1층</td>
					<td>☏ 031- 582-1423</td>
				</tr>
				<tr>
					<th>◈ 마크빈 제빵소</th>
					<td>경기도 가평군 가평읍 석봉로 116, 1층</td>
					<td>☏ 031 -581 -1710</td>
				</tr>
				<tr>
					<th>◈ 모두의송어</th>
					<td>경기도 가평군 가평읍 자라섬로 1, 외 1 1층</td>
					<td>☏ 031 -581 -3393</td>
				</tr>
				<tr>
					<th>◈ 목로주점</th>
					<td>경기도 가평군 가평읍 오리나무길 27, 1층</td>
					<td>☏ 031- 582-7803</td>
				</tr>
				<tr>
					<th>◈ 벌떡장어</th>
					<td>경기도 가평군 가평읍 각담말길 50-66</td>
					<td>☏ 031 -581 -5335</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>