<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <%@ include file="All-Header.jsp" %>
    <%@ include file="All-Sidebar.jsp" %>
    <%@ include file="All-Cart.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %>

	
<style>
	#ordersearch{
	    padding-top: 1%;
	    text-align:center;
	    margin:2% auto;
	}
	
	.btn-term{
		background-color:white;
		border: 1px solid #6666;
	    border-radius: 5px;
	    padding: 4px;
	    color: #555;
	    }
    
	 .btn-term:hover{
	 	background: #BDBDBD;
	 	
	 }
	 
	 .datelist{
	 border:1px solid #6666;
	 margin-top:-1%;
	 }
	 
	 .datesearch{
	     border: 1px solid #3333;
	    border-radius: 5px;
	    padding: -1px;
	    font-size: 14px;
	    padding: 4px 7px 4px 7px;
	    font-family:Poppins-Bold;
	    color: #555;
		 
	 }
	 .datesearch:hover{
	 	background: #BDBDBD;
	 }
	 .ordertable{
	 	width:1000px;
	 	margin:0px auto;
	 	text-align:center;
	 	margin-bottom:80px;
	 }
	 
	 .orderdetail{
	    border-bottom:2px solid black;
		font-size:15px;
		height: 35px;
	 }
	 .orderview{
		 border: 1px solid #c3bdbd; 
		 padding: 4px; 
		 margin-left: 10px; 
		 margin-top: -1%; 
		 border-radius: 5px;
	 }
	 .ord-btn{
	     border: 1px solid #3333;
	    border-radius: 5px;
	    padding: -1px;
	    font-size: 13px;
	    padding: 4px 7px 4px 7px;
	    color: #555;
	    margin-bottom: 3px;
    }
    .ord-btn:hover{
    	background:#BDBDBD;
    }
	 
   @media (max-width: 1600px)
	.order-search {
    max-width: 1200px;
	}

</style>
</head>

