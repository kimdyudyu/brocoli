<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Brocoli : Brand Request Collection Lead</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="/brocoli/resources/mainResources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/css/util.css">
<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/css/main.css">
<!--===============================================================================================-->
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>


<script
	src="/brocoli/resources/mainResources/vendor/jquery/jquery-3.2.1.min.js"></script>

</head>
<!-- Header -->
<header class="header-v4">

	<!-- 
    	작성자 : 문예림
    	작성일 : 2020-03-26
    	내용 : 헤더경로 입력(로그인)
     -->
	<!-- Header desktop -->
	<div class="container-menu-desktop">
		<!-- Topbar -->
		<div class="top-bar">
			<div class="content-topbar flex-sb-m h-full container">
				<div class="left-top-bar">Free shipping</div>
				<div id=one style="display: flex;">
					<div id= one style="display: flex;">
                    <div class="right-top-bar flex-w h-full" >
		                    <c:if test="${!empty sessionScope.loginUser && loginUser.mGrant eq 2}">
								<c:url var="ownerPage" value="ownerPage"/>
									<a href='${ownerPage}' class="flex-c-m trans-04 p-lr-25">오너페이지</a>
							</c:if>
					</div>

					<div class="right-top-bar flex-w h-full">
						<c:if test="${!empty sessionScope.loginUser && loginUser.mGrant eq 1}">
							<c:url var="adminPage" value="adminPage.ad" />
							<a href='${adminPage}' class="flex-c-m trans-04 p-lr-25">관리자페이지</a>
						</c:if>
					</div>

					<div class="right-top-bar flex-w h-full">
						<c:url var="Notice" value="bnlist.mn" />
						<a href="${Notice }" class="flex-c-m trans-04 p-lr-25"> 공지사항 </a>
					</div>
					
                  			
					
					<div class="right-top-bar flex-w h-full">
						<c:url var="FAQ" value="FAQView.mn" />
						<a href="${FAQ }" class="flex-c-m trans-04 p-lr-25"> 자주묻는질문 </a>
					</div>
					<div class="right-top-bar flex-w h-full">
						<c:if test="${empty sessionScope.loginUser }">
							<c:url var="loginPage" value="loginPage.mn" />
							<a href='${loginPage}' class="flex-c-m trans-04 p-lr-25">login</a>
						</c:if>
						<c:if test="${!empty sessionScope.loginUser }">
							<c:url var="logoutPage" value="logoutPage" />
							<a href='${logoutPage}' class="flex-c-m trans-04 p-lr-25">logout</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="wrap-menu-desktop how-shadow1">
			<nav class="limiter-menu-desktop container">

				<!-- Logo desktop -->
				<c:url var="MainPage" value="MainPage" />
				<c:url var="Rank" value="rankday.mn" />
				<c:url var="Brand" value="brandView.mn" />
				<c:url var="Product" value="productView.mn" />
				<c:url var="Magazine" value="magazineView.mn" />
				<c:url var="Contact" value="mContactView.mn" />
				<a href="${MainPage}" class="logo"> 
				<img src="/brocoli/resources/mainResources/images/icons/logo-01.png" alt="IMG-LOGO">
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">
						<li><a href="${MainPage }" id="header-color1">Home</a> 
									<!-- <ul class="sub-menu main-menu">
									<li><a href="index.jsp">Homepage 1</a></li>
									<li><a href="home-02.jsp">Homepage 2</a></li>
									<li><a href="home-03.jsp">Homepage 3</a></li>
								</ul>  --></li>


						<li class="label1" data-label1="hot"><a href="${Rank }" id="header-color2">RANK</a></li>

						<li><a href="${Brand }" id="header-color3">BRAND</a></li>

						<li><a href="${Product }" id="header-color4">SHOP</a></li>

						<li><a href="${Magazine }" id="header-color5">MAGAZINE</a></li>

						<li><a href="${Contact }" id="header-color6">Contact</a></li>
					</ul>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
						<i class="zmdi zmdi-search"></i>
					</div>


					<c:url var="headerCartList" value="cList.mn">
							<c:param name="ct_Mno" value="${loginUser.mNO}"></c:param>
					</c:url>
					
					<c:if test="${!empty sessionScope.loginUser }">
					
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11">
						<i class="zmdi zmdi-shopping-cart" onclick="location.href='${headerCartList}'"></i>
					</div>
					</c:if>
					<c:if test="${empty sessionScope.loginUser }">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11">
						<i class="zmdi zmdi-shopping-cart" onclick="location.href='${loginPage}'"></i>
					</div>
					</c:if>
					
					
					<c:if test="${!empty sessionScope.loginUser }">
						<c:url var="wishList" value="wishList.mn">
							<c:param name="w_Mno" value="${loginUser.mNO}"></c:param>
						</c:url>
					<a href="${wishList}"
						class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 "> 
						<i class="zmdi zmdi-favorite-outline"></i>
					</a>
					</c:if>
					<c:if test="${empty sessionScope.loginUser }">
					<a href="${loginPage }"
						class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11"> 
						<i class="zmdi zmdi-favorite-outline"></i>
					</a>
					</c:if>


					<div class="flex-c-m h-full p-lr-19">
						<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-sidebar">
							<i class="zmdi zmdi-menu"></i>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="${Main }"><img	src="/brocoli/resources/mainResources/images/icons/logo-01.png"	alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m m-r-15">
			<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
				<i class="zmdi zmdi-search"></i>
			</div>

			<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"	data-notify="2">
				<i class="zmdi zmdi-shopping-cart"></i>
			</div>

			<a href="#"	class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
				data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
			</a>
		</div>

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box"> <span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


	<!-- Menu Mobile -->
	<div class="menu-mobile">
		<ul class="topbar-mobile">
			<li>
				<div class="left-top-bar">Free shipping</div>
			</li>

			<li>
				<div class="right-top-bar flex-w h-full">
					<a href="${Notice }"	class="flex-c-m trans-04 p-lr-25"
						style="border-left: 0px solid black;"> 공지사항 </a> 
						<a href="${FAQ }" class="flex-c-m trans-04 p-lr-25"> 자주묻는질문 </a>
						<a href="${loginPage }" class="flex-c-m trans-04 p-lr-25"
						style="border-right: 0px solid black;"> Login </a>
				</div>
			</li>
		</ul>

		<ul class="main-menu-m">
			<li><a href="${Main }">Home</a> 
				<!--<ul class="sub-menu-m">
						<li><a href="index.jsp">Homepage 1</a></li>
						<li><a href="home-02.jsp">Homepage 2</a></li>
						<li><a href="home-03.jsp">Homepage 3</a></li>
					</ul>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span> --></li>

			<li><a href="${Rank }">Rank</a></li>
			<li><a href="${Brand }" class="label1 rs1"	data-label1="hot">Brand</a></li>

			<li><a href="${Product }">Shop</a></li>

			<li><a href="${Magazine }">Magazine</a></li>

			<li><a href="${Contact }">Contact</a></li>
		</ul>
	</div>
	<!-- Modal Search -->
	<!-- <form action="searchPage.mn" method="get"> -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<div class="container-search-header">
			<button
				class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
				<img
					src="/brocoli/resources/mainResources/images/icons/icon-close2.png"
					alt="CLOSE">
			</button>

			<div class="wrap-search-header flex-w p-l-15" id="alpreah_input">
				<button class="flex-c-m trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
				<input class="plh3" type="text" placeholder="Search..." id="keyword" name="keyword">
			</div>
			<!-- <input class="plh3" id="searchbar" type="text" name="search" placeholder="Search..."> -->
		</div>
	</div>
	<!-- </form> -->
</header>
				
				<script>
					/* $('#searchbar').keyup(function(e) {
						if (e.keyCode == 13) {
								location.href = "${SearchPage}";
						}
					}); */
				</script>
				<body>
					<script>
						$(document).ready(function() {
								$("#alpreah_input").keydown(function(key) {
									
												if (key.keyCode == 13) {
										var keyword = $("#keyword").val();
										console.log(keyword);
										if(keyword == null || keyword == ""){
											alert("검색어를 입력해주세요.")
										}else{
													location.href = "searchPage.mn?keyword="+keyword;
										}
								}
							});
						});
					</script>
</body>
</html>