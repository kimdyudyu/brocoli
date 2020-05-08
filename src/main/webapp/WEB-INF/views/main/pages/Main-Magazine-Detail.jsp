<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-Cart.jsp" %>

<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* /* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
} */

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
/* .fade {
  -webkit-animation-name: fade;
   -webkit-animation-duration: 1.5s; 
  animation-name: fade; 
   animation-duration: 1.5s; 
} */

/* @-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
} */

/* @keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
} */

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}


</style>
</head>
<body class="animsition">
	



	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<!-- <a href="/brocoli/WEB-INF/views/main/Main.jsp" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<a href="/brocoli/WEB-INF/views/main/pages/Main-Magazine.jsp" class="stext-109 cl8 hov-cl1 trans-04">
				Magazine
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				프레젠테이션 | [Brocoli 매거진] 운동도 전부 템빨인 거 다 알지?
			</span> -->
		</div>
	</div>


	<!-- Content page -->
	<section class="bg0 p-t-52 p-b-20">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-45 p-r-0-lg">
						<!--  -->
						<div class="wrap-pic-w how-pos5-parent">
						
						<div class="slideshow-container">

<div class="mySlides " center>
  
  <img src="/brocoli/resources/magazine-Img/${m.mFile.mf_Img1_ReName }" style="width:100%">
  
</div>

<div class="mySlides " center>
  <img src="/brocoli/resources/magazine-Img/${m.mFile.mf_Img2_ReName }" style="width:100%">
 
</div>

<div class="mySlides " center>
  <img src="/brocoli/resources/magazine-Img/${m.mFile.mf_Img3_ReName }" style="width:100%">
  
</div>
<c:if test="${ m.mFile.mf_Img4_ReName != NULL}">
<div class="mySlides " center>
  <img src="/brocoli/resources/magazine-Img/${m.mFile.mf_Img4_ReName }" style="width:100%">
</div>
  </c:if>
  <c:if test="${ m.mFile.mf_Img5_ReName != NULL}">
<div class="mySlides " center>
  <img src="/brocoli/resources/magazine-Img/${m.mFile.mf_Img5_ReName }" style="width:100%">
</div>
</c:if>
<c:if test="${ m.mFile.mf_Img6_ReName != NULL}">
<div class="mySlides " center>
  <img src="/brocoli/resources/magazine-Img/${m.mFile.mf_Img6_ReName }" style="width:100%">
</div>
</c:if>
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <!-- <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span>  -->
</div>
						
						<%-- 	<img src="/brocoli/resources/magazine-Img/${m.mFile.mf_Img1_ReName }" alt="IMG-BLOG"> --%>

							<div class="flex-col-c-m size-123 bg9 how-pos5">
								<span class="ltext-107 cl2 txt-center">
									<fmt:formatDate  value="${m.m_Date}" pattern="dd" />
								</span>

								<span class="stext-109 cl3 txt-center">
									<fmt:formatDate  value="${m.m_Date}" pattern="MM-yyyy" />
								</span>
							</div>
						</div>

						<div class="p-t-32">
							<span class="flex-w flex-m stext-111 cl2 p-b-19">
								<span>
									<span class="cl4">By</span> ${ m.m_ID }  
									<span class="cl12 m-l-4 m-r-6">|</span>
								</span>

								<span>
									<fmt:formatDate  value="${m.m_Date}" pattern="yyyy" /> ${m.m_Category}
									<span class="cl12 m-l-4 m-r-6">|</span>조회 수 : ${m.m_Count }
								</span>

								<!-- <span>
									 커플, 애슬레저, 2020S/S    
									<span class="cl12 m-l-4 m-r-6">|</span>
								</span> -->

								<!-- <span>
									8 Comments
								</span> -->
							</span>

							<h4 class="ltext-100 cl2 p-b-28" style="font-size: 28px">
								${m.m_Category} | ${m.brand.b_Name } | ${m.m_Title}
							</h4>

							<p class="stext-117 cl6 p-b-26">
								${fn:replace(m.m_Comment, replaceChar, "<br/>")}
							
							</p>
						</div>

						<div class="flex-w flex-t p-t-16">
							<!-- <span class="size-216 stext-116 cl8 p-t-4">
								Tags
							</span> -->

							<div class="flex-w size-217">
								<!-- <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									커플
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									애슬레저
								</a> -->
							</div>
						</div>

						
						<div class="p-t-40">
							<!-- <h5 class="mtext-113 cl2 p-b-12">
								댓글남기기
							</h5> -->

						

							<form>
								<!-- <div class="bor19 m-b-20">
									<textarea class="stext-111 cl2 plh3 size-124 p-lr-18 p-tb-15" name="cmt" placeholder="댓글을 입력하세요"></textarea>
								</div> -->

	
								<!-- <button class="flex-c-m stext-101 cl0 size-125 bg3 bor2 hov-btn3 p-lr-15 trans-04" style="color : snow;">
									댓글 등록
								</button> -->
							</form>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-lg-3 p-b-80">
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
					
						<div class="p-t-65">
							<h4 class="mtext-112 cl2 p-b-33" >
								연관 상품
							</h4>

							<ul>
							<c:forEach var="p" items="${pList }" begin="0" end="2">
							<c:url var="productDetail" value="productDetail.mn">
				           		<c:param name="p_NO" value="${ p.p_NO }"/>
				   	        </c:url>
								<li class="flex-w flex-t p-b-30">
									<a href="${productDetail}" class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
										<img src="/brocoli/resources/product-Img/${p.pfList.pf_Img1_ReName }" width="90px;" height="110px;" alt="PRODUCT">
									</a>

									<div class="size-215 flex-col-t p-t-8">
										<a href="#" class="stext-116 cl8 hov-cl1 trans-04">
											${p.p_Name }
										</a>

										<c:if test="${p.p_Sail_Price eq '0' }">
										<span class="stext-116 cl6 p-t-20">
											${p.p_Price } (원)
										</span>
											</c:if>
											<c:if test="${p.p_Sail_Price ne '0'}">
											<span class="stext-116 cl6 p-t-20">${p.p_Sail_Price } (원)</span>
											</c:if>
									</div>
								</li>
							</c:forEach>
								<!-- <li class="flex-w flex-t p-b-30">
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
								</li> -->
							</ul>
						</div>

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
    <script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
      showSlides(slideIndex += n);
    }

    function currentSlide(n) {
      showSlides(slideIndex = n);
    }

    function showSlides(n) {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("dot");
      if (n > slides.length) {slideIndex = 1}    
      if (n < 1) {slideIndex = slides.length}
      for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";  
      }
      for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
      }
      slides[slideIndex-1].style.display = "block";  
      dots[slideIndex-1].className += " active";
    }
    </script>
    <script src="/brocoli/resources/mainResources/vendor/magazine/magazine.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/js/materialize.min.js"></script>
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