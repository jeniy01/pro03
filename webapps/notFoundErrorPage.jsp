<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해당 페이지를 찾을 수 없습니다.</title>   
    <meta name="subject" content="가평 문화 관광">
	<meta name="keywords" content="가평, 문화, 관광, 여행, 역사, 유적">
	<meta name="description" content="가평 문화 관광 안내 사이트에 오신 것을 환영합니다.">
	<meta name="author" content="by. jeniy01">
	
	<!-- 파비콘 설정
	<link rel="shortcut icon" href="${common_path }/img/favicon.ico"> -->
	
	<!-- https://jeniy01.github.io/web3 -->
	<!-- 오픈그래프 설정 -->
	<meta name="og:site_name" content="가평 문화 관광">
	<meta name="og:title" content="가평 문화 관광">
	<meta name="og:description" content="가평 문화 관광 안내 사이트에 오신 것을 환영합니다.">
	<meta name="og:url" content="https://gp.go.kr">
	<%-- <meta name="og:image" content="${common_path }/img/thumbnail.jpg"> --%>
	
	<!-- 기본 폰트 및 초기화 로딩 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Carlito:ital,wght@0,700;1,400;1,700&family=Jua&family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path %>/common.css">
    <link rel="stylesheet" href="<%=path %>/main.css">
    <link rel="stylesheet" href="<%=path %>/sub_common.css">
<style>
	.vs { height:40vh; }
	.content { background-image: url("./img/404pages.jpg"); }
	#page1 .page_tit { padding-top: 60px; }
	.table { width:680px; margin:4px auto; padding-top:20px; border-top:2px solid #333; }
	th {  text-align: justify;  line-height: 0; width:180px; padding-top:10px; padding-bottom: 10px;}
	td { padding-top:10px; padding-bottom: 10px; }
	th:after {  content: "";  display: inline-block;  width: 100%; }
	th:before {  content: "";  display: inline-block;  width: 100%; }
	.lb { display:block;  font-size:20px; }
	.indata { display:block; width:400px; height:24px; line-height:24px; padding:10px; }
	.btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px; text-align: center; padding:10px 20px;  cursor:pointer; }
	.btn-primary { background: -moz-linear-gradient(top, #ca4747 0%, #c73333 100%); background: -webkit-linear-gradient(top, #ca4747 0%,#c73333 100%); background: linear-gradient(to bottom, #ca4747 0%,#c73333 100%); color:#fff; }
    .btn-cancle { background: -moz-linear-gradient(top, #afafaf 0%, #797979 44%, #a7a7a7 100%); background: -webkit-linear-gradient(top, #afafaf 0%,#797979 44%,#a7a7a7 100%); background: linear-gradient(to bottom, #afafaf 0%,#797979 44%,#a7a7a7 100%); color:#fff; }
	.page_tit { text-align:center; font-size:32px; }
	.title { text-align:center; }
	#tb1, .msg { width:600px; margin:0 auto; text-align:center; }
	.btn { margin-top:20px; }
	img { display:inline-block; max-width:100%; }
</style>
</head>
<body>
<div class="msg">
	<h1 class="title">요청하신 주소의 페이지를 찾을 수 없습니다.</h1>
	<img src="./img/404pages.jpg" alt="찾을 수 없는 페이지">
	<button type="button" class="btn" onclick="javascript:history.back()">되돌아가기</button>
</div>
</body>
</html>