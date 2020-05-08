<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-Cart.jsp" %>
	
	

<style>
#header-color5{
	color:#6c7ae0
}
</style>
</head>
<body class="animsition">
	
		
	


	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/resources/mainResources/images/magazine.jpg'); ">
		<h2 class="ltext-105 cl0 txt-center" style="color: snow;">
			Magazine
		</h2>
	</section>	


	<!-- Content page -->
	<section class="bg0 p-t-62 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-45 p-r-0-lg">
					<c:choose>
					<c:when test="${fn:length(mList) == 0}">
					<div style="margin-left: 250px; margin-top: 350px;" class="p-b-63">
						<h1>조회결과가 없습니다.</h1>
						</div>
					</c:when>
					<c:otherwise>
					<c:forEach var="m" items="${ mList }" >
					Home > Magazine
						<!-- item blog -->
						<div class="p-b-63">
						<c:url var="mDetail" value="mDetail.mn">
							<c:param name="m_NO" value="${ m.m_NO }"/>
						</c:url>
							<a href="${ mDetail }" class="hov-img0 how-pos5-parent">
								<img src="/brocoli/resources/magazine-Img/${m.mFile.mf_Img1_ReName }" alt="IMG-BLOG">

								<div class="flex-col-c-m size-123 bg9 how-pos5">
									<span class="ltext-107 cl2 txt-center">
										<fmt:formatDate  value="${m.m_Date}" pattern="dd" />
									</span>

									<span class="stext-109 cl3 txt-center">
										<fmt:formatDate  value="${m.m_Date}" pattern="MM-yyyy" />
									</span>
								</div>
							</a>

							<div class="p-t-32">
								<h4 class="p-b-15">
									<a href="${mDetail }" class="ltext-108 cl2 hov-cl1 trans-04">
										${m.m_Category} | ${m.brand.b_Name } | ${m.m_Title}
									</a>
								</h4>

								<p class="stext-117 cl6" style=" text-overflow: ellipsis; overflow: hidden; white-space: nowrap; height: 20px; width: 600px;">
									${m.m_Comment }
								</p>

								<div class="flex-w flex-sb-m p-t-18">
									<span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
										<span>
											<span class="cl4">By</span> ${ m.m_ID }
											<span class="cl12 m-l-4 m-r-6">|</span>
										</span>

										<span>
											<fmt:formatDate  value="${m.m_Date}" pattern="yyyy" /> ${m.m_Category}
											<span class="cl12 m-l-4 m-r-6">|</span>조회 수 : ${m.m_Count }
										</span>

									<!-- 	<span>
											8 Comments
										</span> -->
									</span>

									<a href="${ mDetail }" class="stext-101 cl2 hov-cl1 trans-04 m-tb-10">
										더보기

										<i class="fa fa-long-arrow-right m-l-9"></i>
									</a>
								</div>
							</div>
						</div>
					</c:forEach>
					</c:otherwise> 
			</c:choose>
				
				
					</div>
				</div>

				<div class="col-md-4 col-lg-3 p-b-80" >
					<div class="side-menu">
						<!-- <div class="bor17 of-hidden pos-relative">
							<input class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55" type="text" name="search" placeholder="Search">

							<button class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04">
								<i class="zmdi zmdi-search"></i>
							</button>
						</div> -->

						<!-- <div class="p-t-55">
							<h4 class="mtext-112 cl2 p-b-33">
								상품
							</h4>

							<ul>
								<li class="bor18">
									<a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										의류
									</a>
								</li>

								<li class="bor18">
									<a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										화장품
									</a>
								</li>

								<li class="bor18">
									<a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										신상품
									</a>
								</li>

								<li class="bor18">
									<a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										남성
									</a>
								</li>

								<li class="bor18">
									<a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										여성
									</a>
								</li>
							</ul>
						</div> -->

						<!-- <div class="p-t-65">
							<h4 class="mtext-112 cl2 p-b-33">
								연관 상품
							</h4>

							<ul>
								<li class="flex-w flex-t p-b-30">
									<a href="#" class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
										<img src="/brocoli/resources/mainResources/images/product-min-01.jpg" alt="PRODUCT">
									</a>

									<div class="size-215 flex-col-t p-t-8">
										<a href="#" class="stext-116 cl8 hov-cl1 trans-04">
											모자 쓴 검은 옷
										</a>

										<span class="stext-116 cl6 p-t-20">
											19,000 (원)
										</span>
									</div>
								</li>

								<li class="flex-w flex-t p-b-30">
									<a href="#" class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
										<img src="/brocoli/resources/mainResources/images/product-min-02.jpg" alt="PRODUCT">
									</a>

									<div class="size-215 flex-col-t p-t-8">
										<a href="#" class="stext-116 cl8 hov-cl1 trans-04">
											흰 옷
										</a>

										<span class="stext-116 cl6 p-t-20">
											39,000 (원)
										</span>
									</div>
								</li>

								<li class="flex-w flex-t p-b-30">
									<a href="#" class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
										<img src="/brocoli/resources/mainResources/images/product-min-03.jpg" alt="PRODUCT">
									</a>

									<div class="size-215 flex-col-t p-t-8">
										<a href="#" class="stext-116 cl8 hov-cl1 trans-04">
											검은 옷
										</a>

										<span class="stext-116 cl6 p-t-20">
											17,000 (원)
										</span>
									</div>
								</li>
							</ul>
						</div> -->

						<div class="p-t-55">
							<h4 class="mtext-112 cl2 p-b-20">
								Archive
							</h4>
							<ul>
							<li class="p-b-7">
							<c:url var="Magazine" value="magazineView.mn"/>
									<a href="${Magazine }" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span >
										전체보기
										</span>
										&nbsp;&nbsp;&nbsp;
										 <span >
											
										</span> 
									</a>
								</li>
								<li class="p-b-7">
									<button  onclick="orderby1();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a1">
										January
										</span>
										&nbsp;&nbsp;&nbsp;
										 <span id='m1'>
											(${m1 })
										</span> 
									</button>
								</li>

								<li class="p-b-7">
									<button  onclick="orderby2();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a2">
										February
										</span>
									&nbsp;&nbsp;&nbsp;
										 <span id='m2'>
											(${m2 })
										</span > 
									</button>
								</li>

								<li class="p-b-7">
									<button  onclick="orderby3();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a3">
											March
										</span>
									&nbsp;&nbsp;&nbsp;
										 <span id='m3'>
											(${m3 })
										</span> 
									</button>
								</li>

								<li class="p-b-7">
									<button  onclick="orderby4();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a4">
											April
										</span>
									&nbsp;&nbsp;&nbsp;
										 <span id='m4'>
											(${m4 })
										</span> 
									</button>
								</li>

								 <li class="p-b-7">
									<button  onclick="orderby5();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a5">
											May
										</span>
									&nbsp;&nbsp;&nbsp;
										<span id='m5'>
											(${m5 })
										</span>
									</button>
								</li> 

								 <li class="p-b-7">
									<button onclick="orderby6();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a6">
											June
										</span>
										&nbsp;&nbsp;&nbsp;
										<span id='m6'>
											(${m6 })
										</span>
									</button>
								</li>

								<li class="p-b-7">
									<button onclick="orderby7();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a7">
											July
										</span>
										&nbsp;&nbsp;&nbsp;
										<span id='m7'>
											(${m7})
										</span>
									</button>
								</li>

								<li class="p-b-7">
									<button onclick="orderby8();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a8">
											August
										</span>
										&nbsp;&nbsp;&nbsp;
										<span id='m8'>
											(${m8 })
										</span>
									</button>
								</li>
								
								<li class="p-b-7">
									<button onclick="orderby9();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a9">
											September
										</span>
										&nbsp;&nbsp;&nbsp;
										<span id='m9'>
											(${m9 })
										</span>
									</button>
								</li>
								
								<li class="p-b-7">
									<button onclick="orderby10();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a10">
											October
										</span>
										&nbsp;&nbsp;&nbsp;
										<span id='m10'>
											(${m10 })
										</span>
									</button>
								</li>
								
								<li class="p-b-7">
									<button onclick="orderby11();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a11">
											November
										</span>
										&nbsp;&nbsp;&nbsp;
										<span id='m11'>
											(${m11 })
										</span>
									</button>
								</li>
								
								<li class="p-b-7">
									<button onclick="orderby12();" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span id="a12">
										December
										</span>
										&nbsp;&nbsp;&nbsp;
										<span id='m12'>
											(${m12 })
										</span>
									</button>
								</li>
							</ul>
						</div> 

						<!-- <div class="p-t-50">
							<h4 class="mtext-112 cl2 p-b-27">
								Tags
							</h4>

							<div class="flex-w m-r--5">
								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									의류
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									라이프 스타일
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									데님
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									스트릿 패션
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									악세서리
								</a>
							</div>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</section>	
	
		<%@ include file="All-Footer.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %>
	
<script src="/brocoli/resources/mainResources/vendor/magazine/magazine.js"></script>
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