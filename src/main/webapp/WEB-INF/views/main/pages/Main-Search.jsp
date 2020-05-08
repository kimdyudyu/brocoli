<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% String keyword = request.getParameter("keyword"); %>
<% String keyword2 = request.getParameter("keyword2"); %>
<!DOCTYPE html>
<html lang="ko">
	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-Cart.jsp" %>
	

<link rel="stylesheet" type="text/css" href="/brocoli/resources/mainResources/css/SRCSS.css">
<body class="animsition">

   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/resources/mainResources/images/bg-02.jpg');">
      <h2 class="ltext-105 cl0 txt-center" style="color:white">
         검색
      </h2>
   </section>   
   <!-- Product -->
   <div class="bg0 m-t-23 p-b-140">
      <div class="container">
      <h2 style="margin-top: 50px;"><%=keyword %> 의 검색 결과 : ${plus } 건이 검색되었습니다.</h2>
         <div class="flex-w flex-sb-m p-b-52" >
         <div class="flex-w flex-l-m filter-tope-group m-tb-10" >
               	<label style="font-size:20px;">결과 내 재검색</label>&nbsp;&nbsp;&nbsp;
               <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
                  <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
                  <!-- <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i> -->
                  Search
			
               </div>
            </div>
            <div class="flex-w flex-c-m m-tb-10">
               

               
            </div>
            
            <!-- Search product -->
            <div class="dis-none panel-search w-full p-t-10 p-b-15" >
            <form action="searchPage2.mn" method="get">
               <div class="bor8 dis-flex p-l-15" >
                  <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
                     <i class="zmdi zmdi-search"></i>
                  </button>
					<input type="hidden" name="keyword" value="<%=keyword %>" />
                  <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" id="keyword2" name="keyword2" placeholder="Search" required>
               </div>   
			</form>
            </div>
            
            
         </div>
         
  <!-- 브랜드 시작 -->
  <section class="brlist wrap-filter flex-w ">
                  <div class="filter-col1  " style="width:100%;">
                
         <div>
			 	<label style="font-size:30px;">브랜드</label>
			</div>
         <hr style="border: 1px solid grey;">
         <div class="brandSR">
         <c:choose>
					<c:when test="${fn:length(bList) == 0}">
					<div style="margin-left: 250px; margin-top: 150px;" class="p-b-63">
						<h1>조회결과가 없습니다.</h1>
						</div>
					</c:when>
					<c:otherwise>
         <ol class="olf">
         <c:forEach var="b" items="${bList }">
           <c:url var="bproduct" value="bproduct.mn">
  				<c:param name="b_Name" value="${ b.b_Name }"/>
       		</c:url>
         	<li class="hover"><button onclick="location.href='${bproduct }'"><img class="img3" src="/brocoli/resources/brandLogo/${b.b_Logo_ReName}" /><br><p >${b.b_Name }</p></button></li>
         	<!-- <li><button><img src="/brocoli/resources/mainResources/images/adidas.jpg" /><br><p>adidas</p></button></li>
         	<li><button><img src="/brocoli/resources/mainResources/images/puma.png" /><br><p>PUMA</p></button></li>
         	<li><button><img src="/brocoli/resources/mainResources/images/lecoq.png" /><br><p>le coq</p></button></li>
         	<li><button><img src="/brocoli/resources/mainResources/images/dynafit.png" /><br><p>DYNAFIT</p></button></li>
         	
         	<li><button><img src="/brocoli/resources/mainResources/images/nike.png" /><br><p>Nike</p></button></li>
         	<li><button><img src="/brocoli/resources/mainResources/images/adidas.jpg" /><br><p>adidas</p></button></li>
         	<li><button><img src="/brocoli/resources/mainResources/images/puma.png" /><br><p>PUMA</p></button></li>
         	<li><button><img src="/brocoli/resources/mainResources/images/lecoq.png" /><br><p>le coq</p></button></li>
         	<li><button><img src="/brocoli/resources/mainResources/images/dynafit.png" /><br><p>DYNAFIT</p></button></li> -->
         </c:forEach>
         	</c:otherwise>
         	</c:choose>
         	</ol>
         </div>
       </div>
       </section>
