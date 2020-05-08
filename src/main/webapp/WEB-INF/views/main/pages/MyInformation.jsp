<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<%@ include file="All-Header.jsp"%>
<%@ include file="All-Sidebar.jsp"%>
<%@ include file="All-Cart.jsp"%>
<%@ include file="All-BacktoTop.jsp"%>


<link rel="stylesheet" type="text/css"
	href="/brocoli/resources/mainResources/css/myInformation.css">





<body>

<form action="mupdate.mn" >
	<div id="contentWrapper">
		<div id="contentWrap">

			<div id="content">
				<div id="join" class="mypage SMP-table">
					<div class="SMP-container">
						<h2 class="tit_page">MY INFOMATION</h2>
							<!-- 일반회원 기본 노출 -->
							<div id="personInfo">
								<ul class="cb_clear" :before>
									<li class="txt">
										<table class="person-tb">
											<colgroup>
												<col width="170">
												<col width="*">
											</colgroup>
											<tbody>
												<tr>
													<th>
														<div>
															<span class="fc_brown">*</span> 이름
														</div>
													</th>
													<td>
														<div>
															<input type="text" name="mName" id="" value="${loginUser.mName }" class="MS_input_txt w180" size="15" maxlength="30" readonly>
														</div>
													</td>
												</tr>
												<tr>
													<th>
														<div>
															<span class="fc_brown">*</span> 아이디
														</div>
													</th>
													<td>
														<div>
															<input type="text" name="mId" id="id" value="${loginUser.mId }" readonly>
														</div>
													</td>
												</tr>
												<tr>
													<th>
														<div>
															<span class="fc_brown">*</span> 비밀번호
														</div>
													</th>
													<td>
														<div style="    display: inline-flex;">
															<input type="password" name="pwd" id="pwd" class="MS_input_txt w180" value="${loginUser.pwd }" size="15" maxlength="20" style="margin-left: -376px;" readonly >
															 &nbsp;&nbsp;&nbsp;
															<div class="button_base b01_simple_rollover" style="padding-top:0px; height: 25px; border-radius: 3px;">
                                                              <a href="<c:url value='p_change.mn'/>" style="color: #fff;"> 변경하기
                                                              </a>
                                                            </div>
														</div>
													</td>
												</tr>
												<tr>
													<th>
														<div>
															<span class="fc_brown">*</span> 생년월일
														</div>
													</th>
													<td>
														<div class="custom_select cb_clear "
															style="margin-left: -251px;">
															<div>
																<input type="text" name="birthDay" value="${loginUser.birthDay }" style="display: inline-block; margin-left: -353px;" readonly>
															
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<th>
														<div>
															<span class="fc_brown">*</span> 성별
														</div>
													</th>
													<c:choose>
														<c:when test="${ loginUser.gender eq 'M' }">
															<td>
															   <div style="margin-left: -660px;">
															       <input type="radio" name="gender" value="M" checked style="display: inline-block;">남
															       &nbsp;&nbsp;&nbsp;&nbsp;  
															       <input type="radio" name="gender" value="F" style="display: inline-block;">여
															   </div>
															</td>
														</c:when>
														<c:when test="${ loginUser.gender eq 'F' }">
															<td>
															   <div style="margin-left: -660px;">
															      <input type="radio" name="gender" value="M" style="display: inline-block;">남
															       &nbsp;&nbsp;&nbsp;&nbsp; 
																  <input type="radio" name="gender" value="F" checked style="display: inline-block;">여
															   </div>
															</td>
														</c:when>
														<c:otherwise>
															<td>
																<div style="margin-left: -660px;">
																	<input type="radio" name="gender" value="M" class="MS_radio" style="display: inline-block;">남
																	&nbsp;&nbsp;&nbsp;&nbsp; 
																	<input type="radio" name="gender" value="F" class="MS_radio" style="display: inline-block;">여
																</div>
															</td>
														</c:otherwise>
													</c:choose>
												</tr>
												<tr>
													<th class="arr_line">
														<div>
															<span class="fc_brown">*</span> 주소
														</div>
													</th>
													<td>
														<div class="arr_line">
															<ul>
															<c:if test="${!empty loginUser.address }">
															  <c:forTokens var="addr" items="${loginUser.address }" delims="," varStatus="status"> 
															    <c:if test="${ status.index eq 0 }">
															      <li class="input_num" style="margin-left: -507px;">
																	<input type="text" name="post" class="MS_input_txt" size="6" value="${addr }" style="display: inline-block; margin-left: -75px;">
																	    <span> 
																	      <a id="postcodify_search_button" class="submit_button" alt="우편번호검색">우편번호 검색</a>
																        </span>
																  </li>
																 </c:if>
																 <c:if test="${ status.index eq 1 }"> 
																    <li>
																       <input type="text" name="address1"  id="address1" class="MS_input_txt w600" value="${addr }"  readonly="readonly">
																    </li>
																 </c:if>
																 <c:if test="${ status.index eq 2 }"> 
																     <li class="margin_none">
																        <input type="text" name="address2" id="address2" class="MS_input_txt w600" value="${addr }">
															         </li>
															       </c:if>  
															     </c:forTokens>
															   </c:if>
															</ul>
														</div>
														
													   <!-- ================================================================== -->
														<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
														<script>
															// 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
																var popUp=$("#postcodify_search_button").postcodifyPopUp(); ;
															
															
														</script>
													</td>
												</tr>
												<tr>
													<th>
														<div>
															<span class="fc_brown">*</span> 이메일
														</div>
													</th>
													<td>
														<div>
															<input type="hidden" name="email" value=""> 
														    <input type="text" name="email" id="email" class="MS_input_txt MS_input_txt06 w180" size="20" maxlength="35" value="${loginUser.email }" >
														</div>
													</td>
												</tr>
												<tr>
													<th>
														<div>
															<span class="fc_brown">*</span> 휴대폰
														</div>
													</th>
													<td>
														<div>
															<input type="text" name="phone" id="phone" class="MS_input_tel w180" size="15" maxlength="30" value="${loginUser.phone }">
														</div>
													</td>
												</tr>

											</tbody>
										</table>
									</li>
								</ul>
							</div>
							<!-- #personInfo -->
							<div style="padding-top: 9px; padding-right: 50px;">
								<button style="height: 35px; width: 140px; border-radius: 3px; padding: 0px; padding-bottom: 2px;">
									<strong>수정</strong>
								</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								
								<button style="height: 35px; width: 140px; border-radius: 3px; padding: 0px; padding-bottom: 2px;" onclick="location.href='mdelete.mn'">
									<strong>삭제</strong>
								</button>
							</div>
						<!-- </form> -->
					</div>
					<!-- .SMP-container -->
				</div>
				<!-- #join -->
			</div>
			<!-- #content -->
		</div>
		<!-- #contentWrap -->
	</div>
</form>
	

   <!-- ================================================================================= -->

	<%@ include file="All-Footer.jsp"%>

	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/bootstrap/js/popper.js"></script>
	<script
		src="/brocoli/resources/mainResources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/daterangepicker/moment.min.js"></script>
	<script
		src="/brocoli/resources/mainResources/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/slick/slick.min.js"></script>
	<script src="/brocoli/resources/mainResources/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/sweetalert/sweetalert.min.js"></script>
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
	<script
		src="/brocoli/resources/mainResources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/js/main.js"></script>


</body>
</html>