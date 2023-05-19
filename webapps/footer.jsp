<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<footer class="ft" style="min-height:100px; border-top:3px solid #333; margin-top:30px; padding-top:30px;">
        <article class="row row1">
            <div class="ft_wrap">
                <nav class="fnb left">
                    <ul class="fnb_box">
                        <li><a href="privacy.html">개인정보처리방침</a></li>
                        <li><a href="usepromotion.html">운영/관리방침</a></li>
                        <li><a href="terms.html">택배표준약관</a></li>
                        <li><a href="management.html">안전보건경영방침</a></li>
                        <li><a href="refusal.html">이메일주소무단수집거부</a></li>
                    </ul>
                </nav>
                <select name="favo" id="favo" class="favo right" onchange="favo(this)">
                    <option value="">FAMILY SITE</option>
                    <option value="https://www.gp.go.kr/portal/index.do">가평군청</option>
                    <option value="https://knto.or.kr/index#">한국관광공사</option>
                    <option value="https://gto.or.kr/main.php">경기관광공사</option>
                </select>
                <script>
                function favo(s){
                    var hs = s.value;
                    if(hs!=""){
                        window.open(hs, "팝업");
                    }
                }    
                </script>
            </div>
        </article>
        <div class="container-fluid ft_wrap">
		<p style="font-weight:bold;">copyright2010 gapyeong county. all rights reserved.</p>
		</div>
	</footer>