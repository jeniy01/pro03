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
<title>100대 맛집</title>
<style>
.container.is-fluid { width:1280px; }
</style>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="content" style="padding-top:30px; margin-top:30px; border-top:3px solid #333; min-height:500px;">
	<div class="container is-fluid" style="padding-top:50px;">
		<div class="box">
		<h2 style="text-align:center; font-size:30px; padding-top:20px; padding-bottom:100px;"><strong>100대 맛집</strong></h2>
		<table class="table" style="">
			<tbody>
				<tr>
					<th>◈ 가시머리</th>
					<td>가평읍 북한강변로 1115-6</td>
					<td>☏ 031-582-1930</td>
				</tr>
				<tr>
					<th>◈ 감나무집</th>
					<td>가평읍 석봉로 3번길 6</td>
					<td>☏ 031-581-0011</td>
				</tr>
				<tr>
					<th>◈ 계곡위의집</th>
					<td>가평읍 용추로 397</td>
					<td>☏ 031-581-6689</td>
				</tr>
				<tr>
					<th>◈ 구성각</th>
					<td>가평읍 중촌로 15-47</td>
					<td>☏ 0507-1414-6465</td>
				</tr>
				<tr>
					<th>◈ 굿데이쭈꾸미</th>
					<td>가평읍 보납로16-1</td>
					<td>☏ 031-581-9001</td>
				</tr>
				<tr>
					<th>◈ 다한우</th>
					<td>가평읍 굴다리길 28-1</td>
					<td>☏ 031-581-9227</td>
				</tr>
				<tr>
					<th>◈ 닭갈비타운</th>
					<td>가평읍 오리나무길 12</td>
					<td>☏ 031-582-0592</td>
				</tr>
				<tr>
					<th>◈ 로뎀해장국</th>
					<td>가평읍 연인길 6-14</td>
					<td>☏ 031-582-2505</td>
				</tr>
				<tr>
					<th>◈ 상아</th>
					<td>가평읍 복장리 563-1</td>
					<td>☏ 031-582-6994</td>
				</tr>
				<tr>
					<th>◈ 승리손칼국수</th>
					<td>가평읍 석봉로 193</td>
					<td>☏ 031-581-7775</td>
				</tr>
				<tr>
					<th>◈ 아리수</th>
					<td>가평읍 북한강변로 1058</td>
					<td>☏ 031-581-4777</td>
				</tr>
				<tr>
					<th>◈ 잣고을곰탕</th>
					<td>가평읍 향교로 8</td>
					<td>☏ 031-581-2966</td>
				</tr>
				<tr>
					<th>◈ 지중해</th>
					<td>가평읍 석봉로 214</td>
					<td>☏ 031-582-4689</td>
				</tr>
				<tr>
					<th>◈ 출퇴근</th>
					<td>가평읍 석봉로 206</td>
					<td>☏ 031-582-8787</td>
				</tr>
				<tr>
					<th>◈ 커피먹인닭용추파크</th>
					<td>가평읍 용추로 397</td>
					<td>☏ 031-582-3685</td>
				</tr>
				<tr>
					<th>◈ 초원닭갈비</th>
					<td>가평읍 호반로2556</td>
					<td>☏ 031-581-3366</td>
				</tr>
				<tr>
					<th>◈ 웬장어</th>
					<td>가평읍 가화로 524</td>
					<td>☏ 031-582-2585</td>
				</tr>
				<tr>
					<th>◈ 우렁촌쌈밥</th>
					<td>가평읍 연인2길 21</td>
					<td>☏ 031-582-9383</td>
				</tr>
				<tr>
					<th>◈ 우두머리국밥</th>
					<td>가평읍 연인길 17</td>
					<td>☏ 031-582-0361</td>
				</tr>
				<tr>
					<th>◈ 송원막국수</th>
					<td>가평읍 가화로 76-1</td>
					<td>☏ 031-582-0590</td>
				</tr>
				<tr>
					<th>◈ 미락무교동낙지</th>
					<td>가평읍 경춘로 2055</td>
					<td>☏ 031-582-7644</td>
				</tr>
				<tr>
					<th>◈ 둘레길숯불닭갈비</th>
					<td>가평읍 가평제방길 33</td>
					<td>☏ 031-582-1987</td>
				</tr>
				<tr>
					<th>◈ 두물머리</th>
					<td>가평읍 달전로 3</td>
					<td>☏ 0507-1340-3261</td>
				</tr>
				<tr>
					<th>◈ 대나무통와인삼겹살</th>
					<td>가평읍 문화로 232-1</td>
					<td>☏ 031-582-7545</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>