<hr style="border: 1px solid grey;">
<!--  브랜드 끝 -->
<!-- 상품 시작 -->
<div>
<label style="font-size:30px;">상품</label>
</div>


					<c:choose>
					<c:when test="${fn:length(pList) == 0}">
					<div style="margin-left: 250px; margin-top: 100px;" class="p-b-63">
						<h1>조회결과가 없습니다.</h1>
						</div>
					</c:when>
					<c:otherwise>
          <div class="row isotope-grid">
         <c:forEach var="ap" items="${ pList }">
         
         	<c:url var="productDetail" value="productDetail.mn">
           		<c:param name="p_NO" value="${ ap.p_NO }"/>
   	        </c:url>
   	        <button onclick="location.href='${productDetail}'">
            <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${ap.p_Bcategory} ${ap.p_Scategory}">
               <div class="block2">
                  <div class="block2-pic hov-img0" id="productModal">
                     <img src="/brocoli/resources/product-Img/${ap.pfList.pf_Img1_ReName }" alt="IMG-PRODUCT" style="height:378px;">
				<input type="hidden" id="productNo" value="${ap.p_NO }">
                    <!--  <a href="#" id="ModalView" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                     	미리보기
                     </a> -->
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="${productDetail }" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           ${ap.p_Name }
                        </a>

                        <span class="stext-105 cl3">
                           ${ap.p_Last_Price }원
                        </span>
                     </div>
						
						
					<%--  <c:url var="wInsert" value="wInsert.mn">
					 <c:param name="w_P_NO" value="${ ap.p_NO }"/>
					 	<c:param name="w_Mno" value="${ loginUser.mNO }"/>
					 </c:url>	
                     <div class="block2-txt-child2 flex-r p-t-3">
                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                           <img class="icon-heart1 dis-block trans-04" src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png" alt="ICON" onclick="location.href='${wInsert}'">
                           <img class="icon-heart2 dis-block trans-04 ab-t-l" src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png" alt="ICON" onclick="location.href='${wInsert}'">
                        </a>
                     </div> --%>
                  </div>
               </div>
            </div>
            </button>
		</c:forEach>
		
         </div>

         <!-- Load more -->
         <div class="flex-c-m flex-w w-full p-t-45">
            <a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
               Load More
            </a>
         </div>
         </c:otherwise>
		</c:choose>
      </div>
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
   <script src="/brocoli/resources/mainResources/vendor/daterangepicker/moment.min.js"></script>
   <script src="/brocoli/resources/mainResources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
   <script src="/brocoli/resources/mainResources/vendor/slick/slick.min.js"></script>
   <script src="/brocoli/resources/mainResources/js/slick-custom.js"></script>
<!--===============================================================================================-->
   <script src="/brocoli/resources/mainResources/vendor/parallax100/parallax100.js"></script>
   <script>
        $('.parallax100').parallax100();
   </script>
<!--===============================================================================================-->
   <script src="/brocoli/resources/mainResources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
   <script>
      $('.gallery-lb').each(function() { // the containers for all your galleries
         $(this).magnificPopup({
              delegate: 'a', // the selector for gallery item
              type: 'image',
              gallery: {
                 enabled:true
              },
              mainClass: 'mfp-fade'
          });
      });
   </script>
<!--===============================================================================================-->
   <script src="/brocoli/resources/mainResources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
   <script src="/brocoli/resources/mainResources/vendor/sweetalert/sweetalert.min.js"></script>
   <script>
      $('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
         e.preventDefault();
      });

      $('.js-addwish-b2').each(function(){
         var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-b2');
            $(this).off('click');
         });
      });

      $('.js-addwish-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-detail');
            $(this).off('click');
         });
      });

      /*---------------------------------------------*/

      $('.js-addcart-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to cart !", "success");
         });
      });
   
   </script>
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