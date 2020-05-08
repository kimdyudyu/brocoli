<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.stext-301{
font-size: 25px;
}
.stext-107{
font-size: 15px;
}
</style>
</head>
<body>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>

</body>
	<!-- Footer -->
	<footer class="bg3 p-t-30 p-b-0" id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h3 class="stext-301 cl7 p-b-30">
						Information
					</h3>

					<ul>
						<li class="p-b-10">
						<c:url var="mIntroduce" value="mIntroduceView.mn"/>
							<a href="${mIntroduce}" class="stext-107 cl7 hov-cl1 trans-04">
								회사 소개
							</a>
						</li>

						<li class="p-b-10">
						<c:url var="pPolicy" value="pPolicyView.mn"/>
							<a href="${pPolicy}" class="stext-107 cl7 hov-cl1 trans-04">
								개인정보보호정책
							</a>
						</li>

						<li class="p-b-10">
						<c:url var="mContact" value="mContactView.mn" />
							<a href="${mContact }" class="stext-107 cl7 hov-cl1 trans-04">
								Contact
							</a>
						</li>

						<!-- <li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								시계
							</a>
						</li> -->
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h3 class="stext-301 cl7 p-b-30">
						Help
					</h3>

						<c:url var="loginPage" value="loginPage.mn"/>
					<ul>
						<li class="p-b-10">
					<c:if test="${empty sessionScope.loginUser }">
							<%-- <a href="${loginPage }" class="stext-107 cl7 hov-cl1 trans-04">
								배송 조회
							</a> --%>
						</c:if>
						
					<c:if test="${!empty sessionScope.loginUser }">
						<c:url var="mTrackList" value="mTrackListView.mn" />
							<%-- <a href="${mTrackList }" class="stext-107 cl7 hov-cl1 trans-04">
							배송 조회
							</a> --%>
					</c:if>
						</li>
						<li class="p-b-10">
						<c:if test="${!empty sessionScope.loginUser }">
						<c:url var="mOrderlist" value="myOrderList.mn" />
							<a href="${mOrderlist }" class="stext-107 cl7 hov-cl1 trans-04">
								주문현황 
							</a>
						</c:if>
						<c:if test="${empty sessionScope.loginUser }">
							<a href="${loginPage }" class="stext-107 cl7 hov-cl1 trans-04">
								교환 환불 
							</a>
						</c:if>
						</li>

						<li class="p-b-10">
							<c:url var="QnA" value="QnAView.mn"/>
							<c:if test="${!empty sessionScope.loginUser }">
							<a href="${QnA }" class="stext-107 cl7 hov-cl1 trans-04">
							</c:if>
							<c:if test="${empty sessionScope.loginUser }">
							<a href="${loginPage }" class="stext-107 cl7 hov-cl1 trans-04">
							</c:if>
								문의하기
							</a>
						</li>

						<li class="p-b-10">
							<c:url var="FAQ" value="FAQView.mn"/>
							<a href="${FAQ }" class="stext-107 cl7 hov-cl1 trans-04">
								자주묻는질문
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h3 class="stext-301 cl7 p-b-30">
					<i class="fa fa-phone"></i>
						1588-1588
					</h3>

					<p class="stext-107 cl7 size-201">
						1번 : 배송 / 교환 / 환불관련
					</p>
					<p class="stext-107 cl7 size-201">
						2번 : 결제 / 회원 관련
					</p>
					<p class="font_basic">오전9시~오후6시 운영 / 토,일,휴일 휴무</p>
					
					<div class="p-t-27">
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-pinterest-p"></i>
						</a>
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h3 class="stext-301 cl7 p-b-30">
						ETC
					</h3>

					<form>
						<!-- <div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
							<div class="focus-input1 trans-04"></div>
						</div> -->

					</form>
						<div class="p-t-18">
						<c:if test="${!empty sessionScope.loginUser }">
						<c:url var="enterStore" value="eStoreView.mn"/>
							<button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04"
							 onclick="location.href='${enterStore}' ">
								입점 문의
							</button>
							</c:if>
							<c:if test="${empty sessionScope.loginUser }">
							<button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04"
							 onclick="location.href='${loginPage}' ">
								입점 문의
							</button>
							</c:if>
						</div>
				</div>
			</div>

			<div class="p-t-40">
				<div class="flex-c-m flex-w p-b-18">
					<a href="#" class="m-all-1">
						<img src="/brocoli/resources/mainResources/images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="/brocoli/resources/mainResources/images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="/brocoli/resources/mainResources/images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="/brocoli/resources/mainResources/images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="/brocoli/resources/mainResources/images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div>

				
			</div>
		</div>
	</footer>
</html>