<body class="animsition">
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/resources/mainResources/images/order.png'); position:relative;" id="">
		<h2 class="ltext-105 cl0 txt-center" style="color:white;">
			주문현황
		</h2>
	</section>
     
    <br><br>
	<!--  좌측 메뉴바 -->
	<!-- 상단 주문기간 검색 -->
	
	<div class="container">
	
	<div style=" margin:15px auto; border-bottom:1px solid #666">
	<label style=" display:inline-block; font-size:20px;"><b>주문 정보</b></label>
	</div>
	


	<div id="ordersearch" class="order-search" >
	
	
	<span style="float:left; width: 150px; margin-left:-40px;">&nbsp;&nbsp;기간별 조회</span>
	
	<div style="float:left; margin-top: -0.5%; display: inline-block;">
	<button class="btn-term" onclick="location.href='selectDetail.mn?type=day'"><strong>&nbsp;1주일&nbsp;</strong></button>
	<button class="btn-term" onclick="location.href='selectDetail.mn?type=month'"><strong>&nbsp;1개월&nbsp;</strong></button>
	<button class="btn-term" onclick="location.href='selectDetail.mn?type=t_month'"><strong>&nbsp;3개월&nbsp;</strong></button>
	<button class="btn-term" onclick="location.href='selectDetail.mn?type=s_month'"><strong>&nbsp;6개월&nbsp;</strong></button>
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
	
	</div>
	<form action="searchDetail.mn">
	<div style="margin-top:-0.5%;">
	<input type="date" name="start" class="datelist" style="display:inline-block;">
	~
	<input type="date" name="end" class="datelist" style="display:inline-block;">
	
	<button class="datesearch" ><strong>조회하기</strong></button>
	</div>
	</form>	
	<hr>
	</div>
	<!-- 끝 -->
   
   
			<div class="row" style="padding: 15px;">
							<table class="table-shopping-cart">
								<tr class="table_head" >
									<th style="width:8%; text-align:center;">주문번호</th>
									<th style="width:8%; text-align:center;">주문일자</th>
									<th style="width:10%; text-align:center;">이미지</th>
									<th style="width:20%; text-align:center;">상품정보</th>
									<th style="width:8%; text-align:center;">판매금액</th>
									<th style="width:8%; text-align:center;">회원 할인</th>
									<th style="width:8%; text-align:center;">적립금</th>
									<th style="width:6%; text-align:center;">수량</th>
									<th style="width:8%; text-align:center;">총 금액</th>
									<th style="width:8%; text-align:center;">상태</th>
									<th style="width:8%; text-align:center;">확인</th>
								</tr>
						         <c:forEach var="Orders" items="${list }">
								<tr>
									<td style="text-align:center;">${ Orders.or_NO }</td>
									<td style="text-align:center;">${ Orders.or_Date }</td>
									<td style="text-align:center;"><img src="/brocoli/resources/product-Img/${Orders.pOptionlist.pList.pfList.pf_Img1_ReName}" alt="IMG" style="width: 120px; padding: 11px; height: 140px;"></td>
									<td style="text-align:left;">
										<ul>
											<li>${ Orders.or_Pname }</li>
											<li>${ Orders.or_Option1 }</li>
											<li>${ Orders.or_Option2 }</li>
										</ul>
									</td>
									<td style="text-align:center;"><strike>${ Orders.pOptionlist.pList.p_Price }</strike>
																	   <br>${ Orders.pOptionlist.pList.p_Last_Price }</td>
									<td style="text-align:center;">- ${ Orders.pOptionlist.pList.p_Sail_Price }</td>
									<td style="text-align:center;">${ Orders.or_Price/100 }</td>
									<td style="text-align:center;">${ Orders.or_Amount }</td>
									<td style="text-align:center;">${ Orders.or_Price }</td>
									<td style="text-align: center; font-size: 13px; color: #555;">
						                   <strong>
					                       <c:if test="${Orders.or_Status eq 1}">
					                          <span style="color:black;">주문완료</span>
					                       </c:if>
					                       <c:if test="${Orders.or_Status eq 2}">
					                          <span style="color:black;">상품준비중</span>
					                       </c:if>
					                       <c:if test="${Orders.or_Status eq 3}">
					                          <span style="color:black;">상품배송중</span>
					                       </c:if>
					                       <c:if test="${Orders.or_Status eq 4}">
					                          <span style="color:black;">배송완료</span>
					                       </c:if>
					                        <c:if test="${Orders.or_Status eq 5}">
					                          <span style="color:blue;">구매확정</span>
					                       </c:if>
					                        <c:if test="${Orders.or_Status eq 6}">
					                          <span style="color:red;">환불 진행 중</span>
					                       </c:if>
					                        <c:if test="${Orders.or_Status eq 7}">
					                          <span style="color:red;">교환 진행 중</span>
					                       </c:if>
					                       </strong>
						              </td>
						              <br>
									<td style="text-align:center;">
									<button class="ord-btn" onclick="location.href='trackprocess.mn?or_No=${ Orders.or_NO }'"><strong>상세 보기</strong></button>
									<button class="ord-btn" onclick="location.href='my_p_change.mn?or_No=${ Orders.or_NO }'" style="margin-right: 0px; padding: 3.5px;"><strong>교환</strong></button>
									<button class="ord-btn" onclick="location.href='my_p_reject.mn?or_No=${ Orders.or_NO }'" style="margin-right: 0px; padding: 3.5px;"><strong>반품</strong></button>
									<button class="ord-btn" onclick="location.href='productDetail.mn?p_NO=${ Orders.pOptionlist.pList.p_NO} &or_Mno=${ Orders.or_Mno}&type=1'"><strong>리뷰 작성</strong></button>
									</td>
								</tr>
								
                             </c:forEach>
							</table>
			</div>
							<br><br><br><br>
		
	</div>
	
	
	<%@ include file="All-Footer.jsp" %>
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
   
   	<script src="/brocoli/resources/mainResources/js/main.js"></script>	
</body>
</html>