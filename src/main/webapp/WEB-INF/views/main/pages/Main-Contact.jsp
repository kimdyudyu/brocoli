<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-Cart.jsp" %>
	
<style>
#header-color6{
	color:#6c7ae0
}
</style>
</head>
<body class="animsition">



<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/resources/mainResources/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center" style="color:white;">
			Contact
		</h2>
	</section>	


	<!-- Content page -->
	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr">
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								강남대로점
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								Brocoil 스토어 스파크타워 B1,1,2,3층 <br>서울특별시 서초구 서초동 1304-3
							</p>
						</div>
					</div>
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								홍대거리점
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								Brocoil 스토어 남부빌딩 ,<br> 서울특별시 서울 24 홍익로 동교동 마포구
							</p>
						</div>
					</div>
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								이태원점
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								Brocoil 스토어 이태원 ,<br> 서울특별시 용산구 이태원1동 이태원로 179
							</p>
						</div>
					</div>

				</div>

				<div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								명동패션거리점
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								Brocoli 스토어 명동 눈스퀘어 1,2,3,4층 ,<br> 서울특별시 중구 명동2가 83-5
							</p>
						</div>
					</div>
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								부산서면점
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								Brocoil 스토어 롯데백화점 부산본점 8층, 부산광역시 부산진구 부전2동 가야대로 772 롯데백화점 부산본점 지하 1층
							</p>
						</div>
					</div>
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								대구동성로점
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								Brocoil 스토어 대구동성로 힐탑빌딩 4,5층 , <br> 대구광역시 중구 성내1동 동성로 17
							</p>
						</div>
					</div>

					
				</div>
			</div>
		</div>
	</section>	
	
	
	<!-- Map -->
	<div class="map">
		<div class="size-303" id="google_map" data-map-x="37.499296" data-map-y="127.027077" data-pin="/brocoli/resources/mainResources/images/icons/pin.png" data-scrollwhell="0" data-draggable="1" data-zoom="11"></div>
		<br><br>		
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="/brocoli/resources/mainResources/js/map-custom.js"></script>
<!--===============================================================================================-->
   <script src="/brocoli/resources/mainResources/js/main.js"></script>

</body>
</html>