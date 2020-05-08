<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="pages/All-Header.jsp" %>
<%@ include file="pages/All-Sidebar.jsp" %>
<%@ include file="pages/All-Cart.jsp" %>
<%@ include file="pages/All-Section-slide.jsp" %>
<style>
#header-color1{
	color:#6c7ae0
}
.slick3-dots .slick-active .slick3-dot-overlay {
	border-color:white;
}
.slick3-dots li img {
	display:none;
}

</style>
</head>
<body class="animsition">


	<!-- Banner -->
	<div class="sec-banner bg0 p-t-95 p-b-55">
		<div class="container">
			<div class="row">
			
				<c:forEach var="b" items="${ Auctionlist }"> 
				<c:if test="${b.ac_Banner_NO<3}"> 
				<div class="col-md-6 p-b-30 m-lr-auto">
				
					<c:url var="bproduct" value="bproduct.mn">
						<c:param name="b_Name" value="${ b.ac_Brand }"/>
					</c:url>
					<div class="block1 wrap-pic-w">
						<img src="/brocoli/resources/Auction-Img/${b.ac_Img_Rename }" alt="IMG-BANNER" style=" height:442px; width: 658px;">
						<a href="${bproduct}" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									${b.ac_Brand}
								</span>

								<span class="block1-info stext-102 trans-04">
									${b.ac_Comment}
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									Shop Now
								</div>
							</div>
						</a>
					</div>
				</div>
				</c:if>
				<c:if test="${b.ac_Banner_NO>=3 }">
				  <div class="col-md-6 col-lg-4 p-b-30 m-lr-auto">
				  	<c:url var="bproduct" value="bproduct.mn">
						<c:param name="b_Name" value="${ b.ac_Brand }"/>
					</c:url>
					<div class="block1 wrap-pic-w">
						<img src="/brocoli/resources/Auction-Img/${b.ac_Img_Rename}" alt="IMG-BANNER" style="height: 227px; width: 427px;">
						<a href="${bproduct}" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									${b.ac_Brand}
								</span>

								<span class="block1-info stext-102 trans-04">
									${b.ac_Comment}
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									Shop Now
								</div>
							</div>
						</a>
					</div>
				</div> 
				</c:if>
			</c:forEach> 

			</div>
		</div>
	</div>
	

	<!-- Product -->
	<section class="bg0 p-t-23 p-b-130">
		<div class="container">
			<div class="p-b-10">
				<h3 class="ltext-103 cl5">
					랭킹TOP 20<br><br>
				</h3>
			</div>

			<div class="row isotope-grid">
			<c:forEach var="r" items="${ RankList }"> 
			
				<!-- 상품 상세 페이지로 가는 url -->
           		<c:url var="productDetail" value="productDetail.mn">
           			<c:param name="p_NO" value="${ r.p_NO }"/>
           			<c:param name="or_Mno" value="${loginUser.mNO }"/>
   	        	</c:url>
				<!-- -------------------- -->
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					
					<div class="block2">
				
						<div class="block2-pic hov-img0 label-new" data-label="New" id="productModal0">
							<img src="/brocoli/resources/product-Img/${r.pfList.pf_Img1_ReName }" style="height:378px;" alt="IMG-PRODUCT">
							<input type="hidden" id="productNo0" value="${r.p_NO }">
							<a href="#" id="ModalView0" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								미리보기
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="${productDetail}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									${r.p_Name}
								</a>

								<span class="stext-105 cl3">
									${r.p_Last_Price }<b>원</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									구매 : ${r.p_Order_Count}
								</span>
							</div>
					 <c:url var="wInsert" value="wInsert.mn">
					 	<c:param name="w_P_NO" value="${ r.p_NO }"/>
					 	<c:param name="w_Mno" value="${ loginUser.mNO }"/>
					 </c:url>	
							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
									<img class="icon-heart1 dis-block trans-04" src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png" alt="ICON" onclick="location.href='${wInsert}'">
									<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png" alt="ICON" onclick="location.href='${wInsert}'">
								</a>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>

			</div>
			<br><br><br>
			<div class="p-b-10">
				<h3 class="ltext-103 cl5">
					EVENT<br><br>
				</h3>
			</div>

			<div class="row isotope-grid">
			<c:forEach var="e" items="${ EventList }"> 
			    <c:url var="productDetail" value="productDetail.mn">
           			<c:param name="p_NO" value="${ e.p_NO }"/>
           			<c:param name="or_Mno" value="${loginUser.mNO }"/>
   	        	</c:url>
   	        	

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					
					<div class="block2">
				
						<div class="block2-pic hov-img0 label-new" id="productModal" data-label="New">
							<img src="/brocoli/resources/product-Img/${e.pfList.pf_Img1_ReName}"style="height:378px;" alt="IMG-PRODUCT">
							<input type="hidden" id="productNo" value="${e.p_NO }">
							<a href="#" id="ModalView" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								미리보기
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="${productDetail}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									${e.p_Name}
								</a>

								<span class="stext-105 cl3">
									<strike>${e.p_Price}</strike>${e.p_Last_Price }<b>원</b>
								</span>
							</div>
		                     <c:url var="wInsert2" value="wInsert.mn">
							 	<c:param name="w_P_NO" value="${ e.p_NO }"/>
							 	<c:param name="w_Mno" value="${ loginUser.mNO }"/>
							 </c:url>	
							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
									<img class="icon-heart1 dis-block trans-04" src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png" alt="ICON" onclick="location.href='${wInsert2}'">
									<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png" alt="ICON" onclick="location.href='${wInsert2}'">
								</a>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>

			</div>
			

			<!-- Pagination -->
