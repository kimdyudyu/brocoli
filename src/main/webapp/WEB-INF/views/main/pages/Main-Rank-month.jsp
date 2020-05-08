<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-Cart.jsp" %>
	
<style>
#header-color2{
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
	
	


 	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/resources/mainResources/images/ranklist.jpg');">
		<h2 class="ltext-105 cl0 txt-center" style="color:white ">
			RANK
		</h2>
	</section>	

	

	
	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<div class="container">
			<div class="flex-w flex-sb-m p-b-52" style="height:75px;">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10" >
					<strong style="font-size: 35px; color: #222; margin-right: 30px; padding-left: 0px; margin-left: 0px;">랭킹</strong>
					<c:url var="day" value="rankday.mn"/>
					<a href="${day}" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" style="font-size:20px;"data-filter="*">
					일별
					</a>
					<c:url var="month" value="rankmonth.mn"/>
					<a href="${month }" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" style="font-size:20px;" data-filter=".men">
					월별
					</a>
					<c:url var="year" value="rankyear.mn"/>
					<a href="${year }" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" style="font-size:20px;" data-filter=".bag">
					년별
					</a>
					
				
					
				</div>
				
			
			</div>

			
			<div class="row isotope-grid">
		
         <c:forEach var="month" items="${ monthList }">
         	<c:url var="productDetail" value="productDetail.mn">
           		<c:param name="p_NO" value="${month.p_NO }"/>
           		<c:param name="or_Mno" value="${loginUser.mNO }"/>
   	        </c:url>
            <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${month.p_Bcategory} ${month.p_Scategory}">
               <div class="block2">
                  <div class="block2-pic hov-img0" id="productModal">
                     <img src="/brocoli/resources/product-Img/${month.pfList.pf_Img1_ReName }" alt="IMG-PRODUCT" style="height:378px;">
				<input type="hidden" id="productNo" value="${month.p_NO }">
                     <a href="#" id="ModalView" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                     	미리보기
                     </a>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="${productDetail }" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           ${month.p_Name }
                        </a>

                        <span class="stext-105 cl3">
                           ${month.p_Last_Price }원
                        </span>
                     </div>

                      <c:url var="wInsert" value="wInsert.mn">
					 	<c:param name="w_P_NO" value="${ month.p_NO }"/>
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

			
		</div>
	</div>
		



	<%@ include file="All-ShopModal.jsp" %>

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
<!-- 	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal("찜 완료!"/* nameProduct */, "관심 상품에 추가되었습니다!", "success");

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
  <!-- 
   	작성자 : 박주완
   	작성일 : 2020-03-20
   	내용 : 카테고리 버튼 클릭시 서브 메뉴 츌력 
    -->
   <script>
   $(function (){
		$("#category-ALL").click(function (){
	  	$(".sub-category").css("display","none");
	  });
	});

  
   $(function (){
		$("#category-A").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-A").toggle();
	  });
	});
   $(function (){
		$("#category-B").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-B").toggle();
	  });
	});
   $(function (){
		$("#category-C").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-C").toggle();
	  });
	});
   $(function (){
		$("#category-D").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-D").toggle();
	  });
	});
   $(function (){
		$("#category-E").click(function (){
			$(".sub-category").css("display","none");
			$("#sub-category-E").toggle();
	  });
	});
   $(function (){
		$("#category-F").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-F").toggle();
	  });
	});
   $(function (){
		$("#category-G").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-G").toggle();
	  });
	});
   $(function (){
		$("#category-H").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-H").toggle();
	  });
	});
   $(function (){
		$("#category-I").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-I").toggle();
	  });
	});
   $(function (){
		$("#category-J").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-J").toggle();
	  });
	});
   
   $(function (){							/* 마지막 기타 메뉴 : Z */
		$("#category-Z").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-Z").toggle();
	  });
	});
   
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
   
   </script>


</body>
</html>