<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<style>
.img_color {
	width: 262px;
	height: 262px;
	display: inline-block;
	border: 1px solid black;
}

</style>
<script>

</script>
</head>
<body>
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>
		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img
						src="/brocoli/resources/mainResources/images/icons/icon-close.png"
						alt="CLOSE">
				</button>
				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div  class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb" id="imgcheck">
								

								</div>
							</div>
						</div>
					</div>


					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<p class="stext-102 cl3 p-t-23"
								style="display: inline-block; padding: 5px; font-size: 16px; width: 430px;">
								<input type="hidden" id="test"/>
								<strong><a id="detailCheck"><input type="text" id="productName" style="display: inline-block; cursor:pointer; width: 430px;" readonly="readonly"></a></strong>
							</p>
							<br>
							<p class="stext-102 cl3 p-t-23 "
								style="display: inline-block; padding: 5px;">
								<strong>브랜드 
								</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" id="brandName" style="display: inline-block;" readonly="readonly">
							</p>
							&nbsp;&nbsp;&nbsp;
							<p class="stext-102 cl3 p-t-23"
								style="display: inline-block; padding: 5px; float: right;">
								<strong>상품번호 </strong>&nbsp;&nbsp;&nbsp;
								<input type="text" id="pNo" style="display: inline-block;" readonly="readonly">
							</p>
							<br>
							<p class="stext-102 cl3 p-t-23"
								style="display: inline-block; padding: 5px;">
								<strong>주문 수 </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" id="orderCount" style="display: inline-block; width: 60px;" readonly="readonly">
							</p>
							<br>
							<p class="stext-102 cl3 p-t-23"
								style="display: inline-block; padding: 5px;">
								<strong>재고 </strong>&nbsp;&nbsp;&nbsp;
								<input type="text" id="stockCount" style="display: inline-block; text-align:right; width: 60px;" readonly="readonly">개
							</p>
							<br>
							<hr>
							<p class="stext-102 cl3 p-t-23"
								style="display: inline-block; padding: 5px;">
								<strong>판매가 </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span style="font-size: 18px;">
								<input type="text" id="productPrice" style="display: inline-block; width: 130px; text-decoration:line-through;" readonly="readonly"/>원
								</span>
							</p>
							<br>
							<p class="stext-102 cl3 p-t-23"
								style="display: inline-block; padding: 5px;">
								<strong>할인가 </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span style="font-size: 18px;">
								<input type="text" id="lastPrice" style="display: inline-block; width: 130px;" readonly="readonly">원
								</span>
							</p>
							<br>
							<p class="stext-102 cl3 p-t-23"
								style="display: inline-block; padding: 5px;">
								<strong>상품 설명 </strong><br>
								<div>
								<textarea id="productComment" style="display: inline-block; width: 100%; resize: none; font-size: 14px;" readonly="readonly" ></textarea>
								</div>
							</p>

							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">


									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0" style="margin-left: -100px;">
											<select class="js-select2" id="select1" name="time">
													
											
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">


								<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0" id="opshow" style="margin-left: -100px; display:none;">
											<select class="js-select2" id="select2" name="time">
													
											
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" name="num-product" value="1">

											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

									</div>
									<button
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"
										style="color: white; background-color: #333; border-radius: 5px;">
										즉시 결제</button>
									&nbsp;&nbsp;&nbsp;
									
		<%-- 							<c:url var="cInsert" value="cInsert.mn">
									 <c:param name="ct_P_NO" value="${ ap.p_NO }"/>
									 	<c:param name="ct_Mno" value="${ loginUser.mNO }"/>
									</c:url> --%>
									<a href="#"
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"
										style="color: white; background-color: #333; border-radius: 5px;" id="cart">
										장바구니</a>
								</div>
							</div>

							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7"
								style="padding-left: 200px;">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
										data-tooltip="Add to Wishlist"> <i
										class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
								</a> <a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
								</a> <a 
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
								</a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
	$(function(){
	    $("#select1").change(function() {
	    	var test = "";
	    	var option2 = "";
			var option_1 = $("#select1").val();
			var p_NO = $("#pNo").val();
			$.ajax({
				url:"optionDetail",
				data:{p_NO:p_NO,
					  option_1:option_1},
				dataType:"json",
				success:function(data){
					 var tempArr1 = [];
				        for (var i = 0; i < data.length; i++) {
				            if (tempArr1.length == 0) {
				                tempArr1.push(data[i].option_2);
				            } else {
				                var duplicatesFlag1 = true;
				                for (var j = 0; j < tempArr1.length; j++) {
				                    if (tempArr1[j] == data[i].option_2) {
				                        duplicatesFlag1 = false;
				                        break;
				                    }
				                }
				                if (duplicatesFlag1) {
				                    tempArr1.push(data[i].option_2);
				                }
				            }
				        }
						   
				        for(var i=0; i<tempArr1.length; i++){
				        	if(tempArr1[i] != null){
				        		option2 += "<option>"+tempArr1[i]+"</option>";
				        	}
				        }
				        
						if(option_1 == "선택하세요"){
							$('#select2').html(test);
							$('#opshow').css("display","none");
						}else{
							$('#select2').html(option2);
							$('#opshow').css("display","block");
						}
				},error:function(jqxhr,textStatus, errorThrown){
					console.log("ajax 처리실패");
					
					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			});
	    });
	});
	/* 장바구니 담기 */ 
	$("#cart").click(function(){
			var ct_P_NO=$("#pNo").val();
			var ct_Mno="${loginUser.mNO}";
			var Amount = $("input[name=num-product]").val();
			var ct_Amount = Amount.replace(/ /gi, "");
			var ct_Option_1 = $('#select2-select1-container').text();
			var ct_Option_2 = $('#select2-select2-container').text();
		if(ct_Mno != ""){
			if(ct_Option_1 != "선택하세요"){
				if(ct_Option_2 != ""){
					if(ct_Amount != "0" ){
				
			$.ajax({
				url:"cInsert",
				data:{
					ct_P_NO : ct_P_NO,
					ct_Mno : ct_Mno,
					ct_Option_1 : ct_Option_1,
					ct_Option_2 : ct_Option_2,
					ct_Amount : ct_Amount
				},
				type:"POST",
				success:function(data){
					if(data=="ok"){
						alert("장바구니에 추가되었습니다.");
					}

					
				},error:function(jqxhr,textStatus, errorThrown){
					console.log("ajax 처리실패");
					
					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			
			});
			
					}else{
						alert("수량을 선택해주세요");
					}
			
				}else{
				alert("옵션2를 선택해주세요.");
			}
			}else{
				alert("옵션1을 선택해주세요.");
			}
		}else{
			alert("로그인후 이용 가능합니다.");
		}
	})
	</script>
</body>
</html>