<!-- 			<div class="flex-c-m flex-w w-full p-t-38">
				<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1">
					1
				</a>

				<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7">
					2
				</a>
			</div> -->
		</div>
	</section>

<%@ include file="pages/All-Footer.jsp" %>


<%@ include file="pages/All-BacktoTop.jsp" %>

	
<%@ include file = "pages/All-ShopModal.jsp" %>
			 
	<script>
	$('#productModal0 a[id=ModalView0]').click(function(obj){
		var p_NO = $(this).parent().find('input[id=productNo0]').val();
		var option = "";
		var img="";
		$('#opshow').css("display","none");
		var id="${loginUser.mNO}";
		$.ajax({
			url:"productModal",
			data:{p_NO:p_NO},
			dataType:"json",
			success:function(data){

				$('#productName').val(data[0].p_Name);
				$('#brandName').val(data[0].b_Name);
				$('#pNo').val(data[0].p_NO);
				$('#orderCount').val(data[0].p_Order_Count);
				$('#productPrice').val(data[0].p_Price);
				$('#lastPrice').val(data[0].p_Last_Price);
				$('#productComment').val(data[0].p_Comment);
				$('#stockCount').val(data[0].op_Stock);

				img += "<div class='item-slick3' data-thumb='-'>"
				img +=	"<div class='wrap-pic-w pos-relative'>"
				img += "<img src='/brocoli/resources/product-Img/"+data[0].pf_Img1_ReName + "'alt='IMG-PRODUCT'>"
				img +=	"<a class='flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04' href='/brocoli/resources/product-Img/"+data[0].pf_Img1_ReName+"'>"
				img +=			"<i class='fa fa-expand'></i>"
				img +=		"</a>"
				img +=	"</div>"
				img += "</div>"
/* 				if(data[0].pf_Img2_ReName != null){
					img += "<div class='item-slick3' data-thumb=''>"
					img +=	"<div class='wrap-pic-w pos-relative'>"
					img += "<img src='/brocoli/resources/product-Img/"+data[0].pf_Img2_ReName + "'alt='IMG-PRODUCT'>"
					img +=	"<a class='flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04' href='/brocoli/resources/product-Img/"+data[0].pf_Img2_ReName+"'>"
					img +=			"<i class='fa fa-expand'></i>"
					img +=		"</a>"
					img +=	"</div>"
					img += "</div>"
				}else if(data[0].pf_Img3_ReName != null){
					img += "<div class='item-slick3' data-thumb=''>"
					img +=	"<div class='wrap-pic-w pos-relative'>"
					img += "<img src='/brocoli/resources/product-Img/"+data[0].pf_Img3_ReName + "'alt='IMG-PRODUCT'>"
					img +=	"<a class='flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04' href='/brocoli/resources/product-Img/"+data[0].pf_Img3_ReName+"'>"
					img +=			"<i class='fa fa-expand'></i>"
					img +=		"</a>"
					img +=	"</div>"
					img += "</div>"
				} */
				
				$('#imgcheck').html(img);
				
		        var tempArr = [];
		        for (var i = 0; i < data.length; i++) {
		            if (tempArr.length == 0) {
		                tempArr.push(data[i].option_1);
		            } else {
		                var duplicatesFlag = true;
		                for (var j = 0; j < tempArr.length; j++) {
		                    if (tempArr[j] == data[i].option_1) {
		                        duplicatesFlag = false;
		                        break;
		                    }
		                }
		                if (duplicatesFlag) {
		                    tempArr.push(data[i].option_1);
		                }
		            }
		        }

		        option += "<option>선택하세요</option>";
		        for(var i=0; i<tempArr.length; i++){
		        	if(tempArr[i] != null){
		        		option += "<option>"+tempArr[i]+"</option>"
		        	}
		        }
		  

				
				$('#select1').html(option);
		
				$('#detailCheck').attr('href','productDetail.mn?p_NO='+data[0].p_NO+"&&or_Mno="+id);
				 
			},error:function(jqxhr,textStatus, errorThrown){
				console.log("ajax 처리실패");
				
				//에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
		
	})
	 
	$('#productModal a[id=ModalView]').click(function(obj){
		$('#opshow').css("display","none");
		var p_NO = $(this).parent().find('input[id=productNo]').val();
		var option = "";
		var img="";
		var id="${loginUser.mNO}";
		$.ajax({
			url:"productModal",
			data:{p_NO:p_NO},
			dataType:"json",
			success:function(data){

				$('#productName').val(data[0].p_Name);
				$('#brandName').val(data[0].b_Name);
				$('#pNo').val(data[0].p_NO);
				$('#orderCount').val(data[0].p_Order_Count);
				$('#productPrice').val(data[0].p_Price);
				$('#lastPrice').val(data[0].p_Last_Price);
				$('#productComment').val(data[0].p_Comment);
				$('#stockCount').val(data[0].op_Stock);
				
				img += "<div class='item-slick3' data-thumb='-'>"
				img +=	"<div class='wrap-pic-w pos-relative'>"
				img += "<img src='/brocoli/resources/product-Img/"+data[0].pf_Img1_ReName + "'alt='IMG-PRODUCT'>"
				img +=	"<a class='flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04' href='/brocoli/resources/product-Img/"+data[0].pf_Img1_ReName+"'>"
				img +=			"<i class='fa fa-expand'></i>"
				img +=		"</a>"
				img +=	"</div>"
				img += "</div>"
/* 				if(data[0].pf_Img2_ReName != null){
					img += "<div class='item-slick3' data-thumb=''>"
					img +=	"<div class='wrap-pic-w pos-relative'>"
					img += "<img src='/brocoli/resources/product-Img/"+data[0].pf_Img2_ReName + "'alt='IMG-PRODUCT'>"
					img +=	"<a class='flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04' href='/brocoli/resources/product-Img/"+data[0].pf_Img2_ReName+"'>"
					img +=			"<i class='fa fa-expand'></i>"
					img +=		"</a>"
					img +=	"</div>"
					img += "</div>"
				}else if(data[0].pf_Img3_ReName != null){
					img += "<div class='item-slick3' data-thumb=''>"
					img +=	"<div class='wrap-pic-w pos-relative'>"
					img += "<img src='/brocoli/resources/product-Img/"+data[0].pf_Img3_ReName + "'alt='IMG-PRODUCT'>"
					img +=	"<a class='flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04' href='/brocoli/resources/product-Img/"+data[0].pf_Img3_ReName+"'>"
					img +=			"<i class='fa fa-expand'></i>"
					img +=		"</a>"
					img +=	"</div>"
					img += "</div>"
				} */
				
				$('#imgcheck').html(img);
				
				var tempArr = [];
		        for (var i = 0; i < data.length; i++) {
		            if (tempArr.length == 0) {
		                tempArr.push(data[i].option_1);
		            } else {
		                var duplicatesFlag = true;
		                for (var j = 0; j < tempArr.length; j++) {
		                    if (tempArr[j] == data[i].option_1) {
		                        duplicatesFlag = false;
		                        break;
		                    }
		                }
		                if (duplicatesFlag) {
		                    tempArr.push(data[i].option_1);
		                }
		            }
		        }


				
		        option += "<option>선택하세요</option>";
		        for(var i=0; i<tempArr.length; i++){
		        	if(tempArr[i] != null){
		        		option += "<option>"+tempArr[i]+"</option>";
		        	}
		        }
		  
		       
				
				$('#select1').html(option);
				
				
				$('#detailCheck').attr('href','productDetail.mn?p_NO='+data[0].p_NO+"&&or_Mno="+id);
				 
			},error:function(jqxhr,textStatus, errorThrown){
				console.log("ajax 처리실패");
				
				//에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
		
	});
	


	 
	
	</script>		

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