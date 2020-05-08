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
		clear: both;
	    background: rgb(247, 247, 247);
	    border: 1px solid rgb(199, 199, 199);
	    padding: 1%;
	    text-align:center;
	}
	
	.btn-term{
		background-color:white;
		border: 1px solid #6666;
	    border-radius: 5px;
	    padding: 4px;
	    }
    
	 .btn-term:hover{
	 	background: #BDBDBD;
	 }
	 
	 .datelist{
	 border:1px solid #6666;
	 margin-top:-1%;
	 }
	 
	 .datesearch{
		 border: 1px solid #c3bdbd; 
		 padding: 4px; 
		 margin-left: 10px; 
		 margin-top: -1%; 
		 border-radius: 5px;
		 color:white;
		 box-shadow: 0 -12px 43px #999 inset, 0 -30px 2px #444 inset;
		 
	 }
	 .datesearch:hover{
	 	background: black;
	 }
	 .ordertable{
	 	border:1px solid #6666;
	 	width:1100px;
	 	margin:0px auto;
	 	text-align:center;
	 	margin-bottom:80px;
	 }
	 
	 .orderdetail{
		box-shadow: 0 -2px 20px #999 inset, 0 -5px 5px #444 inset;
	 	border:1px solid #6666;
	 	background: #999999;
	 	color:white;
		font-size:15px;
		border-top:3px solid black;
		height: 35px;
	 }
	 .trackview{
		 border: 1px solid #c3bdbd; 
		 padding: 4px; 
		 margin-left: 10px; 
		 margin-top: -1%; 
		 border-radius: 5px;
	 }
	 
