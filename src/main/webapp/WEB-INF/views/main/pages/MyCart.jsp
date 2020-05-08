<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
	<%@ include file="All-Header.jsp" %>
    <%@ include file="All-Sidebar.jsp" %>
    <%@ include file="All-Cart.jsp" %>

<body class="animsition">
	
   <!-- 
   	작성자 : 윤석훈
   	작성일 : 2020-03-20
   	내용 : 장바구니 화면 수정
    -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/resources/mainResources/images/cart.jpg');">
		<h2 class="ltext-105 cl0 txt-center" style="color:white;">
			장바구니
		</h2>
	</section>	
	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				장바구니
			</span>
		</div>
	</div>

	<!-- Shoping Cart -->
	<!-- <form class="bg0 p-t-75 p-b-85"> -->
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50" style="margin-left: -1%;">
					<div class="m-l-25 m-r--38 m-lr-0-xl" style="width: 170%;">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-0"><input type="checkBox" id="cheAll" onclick="checkAll();"></th>
									<th class="column-1">이미지</th>
									<th class="column-2">상품명</th>
									<th class="column-3">옵션1</th>
									<th class="column-4">옵션2</th>
									<th class="column-5">판매금액</th>
									<th class="column-6">수량</th>
									<th class="column-7">총 금액</th>
									<th class="column-8" style="text-align: center; width: 5%;">삭제</th>
								</tr>
							<c:set var="sum" value="0"/>
							<c:choose>
	    						<c:when test="${empty cList }">
	    							<tr>
	    								<td colspan="8" style="height: 110px; font-size: 17px; text-align: center;"><strong>장바구니가 비어있습니다.</strong></td>
	    							</tr>
	    						</c:when>
						        <c:when test="${!empty cList}">
									<c:forEach var="c" items="${ cList }" varStatus="status" >
									
										<tr class="table_row">
								
										<th class="column-0"><input type="checkBox" name="che" id="${status.index}" value="${ c.productList.p_Last_Price * c.ct_Amount }" ></th>
											<td class="column-1">
												<div class="how-itemcart1">
													<img src="/brocoli/resources/product-Img/${c.p_File.pf_Img1_ReName}" alt="IMG">
												</div>
											</td>
											<td class="column-2">${c.productList.p_Name}</td>
											<td class="column-3">${c.ct_Option_1 }</td>
											<td class="column-4">${c.ct_Option_2 }</td>
											<td class="column-7">${c.productList.p_Last_Price}</td>
											
											<td class="column-6">${ c.ct_Amount }</td>
									
											<c:set var="hap" value="${c.productList.p_Last_Price * c.ct_Amount }"/>
											
											<td class="column-7">
												<c:out value="${ hap }"/>
											</td>
												<td style="text-align: center;">
											<c:url var="cDelete" value="cDelete.mn">
												<c:param name="p_NO" value="${ c.productList.p_NO }"/>
												<c:param name="ct_Mno" value="${ c.ct_Mno }"/>
												<c:param name="Mno" value="${loginUser.mNO }"/>
												<c:param name="ct_NO" value="${c.ct_NO}"/>
											</c:url> 
											
											<input type="hidden" name="ct_NO" id="ct_NO${status.index}" value="${c.ct_NO}"/>
											
											<button class="btn btn-primary" style="background: #222; width: 70px; border: 1px solid #222;"
									      	onclick="location.href='<c:url value='${ cDelete }'/>';">삭제</button> 
												
											</td>
										</tr>
									</c:forEach>
								</c:when>
						    </c:choose>
													
								<tr style="height:100px;">
									<td colspan="6"></td>
									<td >총 금액 : </td>
									<td>
										<input type="text" id="totalCash" name="totalCash" readonly>
									</td>
									<td>
									원
									</td>
								</tr>
							</table>
						</div>
						
						<script>
							
							var inter = setInterval(function(){
								var lists = [];
								$("input[name='che']:checked").each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
								   lists.push($(this).val());
								
								});
								
								function sum(array) {
									var result = 0.0;
									
									for (var i = 0; i < array.length; i ++) {
										result += Number(array[i]);
										
									}
									
									return result;
								}
								
								$("#totalCash").val(sum(lists));
							},1000)
							
						function checkAll(){
								
					      if( $("#cheAll").is(':checked') ){
					        $("input[name=che]").prop("checked", true);
					      }else{
					        $("input[name=che]").prop("checked", false);
					      }
					}
						//----------------------------------------------배열로 값담기--------
						

 							var test1;
							var test2; 
							var checkbox = $("input[name=che]:checked"); 
						
