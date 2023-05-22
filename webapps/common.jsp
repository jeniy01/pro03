<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="common_path" value="${pageContext.request.contextPath }" />
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 문서 정보 등록 -->
<!-- 검색엔진최적화(Search Engine Optimization) : SEO -->
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

<!-- 스타일 초기화 -->
<link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<style>
/* 마우스 롤 오버시 스타일 */
.dropdown-toggle::after { transition: transform 0.15s linear;}
.show.dropdown .dropdown-toggle::after {transform: translateY(3px);}
.dropdown-menu {margin-top: 0;} /* hover 메뉴때문에 넣음 */
</style>
<script>
/* 마우스 롤 오버시 스크립트 */
$(document).ready(function(){
	var $dropdown = $(".navbar-nav .dropdown");
	var $dropdownToggle = $(".dropdown-toggle");
	var $dropdownMenu = $(".dropdown-menu");
	var showClass = "show";
	$(window).on("load resize", function() {
		if (this.matchMedia("(min-width: 768px)").matches) {
			$dropdown.hover(
				function() {
					var $this = $(this);
					$this.addClass(showClass);
					$this.find($dropdownToggle).attr("aria-expanded", "true");
					$this.find($dropdownMenu).addClass(showClass);
				},
				function() {
					var $this = $(this);
					$this.removeClass(showClass);
					$this.find($dropdownToggle).attr("aria-expanded", "false");
					$this.find($dropdownMenu).removeClass(showClass);
				}
			);
		} else {
			$dropdown.off("mouseenter mouseleave");
		}
	});
});
</script>