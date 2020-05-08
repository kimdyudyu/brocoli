<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/brocoli/resources/mainResources/css/trackList.css">

	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-Cart.jsp" %>
	

<body>
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/resources/mainResources/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center" style="color:white;">
			회사 소개
		</h2>
	</section>	

<a name="goContents"></a>
	<div class="body intro">
		<div class="section con01-001">
			<h2 class="title">비전</h2>
			<div class="contents">
				<p class="text">브랜드와 소비자 모두가 만족할 수 있는 플랫폼을 갖춘 아시아 최대의 패션커머스 기업</p>
			</div>
		</div>
		<!-- //con01-001 -->
		<div class="section con01-002">
			<h2 class="title">목표</h2>
			<div class="contents">
				<ul class="list">
					<li>글로벌 플랫폼 구축</li>
					<li>2020년 BROCOLI 스토어 연간 거래액 1조 원 달성</li>
					<li>연간 매출 100억 규모 파트너 브랜드 100개 육성</li>
				</ul>
			</div>
		</div>
		<!-- //con01-002 -->
		<div class="section history con01-003">
			<h2 class="title">연혁</h2>
			<div class="contents">
				<div class="historyGroup">
					<h3>2018</h3>
					<ul class="list">
						<li>벤처기업 인증</li>
						<li>패션 공유 오피스 BROCOLI 스튜디오 오픈</li>
					</ul>
					<h3>2017</h3>
					<ul class="list">
						<li>연간 거래액 3,000 억 원 달성</li>
					</ul>
					<h3>2015</h3>
					<ul class="list">
						<li>연간 거래액 1,000 억 원 달성</li>
					</ul>
					<h3>2001</h3>
					<ul class="list">
						<li>BROCOLI 개설</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- //con01-003 -->
		<div class="section con01-004">
			<h2 class="title">강점</h2>
			<div class="contents">
				<ul class="list">
					<li>적극적 기술 개발 투자</li>
					<li>패션 전문가 그룹</li>
					<li>지원 프로그램을 통한 파트너 브랜드 동반 성장</li>
					<li>상품과 콘텐츠의 결합</li>
				</ul>
			</div>
		</div>
		<!-- //con01-004 -->
		<div class="section con01-005">
			<h2 class="title">인증</h2>
			<div class="contents">
				<ul class="list">
					<li>정보보호관리체계(ISMS)</li>
					<li>메인비즈</li>
					<li>기술보증기금 A+ 멤버스</li>
					<li>벤처기업</li>
				</ul>
			</div>
		</div>
		<!-- //con01-005 -->
	</div>
	<!-- //body intro -->
	
</div>

	<%@ include file="All-Footer.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %>
<!--===============================================================================================-->	
	<script src="/brocoli/resources/mainResources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/bootstrap/js/popper.js"></script>
	<script src="/brocoli/resources/mainResources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/js/main.js"></script>



</body>
</html>