/* 							$("input[name=che]").click(function(){ 
								
								var rowData = [];
								var tdArr = []; 
								var checkbox = $("input[name=che]:checked");

								// 체크된 체크박스 값을 가져온다
								var count = 0;
								checkbox.each(function(i) {
									var index = $(this).attr("id");
									$("#ct_NO"+index+"").attr("name","ct_NO["+count+"]");
									count++;
									// checkbox.parent() : checkbox의 부모는 <td>이다.
									// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
									var tr = checkbox.parent().parent().eq(i);
									var td = tr.children();
									
									// 체크된 row의 모든 값을 배열에 담는다.
									/* rowData.push(tr.text().trim()); 
									
									// td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
									var name = td.eq(2).text().trim();
									var op1 = td.eq(3).text().trim();
									var op2 = td.eq(4).text().trim();
									var don = td.eq(5).text().trim();
									var pcount = td.eq(6).text().trim();
									var sum = td.eq(7).text().trim();
									
									/* var sum1 = sum;
									//var test = sum1.replace(/ /gi,"");
									var test = sum1.replace(/ /gi,"");
									var test1 = test.split(" ");
									alert(test1);
									console.log(test1) 
									
									// 가져온 값을 배열에 담는다.
									
									rowData.push(name);
									rowData.push(op1);
									rowData.push(op2);
									rowData.push(don);
									rowData.push(pcount);
									rowData.push(sum);
									
									tdArr.push(rowData);
									
									console.log("name : " + name);
									console.log("op1 : " + op1);
									console.log("op2 : " + op2);
									console.log("don : " + don);
									console.log("pcount : " + pcount);
									console.log("sum : " + sum);
									console.log("tdArr 총배열 : " + tdArr.length);
									console.log("rowData 총배열 : " + rowData.length);
									console.log("tdArr영번째 : " + tdArr[0]);
									console.log("로우데이터 영ㄴ번쨰 : " + rowData[0]);
									console.log("rowData 0.0 : " + tdArr[0][0]);
									console.log("ㅑ : " + i);
								 	console.log(rowData.replace(/(/s*)/g,"")); 
								});
								
								test1 = rowData;
								test2 = tdArr;
								$("#orderadd").html(" * 체크된 Row의 모든 데이터 = "+rowData);	
								$("#test").val(tdArr);
							}); */
							
							
							
							var ct_ID = new Array();
							
							
							$("input[name=che]").click(function(){ 
								
								var id = $(this).attr("id");
								
							
								
								
								if($(this).prop("checked")){
									
									ct_ID.push(id);
								}else {
									if(id == 0){
										ct_ID.shift()
									}else{
										
									ct_ID.splice(ct_ID.indexOf(id),1);	
									}
										
								}
								ct_ID.sort();
							});
							
							
 							function orderadd(){
								var checked = $("input[name=che]:checked").length;
								
						 		var ct_NO = new Array(); 
								
						 		for(var i=0; i<checked; i++){
									
									ct_NO[i] = $("#ct_NO"+ct_ID[i]).val();
									
								} 
								  jQuery.ajaxSettings.traditional = true;
								 $.ajax({
									url:'cOrderAddInsert.mn',
									type: "POST",
									async:false,
									traditional:true,
									data:{
										ct_NO : ct_NO
									},
									success:function(data){
										if(data = "ok"){
											
										location.href= "mTrackListView.mn";
										}else if(data = "false"){
											alert("목록을 선택해주세요.");
										}
									}
									
								})  
							} 
							

							
				</script>
				
						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
<!-- 							<div class="flex-w flex-m m-r-20 m-tb-5">
								<input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="쿠폰 번호">
									

							</div> -->
						</div>
						<c:url var="cOrderAdd" value="cOrderAdd.mn">
							<c:param name="p_NO" value="${ c.productList.p_NO }"/>
							<c:param name="ct_Mno" value="${ c.ct_Mno }"/>
							<c:param name="Mno" value="${loginUser.mNO }"/>
							<c:param name="ct_NO" value="${c.ct_NO}"/>
						</c:url> 
						
						<input type="hidden" name="ct_P_NO" value="${ aProducDetailtList[0].p_NO }"/>
						<input type="hidden" name="ct_Mno" value="${ loginUser.mNO }"/>
						<button class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" style="background: #333;
   						 color: white; border-radius:5px; width: 100%;" name="orderadd" onclick="orderadd();">주문하기</button> 
						<!-- <input type="text" name="test" id="test" value="00" style="width:1000px;"> -->
					</div>
				</div>

<!-- 				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							결제
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									최종금액:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									52,000원
								</span>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									상세설명:
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<p class="stext-111 cl6 p-t-2">
									보류
								</p>
								
								<div class="p-t-15">
									<span class="stext-112 cl8">
										분류
									</span>

									<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
										<select class="js-select2" name="time">
											<option>나라 선택</option>
											<option>한국</option>
											<option>미국</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>

									<div class="bor8 bg0 m-b-12">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="state" placeholder="State /  country">
									</div>

									<div class="bor8 bg0 m-b-22">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="postcode" placeholder="Postcode / Zip">
									</div>
									
									<div class="flex-w">
										<div class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer">
											결제하기
										</div>
									</div>
										
								</div>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									총 금액:
								</span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2">
									52,000원
								</span>
							</div>
						</div>

						<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							Proceed to Checkout
						</button>
					</div>
				</div> -->
			</div>
		</div>
	<!-- </form> -->
		
	
		

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