.ticon{
width: 70px;
height: 70px;
}
.inner{position:relative;width:1100px;min-width:1100px;margin:0 auto}
.contTitArea + .tabList{margin-top:46px}
.contTitArea{padding-top:86px}
.contTitArea.type01 + .contArea{margin-top:46px}
.contTitArea h3{color:#2a2a2a;font-size:56px;text-align:center}
.contTitArea h3 span{color:#2a2a2a;font-size:56px;font-family:'NotoSansM';vertical-align:baseline}
.contTitArea p{margin-top:13px;color:#54585a;font-size:20px;text-align:center}
/* Step */
.contStep{margin:68px 0 45px 0}
.contStep li{float:left;position:relative;width:149px;height:149px;margin-left:168px;background:url(../images/reservation/bg_step_circle.png) no-repeat 0 0}
.contStep li.on{background-position:0 -149px}
.contStep li span{display:block;position:relative;padding-top:40px;text-align:left}
.contStep li.on span{color:#da291c}
.contStep li.item01{margin-left:0}
i.fa{

}
</style>

   <!--  <link rel="stylesheet" type="text/css" href="css/tp.css" /> -->
   

</head>
<body class="animsition">
 <form action="trackprocess.mn" id="frm1">
 <c:forEach var="Orders" items="${list }">
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/resources/mainResources/images/tracklist.jpg'); position:relative;" id="">
		<h2 class="ltext-105 cl0 txt-center" style="color:white;">
			주문정보
		</h2>
	</section>

	<div class="container">
	
		<!-- contents -->
		<div id="contents">
			<div class="inner">
				<div class="contTitArea">
					<div style="padding-rihgt: 50px;  margin-bottom: 5px;">
						<h4 style="width: 100%; border-bottom: 1px solid #999; padding-bottom: 5px;">
							<strong>주문 상세보기</strong>
						</h4>
					</div>
					<div>
					<c:if test="${Orders.or_Status eq '1'}">
					<ul class="contStep goodsStep" style="margin-top: 30px;">
						<li class="item01" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Monitor-icon.png"  /><span>주문 완료</span></li>
                        <li class="item02" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Truck-icon1.png" style="opacity: 0.3;" /><span>상품 준비중</span></li>
                        <li class="item03" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Truck-icon2.png" style="opacity: 0.3;" /><span>배송 시작</span></li>
                        <li class="item04" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/hand.png" style="opacity: 0.3;"/><span>배송 완료</span></li>
					</ul>
					</c:if> 
					
					<c:if test="${Orders.or_Status eq 2}">
					<ul class="contStep goodsStep" style="margin-top: 30px;">
						<li class="item01" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Monitor-icon.png" style="opacity: 0.3;" /><span>주문 완료</span></li>
                        <li class="item02" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Truck-icon1.png" /><span>상품 준비중</span></li>
                        <li class="item03" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Truck-icon2.png" style="opacity: 0.3;" /><span>배송 시작</span></li>
                        <li class="item04" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/hand.png" style="opacity: 0.3;"/><span>배송 완료</span></li>
					</ul>
					</c:if>
					
					<c:if test="${Orders.or_Status eq 3}">
					<ul class="contStep goodsStep" style="margin-top: 30px;">
						<li class="item01" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Monitor-icon.png" style="opacity: 0.3;" /><span>주문 완료</span></li>
                        <li class="item02" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Truck-icon1.png" style="opacity: 0.3;" /><span>상품 준비중</span></li>
                        <li class="item03" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Truck-icon2.png" /><span>배송 시작</span></li>
                        <li class="item04" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/hand.png" style="opacity: 0.3;"/><span>배송 완료</span></li>
					</ul>
					</c:if>
					
					
					<c:if test="${Orders.or_Status eq 4}">
					<ul class="contStep goodsStep" style="margin-top: 30px;">
						<li class="item01" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Monitor-icon.png" style="opacity: 0.3;" /><span>주문 완료</span></li>
                        <li class="item02" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Truck-icon1.png" style="opacity: 0.3;" /><span>상품 준비중</span></li>
                        <li class="item03" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/Truck-icon2.png" style="opacity: 0.3;" /><span>배송 시작</span></li>
                        <li class="item04" id="item1"><img class="ticon" src="/brocoli/resources/mainResources/images/icons/hand.png" /><span>배송 완료</span></li>
					</ul>
					</c:if>
					</div>
					
				</div>
			</div>
		</div>
		<!-- 끝 -->


		
		<div class="row" style="    width: 100%; margin-top: 50px;">
			<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50"
				style="margin-left: -1%;">
				<div class="m-l-25 m-r--38 m-lr-0-xl" style="width: 170%;">
					<div class="wrap-table-shopping-cart">
						<table class="table-shopping-cart">
							<tr class="table_head">
								<th style="width: 8%; text-align: center;">주문번호</th>
								<th style="width: 8%; text-align: center;">주문일자</th>
								<th style="width: 10%; text-align: center;">이미지</th>
								<th style="width: 20%; text-align: center;">상품정보</th>
								<th style="width: 8%; text-align: center;">판매금액</th>
								<th style="width: 8%; text-align: center;">회원 할인</th>
								<th style="width: 8%; text-align: center;">적립금</th>
								<th style="width: 6%; text-align: center;">수량</th>
								<th style="width: 8%; text-align: center;">총 금액</th>
								<th style="width: 8%; text-align: center;">상태</th>
								<th style="width: 8%; text-align: center;">확인</th>
							</tr>
							<tr>
								<td style="text-align:center;">${ Orders.or_NO }</td>
								<input type="hidden" name="or_No" value="${ Orders.or_NO }">
									<td style="text-align:center;">${ Orders.or_Date }</td>
									<td style="text-align:center;"><img src="/brocoli/resources/product-Img/${Orders.pOptionlist.pList.pfList.pf_Img1_ReName}" alt="IMG" style="padding: 7px; width: 100px; height: 120px;"></td>
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
								<td style="text-align: center;">
									<button class="ord-btn" onclick="test1();">
										<strong>배송 추적</strong>
									</button>

								</td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<div class="container" style="margin-bottom: 100px;">
			<div class="flex-w flex-tr">
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								<strong>결제정보</strong>
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								<strong>결제수단 :</strong>
							</p>
							<p class="stext-115 cl6 size-213 p-t-18" style="margin-left: 10px; padding-top: 5px;">
									(PAYCO) 카드+적립금 / 일시불 30034731
							</p>
						</div>

					</div>
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								<strong>최종 결제정보</strong>
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								<strong>주문합계 :</strong> ${ Orders.pOptionlist.pList.p_Price } 원
							</p>
							<p class="stext-115 cl6 size-213 p-t-18" style="color: #717fe0;">
								<strong style="color: #888888;">할인합계 :</strong>  ${ Orders.pOptionlist.pList.p_Sail_Price }원
							</p>
							<p class="stext-115 cl6 size-213 p-t-18">
								<strong>결제 수수료:</strong> 0원
							</p>
							<p class="stext-115 cl6 size-213 p-t-18">
								<strong>최종 결제금액 :</strong>${ Orders.or_Price }원
							</p>

						</div>
					</div>

				</div>

			<div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
				<div class="flex-w w-full p-b-42">
					<span class="fs-18 cl5 txt-center size-211"> <span
						class="lnr lnr-map-marker"></span>
					</span>

					<div class="size-212 p-t-2">
						<span class="mtext-110 cl2"> 
							<strong>배송지 정보</strong>
						</span>

						<p class="stext-115 cl6 size-213 p-t-18">
							<strong>이름 :</strong> ${loginUser.mName }
						</p>
						<p class="stext-115 cl6 size-213 p-t-18">
							<strong>연락처 :</strong> ${loginUser.phone }
						</p>
						<p class="stext-115 cl6 size-213 p-t-18">
							<strong>배송지 주소 :</strong>
						</p>
						<p class="stext-115 cl6 size-213 p-t-18"
							style="margin-left: 10px; padding-top: 5px;">
							${loginUser.address }
						</p>
						<p class="stext-115 cl6 size-213 p-t-18">
							<strong>배송 메시지 :</strong> ${Orders.or_Address }
						</p>
					</div>
				</div>
			</div>

		</div>
		<button onclick="history.go(-1); return false;"><strong>< 돌아가기</strong></button>
</div>
</c:forEach>

<script>

function test1(){
	$("#frm1").attr("action","mytrackDetail.mn").submit();
}


</script>



</form>



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
<!-- 	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').jsp();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').jsp();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').jsp();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	</script> -->
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