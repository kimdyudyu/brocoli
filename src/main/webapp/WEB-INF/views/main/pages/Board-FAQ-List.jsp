<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문 </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.js"></script>
  
	<%@ include file="All-Cart.jsp" %>
	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %>

  <style>
  
   #all{
	/* 	border:1px solid red; */
		margin: auto;
		width: 70%;
		height: 110%;			
  		}
  		   
	#accordian li{ list-style:none;}
	#accordian li >h3{ cursor:pointer;}
		li > ul{ display:none;}
		li > ul >li{ color:#222;}
		
	li{
		margin-bottom: 10px;
	}
	
	ul{
		margin:10px;
	}
  </style>
  
</head>
<body>
<div id="all" style="height: auto;">
<br>
<h1 style=" color: #22; padding:7%; text-align: center; font-weight: bold;">자주 묻는 질문</h1>
<br>
<div id="accordian">
	<div id="accordian">
	<ul>
		<li id="a">
			<h1 style="font-size: 25px;">Q 현금 환불은 언제 되나요?<span class="ico_ar">&nbsp;&nbsp;&nbsp;▼</span></h1>
			<ul>
				<li style="background: #2222; padding: 4%;">
					무통장입금/편의점결제 후 환불 요청 시 영업일 기준으로 다음날 오후 5시 이후에 되고 있습니다.<br>
					단, 편의점결제는 수수료 2%차감후 환불됩니다.
				</li>
			</ul>
		</li>
		
		<li id="a">
			<h1 style="font-size: 25px;">Q 브랜드 상품 교환/반품은 어떻게 하나요?<span class="ico_ar">&nbsp;&nbsp;&nbsp;▼</span></h1>
			<ul>
				<li style="background: #2222; padding: 4%;">
				        브랜드 상품도 BROCOLI 상품과 동일하게 접수해 주시면 됩니다.<br> 
					하지만, 착용 후 제품은 브랜드마다 a/s 기준이 다르기 때문에<br>
					해당 브랜드 고객센터로 문의주셔야 하오니 참고하여 이용부탁드립니다.<br>
					(브랜드 전화번호는 상세 페이지 하단에 기재되어 있습니다.)
				</li>
			</ul>
		</li>
		
		<li id="a">
			<h1 style="font-size: 25px;">Q 재고확보된 제품부터 먼저 받을 수 있나요?<span class="ico_ar">&nbsp;&nbsp;&nbsp;▼</span></h1>
			<ul>
				<li style="background: #2222; padding: 4%;">
					BROCOLI의 기본 상품준비 기간은 2~7일(영업일 기준) 입니다. <br>
					상품 준비 기간(2-7일) 내에 준비된 제품 먼저 선출고 원하실 경우에는<br>
					배송비(2500원) 입금해주시면 발송이 가능한 점 안내드립니다.<br>
					선출고 요청은 문의사항게시판, 고객상담센터를 통해 가능합니다.
				</li>
			</ul>
		</li>
		
		<li id="a">
			<h1 style="font-size: 25px;">Q 입금 확인이 안돼요!<span class="ico_ar">&nbsp;&nbsp;&nbsp;▼</span></h1>
			<ul>
				<li style="background: #2222; padding: 4%;">
					입금확인은 은행과 사이트(BROCOLI) 사이 빠른 계좌 조회 service로 자동확인이 되고 있습니다.<br><br>
					
					입금확인이 자동에서 누락되는 경우<br>
					1) 입금자명이 다를 경우(주문자와 입금자가 다를 경우 꼭 입금자로 입금하셔야 함)<br>
					2) 주문 시 선택하신 입금은행과 입금시 은행이 다를 경우(예 : 주문 시 농협, 실제 입금은행은 국민은행)<br>
					3) 주문금액과 동일하지 않을 경우 (예 : 주문금액 50,000원인데 51,000원으로 입금하실 경우)<br>
					4) 같은 주문서가 중복으로 존재할 경우<br>
					5) 주문하시고 7일 이내에 입금하시지 않으면 자동 취소 처리됩니다.<br>
					6) ATM기기 이용 시 핸드폰번호로 입금 하실 경우<br>
					<br>
					위 사항 중에 하나라도 해당된다면 문의사항게시판을 통해 남겨 주시거나 고객센터(1588-1588)로 전화 주셔야 처리됩니다.<br>
					 자동취소되는 7일 이후에 입금하시게 되면 고객센터로 꼭 연락주셔야 됩니다.
				</li>
			</ul>
		</li>
		
		<li id="a">
			<h1 style="font-size: 25px;">Q 입금을 많이 했어요.(또는 적게 입금했어요.)<span class="ico_ar">&nbsp;&nbsp;&nbsp;▼</span></h1>
			<ul>
				<li style="background: #2222; padding: 4%;">
					간혹 ATM기기로 무통장입금하시는 경우 백원단위이하의 금액이 입금이 안되기때문에 주문한금액보다 더 입금하시는 경우가 있는데요,<br>
					추가 입금된 잔돈은 예치금으로 적립해드리고 있어요. 이후, 계좌환불 원하실경우 계좌환불 가능합니다.<br>
					입금을 주문금액보다 적게 하신경우에는 부족금액을 꼭 입금하셔야 배송진행됩니다.
				</li>
			</ul>
		</li>
		
		<li id="a">
			<h1 style="font-size: 25px;">Q 주문후 입금은 언제까지 해야되나요?<span class="ico_ar">&nbsp;&nbsp;&nbsp;▼</span></h1>
			<ul>
				<li style="background: #2222; padding: 4%;">
					주문후 입금은 주문일로부터 7일이내에 입금을 해주셔야 합니다.<br>
					입금이 주문일로부터 7일이 경과된후 입금을 해주시면 주문이 자동취소되어 입금확인이 되지 않습니다.<br>
					<br>
					주문이 취소 된 후에 입금을 하신경우는 고객센터(1588-1588) or 문의사항게시판으로 연락바랍니다<br>
					고객센터로 연락시에 재주문을 하실경우는 입금확인을 해드리고 환불을 원하시는 경우에는 예치금환불 또는 계좌환불 해드립니다.
				</li>
			</ul>
		</li>
		
		<li id="a">
			<h1 style="font-size: 25px;">Q 배송 전 상품변경 & 주문취소하고 싶어요!<span class="ico_ar">&nbsp;&nbsp;&nbsp;▼</span></h1>
			<ul>
				<li style="background: #2222; padding: 4%;">
					* 1:1게시판(취소변경)또는 고객센터로 연락주시면 빠른처리도와드리고 있습니다.<br><br>

					1. 주문내역에 입금전이실 경우에는 마이페이지에서 기존주문을 취소하신후 재주문 해주시면됩니다.<br>
					2. 입금확인이 완료된 후에 주문하신 상품이 아직 발송전단계라면 마이페이지에서 직접취소 가능합니다.<br>
					이미 상품출고준비 단계일때는 취소가 불가능합니다. 배송받으신 후 반품처리해주셔야됩니다.<br>
					<br>
					* 1:1게시판이용시> 취소변경 카테고리가 아닌 다른 카테고리이용시에는 처리 불가및 배송비 지원이 불가할수있습니다 *<br>
					<br>
					1. 무통장입금주문시(또는 실시간계좌이체 부분취소) 환불요청은 예금주성함/은행명/계좌번호 또는 예치금환불 어떤방법으로 원하시는지 자세히 알려주세요.<br>
					(알려주신계좌가 오류가 있으신 경우에는 빠른처리가 불가능하시니 보다 정확하게 확인후 기재해주세요)<br>
					2. 카드결제취소요청은 취소접수 후에 카드사의 승인을 거쳐 취소가 되므로 환불받으시는 기간은 3-7일 사이 정도 소요됩니다.<br>
					3. 휴대폰결제시 결제하신 당월만 결제취소, 꼭 전체주문취소만 가능하시어 부분적으로 취소를 원하시는 경우 전체취소 후 번거로우시더라도 재주문 해주셔야 합니다.<br>
					4. 상품변경요청시 변경하실 정확한 상품이름 색상 사이즈 누락없이 꼼꼼히 기재부탁드리며 주소지변경 또한 정확한 주소지로 알려주시기바랍니다.
				</li>
			</ul>
		</li>
		
		<li id="a">
			<h1 style="font-size: 25px;">Q 회원ID와 패스워드를 잊어버렸어요.<span class="ico_ar">&nbsp;&nbsp;&nbsp;▼</span></h1>
			<ul>
				<li style="background: #2222; padding: 4%;">
					ID와 Password를 잊어버렸을 경우에는, 쇼핑몰 상단의 [로그인] 버튼을 클릭하신후, 하단에 [아이디/비밀번호 찾기]버튼을 클릭하세요.<br>
					절차에 따라 입력을 하시면, ID확인과 임시 비밀번호를 발급 받으실 수 있습니다.<br>
					임시 비밀번호로 로그인을 하신 후 고객님께서 원하시는 비밀번호로 변경하시면 됩니다.<br><br>

					※ 위방법이 어려우실경우에는 고객센터 [1588-1588]로 연락하시면 본인 확인후 빠른처리 도와드리겠습니다.<br>
				</li>
			</ul>
		</li>
		
			<li id="a">
			<h1 style="font-size: 25px;">Q 불량 사유가 안되는 경우도 있나요?.<span class="ico_ar">&nbsp;&nbsp;&nbsp;▼</span></h1>
			<ul>
				<li style="background: #2222; padding: 4%;">
					배송 및 포장 담당 직원분들께서 꼼꼼하게 검수하여 배송하고 있지만, 사람이 하는 일이라 가끔 실수로 놓치는 경우가 있답니다.<br>
					불량 상품으로 판단하여 본사에 연락없이 상품을 보내주시는 경우에는 불량 확인되는대로 처리해 드리고 있으나,<br>
					아래 공지된 '불량 사유가 아닌 경우'의 상품은 불량 처리가 어려운 점 안내드립니다.<br>
					<br>
					1. 실밥이 많아요.<br>
					BROCOLI는 고객님들께 좋은 상품 좋은 서비스로 보답하기 위해 가격을 낮추며 중간 공정 인건비를 줄이게 되었습니다.<br>
					그렇기 때문에 상품의 실밥 처리나 마감 처리가 완벽하지 않을 수 있습니다.<br>
					이 부분은 양해 부탁드리며 번거로우시겠지만 실밥의 경우 쪽가위로 정리해주시면 감사하겠습니다. 이 경우 불량이 될 수 없는 점 참고 부탁드립니다.<br>
					<br>
					2. 지퍼가 잘 안 올라가요.<br>
					간혹 지퍼불량으로 보내주신 상품들 중 확인해보면 지퍼에 천이나 실이 걸려 지퍼불량으로 보내주시는 경우가 종종 있습니다.<br>
					해당 사항은 불량이 아니며 , 지퍼에서 천이나 실을 제거하시면 지퍼가 잘 작동합니다.<br>
					새 상품 지퍼같은경우, 뻑뻑한 감이 있으며 몇번 착용하시다 보면 부드러워 집니다.<br>
					뻑뻑한 감이 해소되지 않을 경우 양초로 살살 문질러 주시면 사용감이 좋아지오니 참고해주세요.<br>
					<br>
					3. 청바지에서 색이 묻어나거나 물빠짐이 있어요.<br>
					​데님소재의 경우 초반에는 물빠짐이 있을수 있으니 밝은 컬러의 의상과 코디를 피하시는 것이 좋습니다.<br>
					또한, 드라이크리닝 후 착용해 주시고, 잦은 세탁은 좋지 않답니다. 이후 세탁이 필요한 경우에는 꼭 뒤집은 상태로 찬물에 중성세제를 이용하여 가볍게 단독 세탁 부탁드립니다.<br>
					데님 물빠짐으로 인한 사유는 불량이 될 수 없는 점 참고 부탁드립니다.<br>
					<br>
					4. 새 옷에서 냄새가 심하게 나요.<br>
					새 상품의 특유한 냄새가 날 수 있습니다. (염색냄새, 가죽냄새, 본드냄새)<br>
					쇼핑몰 특성상 상품이 입고되자마자 포장되어 배송되기 때문에 냄새가 제거되지 않은 상태에서 배송이 될 수 있습니다.<br>
					이 경우 뿌리는 섬유탈취제 사용 후 통풍이 잘 되는 곳에 걸어두시면 냄새가 거의 빠진답니다.<br>
					냄새로 인한 사유는 불량이 될 수 없는 점 참고 부탁드립니다.<br>
					<br>
					5. 옷에서 돌멩이 , 모래가 나와요.<br>
					​데님 소재의 경우 워싱 방법에 따라 ​물워싱 , 약품워싱 , 모래워싱 등의 종류가 있으며 이렇게 제품의 디테일을 가미하고 퀄리티를 높이기 위해 모래 알갱이를 사용하기도 합니다.<br>
					그 과정에서 남은 잔여물이 포켓에서 나오기도 하며, 이는 상품을 만드는 과정에서 발생할 수 있는 부분으로 불량이 아닌 점 참고 부탁드립니다.<br>
					<br>
					6. 단가라 또는 패턴이 일정하지 않아요.<br>
					​단가라나 로고 상품들의 경우 재단 공정으로 인해 단가라 또는 로고 부분이 약간 사선 또는 일정하지 않을 수 있습니다. 이 부분은 불량이 될 수 없는 점 참고 부탁드립니다.<br>
					<br>
					7. 받은 상품이 축축 또는 젖어 있어요.<br>
					BROCOLI는 상품 포장 마지막 단계에서 상품의 구김 방지를 위해 스팀 샤워가 진행되며 바로 포장 작업을 하고 있습니다.<br>
					이때 간혹 습기가 남아있어 포장지 안에 습기가 차는 경우는 있으나, 통풍이 잘 되는 곳에 하루 정도 널어주시면 제거됩니다.<br>
					<br>
					8. 털 빠짐이 있어요.<br>
					양털, 뽀글이, 앙고라 소재의 특성 상 처음 몇번 착용 시 단기간은 털빠짐이 있을 수 있습니다.<br>
					털 빠짐을 줄이기 위해서는 드라이크리닝을 한번 해주시거나 도끼빗으로 빗어주셔도 좋고,<br>
					먼지제거 돌돌이를 사용 후 착용하시면 좋습니다.<br>
					<br>
					9. 실측 사이즈가 달라요.<br>
					​상품페이지 하단 상세사이즈와 수령하신 상품에 사이즈가 달라 연락을 주시거나 불량으로 반품을 보내주시는 경우가 많으나<br>
					제작 과정에서 1-3cm의 오차범위는 발생할 수 있습니다.<br>
					받으신 상품에 실측 사이즈가 3cm이상 차이가 날 경우는 불량으로 처리 가능합니다. 오차범위 내의 제품은 불량이 될 수 없는 점 참고 부탁드립니다.<br>
					<br>
					10. 세탁 후 옷이 줄어 들었어요.<br>
					​BROCOLI 상품의 경우 상품 페이지 하단 상세 정보란에 재질마다 세탁 방법이 표기되어 있습니다.<br>
					물 온도가 높을 수록 소재 특성 상 수축 현상이 생길 수 있으며, 세제에 따라서는 포함된 강한 성분으로 인해 소재가 변형될 수 있습니다.<br>
					또한, 신축성이 많은 원단일수록 수축 현상이 다수 발생합니다. 이는 세탁 후 니트(울 소재)가 줄어드는 원리와 같습니다.<br>
					면 소재의 티셔츠를 울 소재처럼 매번 드라이크리닝을 하기는 어렵기 때문에,<br>
					면의 경우 드라이세제 또는 울세제로 잠깐 담궜다가 단독손세탁 방법을 상세페이지 하단에 안내드리고 있습니다.<br>
					소재에 따라 안내드리는 세탁방법을 준수해주셔야 원 상태를 유지할 수 있습니다.<br>
					이처럼 표기되어 있는 세탁 방법을 따르지 않아 제품이 변형된 경우, 불량으로 볼 수 없는 점 참고 부탁드립니다.<br>
					<br>
					11. 착용 후 보풀이 많이 생겨요.<br>
					보풀은 마찰이 잦은 곳에 발생하는 현상이며 마찰에 취약한 소재일수록 보풀이 잘 생깁니다.<br>
					양털, 앙고라, 니트 소재와 같이 겉면이 매끄럽지 않을수록 보풀이 심하게 인다고 느끼실 수 있습니다.<br>
					보풀은 마찰이 잦은 편에 속하는 가방 매는 곳, 겨드랑이, 팔 부분, 엉덩이 등에 잘 생기며<br>
					생활습관, 소재 특성에 따라 보풀이 생기는 정도는 매우 다르기 때문에 위 사유는 불량이 될 수 없는 점 참고 부탁드립니다.<br>
					<br>
					12. 단추의 구멍이 작아요.<br>
					​제작 공정 시 단춧구멍이 작게 마감되는 경우가 간혹 있습니다.<br>
					단춧구멍 테두리에는 원단이 풀리지 않도록 박음마감 되어 있기 때문에 단추에 맞게 쪽가위로 살짝만 터주시면 정상적으로 착용이 가능합니다.<br>
					이에 위 사유는 불량이 될 수 없는 점 참고 부탁드립니다.<br>
					<br>
					13. 단추 주변에 오염이 있어요.<br>
					제작 공정 시에 단추의 위치를 표시하기 위해 초크나 매직펜을 이용합니다.<br>
					이 부분은 오염이 아니며, 물이 닿으면 깨끗하게 사라지는 부분으로 위 사유는 불량이 될 수 없는 점 참고 부탁드립니다.<br>
					<br>
					14. 제품 라벨이 잘려 있어요.<br>
					해외 제작 수입 상품은 국내로 입고되는 과정(세관 통과)에서 라벨이 컷팅되어 입고되기도 합니다. 이는 새 상품이 맞으며, 위 사유는 불량이 될 수 없는 점 참고 부탁드립니다.<br>
				</li>
			</ul>
		</li>
		
			<li id="a">
			<h1 style="font-size: 25px;">Q 회원ID와 패스워드를 잊어버렸어요.<span class="ico_ar">&nbsp;&nbsp;&nbsp;▼</span></h1>
			<ul>
				<li style="background: #2222; padding: 4%;">
					ID와 Password를 잊어버렸을 경우에는, 쇼핑몰 상단의 [로그인] 버튼을 클릭하신후, 하단에 [아이디/비밀번호 찾기]버튼을 클릭하세요.<br>
					절차에 따라 입력을 하시면, ID확인과 임시 비밀번호를 발급 받으실 수 있습니다.<br>
					임시 비밀번호로 로그인을 하신 후 고객님께서 원하시는 비밀번호로 변경하시면 됩니다.<br><br>
<br>
					※ 위방법이 어려우실경우에는 고객센터 [1588-1588]로 연락하시면 본인 확인후 빠른처리 도와드리겠습니다.<br>
				</li>
			</ul>
		</li>		
	</ul>
	<br><br>
</div>	
</div>
</div>
<script>
              
$(function(){
	$("#accordian h1").click(function(){
		$("#accordian ul ul").slideUp();
		$('.ico_ar').css('transform','none');
		if(!$(this).next().is(":visible"))
		{
			$(this).next().slideDown();
			$(this).find('.ico_ar:eq(0)').css('transform','rotate(180deg)');
		}
	})
})


</script>


  
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