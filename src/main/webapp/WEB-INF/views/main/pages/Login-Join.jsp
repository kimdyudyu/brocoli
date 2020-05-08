<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<title>회원가입 창</title>

		<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-Cart.jsp" %>
<style>
	#all{
		  /* border:1px solid red; */
          margin: auto;
          width: 50%;
          height: 150%;
          margin-top: 30px;
	}
	
	#all2{
	    border: 1px solid #222;
   		border-radius: 10px;
   		padding: 16px
    }
    
    #ck{
    	height: 26px;
    	width: 17px;
    }
	
	#agree{
		border: 1px solid #222;
		font-size:80%;
		width:99%;
		height:150px;
	}
	
	input[id="birthDay"]::-webkit-outer-spin-button,
	input[id="birthDay"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}


	span.guide{display:none; font-size: 12px; top: 12px; right: 10px;}
	span.ok{color:green;}
	span.error{color:red;}

	span.mGuide{display:none; font-size: 12px; top: 12px; right: 10px;}
	span.error2{color:red;}
	span.ok2{color:green;}
</style>

</head>
<body>

<form action="join.mn" method="post">
	<div id="all">
			<h2 style="background: #222; color: white; padding:4%; text-align: center">회원 가입</h2><Br>
			<hr>
	<div id="all2">
		<div class="form-group">
      		<label for="userId">이름 : </label>
    		<input type="text" class="form-control" id="mName" name="mName" style="width:80%;" required>
   		</div>   		
   		
  		<div class="form-group">
      		<label for="userId">아이디 : </label>
      		<div style="display: flex;">
    		<input type="text" class="form-control" id="mId" name="mId" style="width:80%;" placeholder="아이디는 빈 칸 없이 영어+숫자 4~15자만 사용 가능합니다." required> &nbsp;&nbsp;&nbsp;
    		<button type="button" class="btn btn-primary" onclick="validateCheck();" style="background: #222; border: 1px solid #999; width: 19%;">중복확인</button>
    		<input type="hidden" name="idDuplicateCheck2" id="idDuplicateCheck2" value="0" />
    		</div>
   		</div>
   		
   		<div class="form-group">
      		<label>비밀번호 : </label>
    		<input type="password" class="form-control" id="pwd" name="pwd" style="width:80%;" placeholder="비밀번호는 8자 이상 20자 이내 영문 대소문자+숫자+특수문자로 입력해주세요." required>
    		<input type="hidden" name="pwdDuplicateCheck3" id="pwdDuplicateCheck3" value="0" />
   		</div>
   		
   		<div class="form-group">
      		<label for="userId">비밀번호 확인 : </label>
    		<input type="password" class="form-control" id="pwd2" name="pwd2" style="width:80%;"  required>
    		<span class="guide ok">비밀번호가 일치합니다.</span>
						<span class="guide error">비밀번호를 다시 확인해주세요.</span>
						<input type="hidden" name="pwdDuplicateCheck2" id="pwdDuplicateCheck2" value="0" />
						
   		</div>
   		
   		<div class="form-group">
      		<label>생년월일 : </label>
    		<input type="number" class="form-control" id="birthDay" name="birthDay" style="width:80%;" placeholder="- 없이 yyyyMMdd 형식으로 입력" required>
    		<input type="hidden" name="birthDuplicateCheck2" id="birthDuplicateCheck2" value="0" />
   		</div>
   		
   		<div class="form-group" >
	   		<label >성별 : </label>
	   		
	   		<div style="display: inline-flex">
	   			<input type="radio" name="gender" id="gender" value="M">&nbsp; 남
	   		</div>
	   		&nbsp;
	   		<div style="display: inline-flex">
	   			<input type="radio" name="gender" id="gender" value="F">&nbsp; 여
   			</div>			
   		</div>
   		
   		<div class="form-group">
      		<label>배송지 입력 : </label>
      		<div style="display: flex;">
	      		<input type="text" class="form-control" id="post" name="post" style="width:30%;" placeholder="우편번호">&nbsp;&nbsp;&nbsp;
	      		<button type="button" class="btn btn-primary" style="background: #222; border: 1px solid #999; width: 20%;" onclick="postcodify_search();">우편번호 검색</button>
      		</div>
      		<br />
      		<div>
    		<input type="text" class="form-control" id="address1" name="address1" style="width:80%;" placeholder="도로명  + 지번주소">    		
    		<span id="amado" name="amado" style="color:#999;display:none"></span>
    		
   			</div>   		
      		<br>
      		<div>
    		<input type="text" class="form-control" id="address2" name="address2"  style="width:80%;" placeholder="상세주소">    		
   			</div>   		
   		</div>
   		
   	
   		
   		
   		<div class="form-group">
      		<label for="userId">이메일 : </label>
      		<div style="display: flex;">
    		<input type="email" class="form-control" id="email" name="email" style="width:80%;">&nbsp;&nbsp;&nbsp;
    		<button type="button" class="btn btn-primary" style="background: #222; border: 1px solid #999; width: 20%;" onclick="pop_up();">이메일 인증하기</button>
    		</div>
    		<span class="mGuide error2">메일주소를 다시 확인해주세요.</span>
    		<input type="hidden" name="mailDuplicateCheck2" id="mailDuplicateCheck2" value="0" />
    		<input type="hidden" name="mailDuplicateCheck3" id="mailDuplicateCheck3" value="0" />
   		</div>

		<div class="form-group">
      		<label for="phone">휴대폰 : </label>
    		<input type="tel" class="form-control" id="phone" name="phone" style="width:80%;">
   		</div>
   		
   		
   		
   		
  
   		
   	
 </div>
   	<br>
   		<div class="form-group">
   			<label for="Agree">이용 약관 동의</label>
   			<div style="display: inline-flex">
   			<input type="checkBox" name="ck" id="ck" value="">&nbsp; BROCOLI 개인정보수집동의(필수)
   			</div>
   			
   			<div>
<pre id="agree">
(주)BROCOLI는 아래의 목적으로 개인정보를 수집 및 이용하며,
회원의 개인정보를 안전하게 취급하는데 최선을 다하고 있습니다.

1. 수집목적
- 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
- 민원사무 처리
- 재화 또는 서비스 제공
- 마케팅 및 광고에의 활용

2. 수집항목
회원가입 시
(필수) 아이디, 비밀번호, 이메일
(선택) 추천인 아이디

주문 배송 시
(필수) 구매자 정보(이름, 이메일, 핸드폰번호, 전화번호),
수령자 정보(이름, 핸드폰번호, 전화번호, 배송지 주소)
(선택) 환불계좌

마이 사이즈 추천 시
(선택) 키, 몸무게 등의 개인 신체사이즈 정보

중고장터 이용 시
(필수) 이메일주소, 핸드폰번호, 계좌번호(마지막 4자리는 저장하지 않습니다)

본인인증 시
(필수) 이름, 성별, 생년월일, 휴대폰번호, CI/DI, 본인인증결과

3. 보유기간
수집된 정보는 회원탈퇴 요청 5일 후 지체없이 파기됩니다.
다만 내부 방침에 의해 서비스 부정이용기록은 부정 가입 및 이용 방지를 위하여
회원 탈퇴 시점으로부터 최대 1년간 보관 후 파기하며,
관계법령에 의해 보관해야 하는 정보는 법령이 정한 기간 동안 보관한 후 파기합니다.
서비스 제공을 위해 필요한 최소한의 개인정보이므로 동의를 해 주셔야
서비스 이용이 가능합니다.
더 자세한 내용에 대해서는 개인정보처리방침을 참고하시기 바랍니다. 			
</pre>
   			</div>
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="ck" id="ck" value="">&nbsp; BROCOLI 이용 약관(필수)
   			</div>
   			<div>
<pre id="agree">
제1조(목적) 이 약관은 주식회사 무신사가 운영하는 사이버 몰 
“BROCOLI”(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스를
이용함에 있어 사이버 몰과 이용자의 
권리․의무 및 책임사항을 규정함을 목적으로 합니다.

제2조(정의)

① “몰”이란 주식회사 무신사가 재화 또는 용역(이하 “재화 등”이라 함)을 
이용자에게 제공하기 위하여컴퓨터 등 정보통신설비를 이용하여
재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 
아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.

② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 
회원 및 비회원을 말합니다.

③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 
이용할 수 있는 자를 말합니다.

④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.

제3조 (약관 등의 명시와 설명 및 개정)

① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소
(소비자의 불만을 처리할 수 있는 곳의 주소를 포함),
전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호, 
개인정보관리책임자등을 이용자가 쉽게 알 수 있도록  
00사이버몰의 초기 서비스화면(전면)에 게시합니다.
다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.

② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과
 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여
  이용자의 확인을 구하여야 합니다.

③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 
「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 
「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 
「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.

④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 
그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 
다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 
사전 유예기간을 두고 공지합니다.
이 경우 "몰“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.

⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 
그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다.
다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 
개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률,
약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 
상관례에 따릅니다.

제4조(서비스의 제공 및 변경)

① “몰”은 다음과 같은 업무를 수행합니다.

1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
2. 구매계약이 체결된 재화 또는 용역의 배송
3. 기타 “몰”이 정하는 업무

② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 
계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 
이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는
용역의 내용을 게시한 곳에 즉시 공지합니다.

③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 
기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.

④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 
다만, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

제5조(서비스의 중단)

① “몰”은 컴퓨터 등 정보통신설비의 보수점검․교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는
 서비스의 제공을 일시적으로 중단할 수 있습니다.

② “몰”은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 
제3자가 입은 손해에 대하여 배상합니다.
단, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

제6조(회원가입)

① 이용자는 “몰”이 정한 가입 양식에 따라 회원정보를 기입한 후 
이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.

② “몰”은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 
해당하지 않는 한 회원으로 등록합니다.

1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우,
다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 
“몰”의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
3. 기타 회원으로 등록하는 것이 “몰”의 기술상 현저히 지장이 있다고 판단되는 경우

③ 회원가입계약의 성립 시기는 “몰”의 승낙이 회원에게 도달한 시점으로 합니다.

④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 “몰”에 대하여 
회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.

제7조(회원 탈퇴 및 자격 상실 등)

① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며 “몰”은 즉시 회원탈퇴를 처리합니다.

② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은 회원자격을 제한 및 정지시킬 수 있습니다.

1. 가입 신청 시에 허위 내용을 등록한 경우
2. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는 
채무를 기일에 지급하지 않는 경우
3. 다른 사람의 “몰” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
4. “몰”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우

③ “몰”이 회원 자격을 제한․정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 
시정되지 아니하는 경우 “몰”은 회원자격을 상실시킬 수 있습니다.

④ “몰”이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고,
회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.

제8조(회원에 대한 통지)

① “몰”이 회원에 대한 통지를 하는 경우, 회원이 “몰”과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.

② “몰”은 불특정다수 회원에 대한 통지의 경우 1주일이상 “몰” 게시판에 게시함으로서 
개별 통지에 갈음할 수 있습니다.
다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.

제9조(구매신청 및 개인정보 제공 동의 등)

① “몰”이용자는 “몰”상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며,
“몰”은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.
1. 재화 등의 검색 및 선택
2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력
3. 약관내용, 청약철회권이 제한되는 서비스, 배송료․설치비 등의 비용부담과 관련한 내용에 대한 확인
4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시
(예, 마우스 클릭)
5. 재화등의 구매신청 및 이에 관한 확인 또는 “몰”의 확인에 대한 동의
6. 결제방법의 선택

② “몰”이 제3자에게 구매자 개인정보를 제공할 필요가 있는 경우 
1) 개인정보를 제공받는 자,
2)개인정보를 제공받는 자의 개인정보 이용목적,
3) 제공하는 개인정보의 항목,
4) 개인정보를 제공받는 자의 개인정보 보유 및 이용기간을 구매자에게 알리고 동의를 받아야 합니다.
(동의를 받은 사항이 변경되는 경우에도 같습니다.)


③ “몰”이 제3자에게 구매자의 개인정보를 취급할 수 있도록 업무를 위탁하는 경우에는
1) 개인정보 취급위탁을 받는 자, 
2) 개인정보 취급위탁을 하는 업무의 내용을 구매자에게 알리고 동의를 받아야 합니다. 
동의를 받은 사항이 변경되는 경우에도 같습니다.) 
다만, 서비스제공에 관한 계약이행을 위해 필요하고 구매자의 편의증진과 관련된 경우에는 
「정보통신망 이용촉진 및 정보보호 등에 관한 법률」에서 정하고 있는 방법으로 개인정보 
취급방침을 통해 알림으로써 고지절차와 동의절차를 거치지 않아도 됩니다.


제10조 (계약의 성립)

① “몰”은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다.
다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는
법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.

1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
3. 기타 구매신청에 승낙하는 것이 “몰” 기술상 현저히 지장이 있다고 판단하는 경우

② “몰”의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.

③ “몰”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 
관한 정보 등을 포함하여야 합니다.

제11조(서비스 대상물품)

"몰"은 "몰"이용자의 자가 사용의 목적으로 구매하여 수입하는 경우에만 서비스를 제공하며,
한편 아래의 경우 고객의 동의를 구한 후 한국으로 발송하거나 해당 발송자에 게로 반송할 수 있으며 
"몰"이용자의 귀책 사유로 인해 회원의 소재가 불명확한 경우 "몰"은 당해 물품을 발송인에게 반송하고 
이를 회원에게 통보하며,소요비용은 "몰"이용자로부터 정산하거나 
"몰"의 임의대로 물품을 처리하여 충당할 수 있습니다.
가.
관세법 제234조(수출입의 금지) 다음 각호의 1에 해당하는 물품은 수출 또는 수입할 수 없다.
1)
헌법질서를 문란하게 하거나 공공의 안녕질서 또는 풍속을 해치는서적•간행물•도화•영화•음반• 
비디오물•조각물 기타 이에 준하는 물품

2)
정부의 기밀을 누설하거나 첩보활동에 사용되는 물품

3)
화폐•채권 기타 유가증권의 위조품•변조품 또는 모조품
①
목록통관 배제대상물품
- 의약
- 한약재
- 야생동물 관련상품
- 농림축수산물등 검역대상물품
- 건강기능식품
- 지적재산권 위반 의심물품식품류
- 식품류, 과자류
- 화장품(기능성화장품, 태반함유화장품, 스테로이드제 함유화장품, 성분미상유해화장품)
- 전자상거래 물품 등의 특별한 통관절차에 관한 고시 제3-3조 제3항에 따라 특별통관대상업체로
    지정되지 아니한 전자상거래업체가 수입하는 물품
- 통관목록 중 품명, 규격, 수량, 가격 등이 부정확하게 기재된 물품
- 그 밖에 법 제226조에 따른 세관장확인대상물품 등 목록통관이 타당하지 하니하다고 세관장이 인정하는 물품


4)
동물, 금,은괴, 화폐, 무기류, 인체의 일부, 정밀금속, 석재류,냉장보관물품,냉장보관물품,
냉동 또는 냉장을 요하는 물품 및 폭발물, 가연성 위험물 등

5)
수입, 수출 불가 / 항공운송 불가 품목일 경우

6)
송장(Invoice) 부실기재, 포장불량 등으로 본 약관에 따른 서비스를 제공하기에 적절하지 않다고 "몰"이 판단하는 경우

7)
기타 관련법령에 의하여 수출입이 제한되는 물품을 대상으로 한 경우

제12조(지급방법) “몰”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법중 가용한 방법으로 
할 수 있습니다.
단, “몰”은 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.

1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체
2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제
3. 온라인무통장입금
4. 전자화폐에 의한 결제
5. 수령 시 대금지급
6. 마일리지 등 “몰”이 지급한 포인트에 의한 결제
7. “몰”과 계약을 맺었거나 “몰”이 인정한 상품권에 의한 결제
8. 기타 전자적 지급 방법에 의한 대금 지급 등

제13조(수신확인통지․구매신청 변경 및 취소)

① “몰”은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.

② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및
취소를 요청할 수 있고 “몰”은 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다.
다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다.

제14조(재화 등의 공급)

① “몰”은 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 
이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 
포장 등 기타의 필요한 조치를 취합니다. 
다만, “몰”이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 
3영업일 이내에 조치를 취합니다. 
이때 “몰”은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.

② “몰”은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다.
 만약 “몰”이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 
 다만 “몰”이 고의․과실이 없음을 입증한 경우에는 그러하지 아니합니다.

제15조(환급) “몰”은 이용자가 구매신청한 재화 등이 품절 등의 사유로 인도 또는 
제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는
 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.

제16조(청약철회 등)

① “몰”과 재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」
 제13조 제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게
 이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)
 부터 7일 이내에는 청약의 철회를 할 수 있습니다. 
 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에 달리 정함이 있는
 경우에는 동 법 규정에 따릅니다.

② 이용자는 재화 등을 배송 받은 경우 다음 각 호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.

1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기
 위하여 포장 등을 훼손한 경우에는 
청약철회를 할 수 있습니다)
2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우
3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우
4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우

③ 제2항제2호 내지 제4호의 경우에 “몰”이 사전에 청약철회 등이 제한되는 사실을 소비자가 
쉽게 알 수 있는 곳에 명기하거나 
시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.

④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시•광고 내용과 다르거나 
계약내용과 다르게 이행된 때에는 
당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 
30일 이내에 청약철회 등을 할 수 있습니다.

제17조(긴급조치)

① "몰"이용자는 위법, 불법 또는 부당한 목적을 위해 서비스를 이용한다고 "몰"이 판단하는 때에는 "몰"은 
관련 물품의 수취나 배송을 거절할 권리를 가집니다.

② 관할관청 또는 당국에 의해 "몰"에 의해 서비스되는 물품에 대해 제재를 받았을 때 "몰"은 해당물품을 관할관청 또는 
당국에 인도하는 것을 원칙으로 합니다.
이로 인하여 "몰"이용자가 손해를 입었다고 할지라도 해당 손해에 대해서 "몰"은 일체의 책임을 지지 않으며 
또한 "몰"이용자는 해당 물품에 대한 서비스 이용요금 및 관련비용 등 의 지급의무를 면하지 아니합니다.

③ "몰" 주소로 배송된 물품에 악취, 액체누수 그 외 이상이 있다고 인정됐을 경우 및 기타 긴급을 필요로 하고 
정당한 이유가 있다고 인정이 됐을 경우 "몰"은 "몰"이용자에게 해당사실을 통지하고 해당물품을 별도 장소로 이동
 보관하는 등 임시조치를 취할 수 있습니다. 이로 인해 발생하는 추가비용은 "몰"이용자가 부담하여야 하며 
 또한 "몰"이용자에게 손해가 발생하더라도 해당 손해에 대하여 "몰"은 일체의 책임을 지지 않습니다.



제18조(청약철회 등의 효과)

① “몰”은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 
이 경우 “몰”이 이용자에게 재화등의 환급을 지연한때에는 그 지연기간에 대하여 
「전자상거래 등에서의 소비자보호에 관한 법률 시행령」
제21조의2에서 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.

② “몰”은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 
대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 
정지 또는 취소하도록 요청합니다.

③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 
이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시•광고 내용과 다르거나 
계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “몰”이 부담합니다.

④ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 “몰”은 청약철회 시 그 비용을 누가 부담하는지를 
이용자가 알기 쉽도록 명확하게 표시합니다.

제19조(개인정보보호)

① “몰”은 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다.

② “몰”은 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 
구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.

③ “몰”은 이용자의 개인정보를 수집•이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다.

④ “몰”은 수집된 개인정보를 목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 
제3자에게 제공하는 경우에는 이용•제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 
다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.

⑤ “몰”이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원
(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 
제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등
 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리 명시하거나 
 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.

⑥ 이용자는 언제든지 “몰”이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에 
대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은 
그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.
⑦ “몰”은 개인정보 보호를 위하여 이용자의 개인정보를 취급하는 자를 최소한으로 제한하여야 하며 신용카드, 
은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 
이용자의 손해에 대하여 모든 책임을 집니다.

⑧ “몰” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 
때에는 당해 개인정보를 지체 없이 파기합니다.

⑨ “몰”은 개인정보의 수집•이용•제공에 관한 동의 란을 미리 선택한 것으로 설정해두지 않습니다. 또한 
개인정보의 수집•이용•제공에 관한 이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고, 
필수수집항목이 아닌 개인정보의 수집•이용•제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을
 제한하거나 거절하지 않습니다.

제20조(“몰“의 의무)

① “몰”은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 
안정적으로 재화․용역을 제공하는데 최선을 다하여야 합니다.

② “몰”은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)
보호를 위한 보안 시스템을 갖추어야 합니다.

③ “몰”이 상품이나 용역에 대하여 「표시․광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시․광고행위를 함으로써 
이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.

④ “몰”은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.

제21조(회원의 ID 및 비밀번호에 대한 의무)

① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.

② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.

③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 
바로 “몰”에 통보하고 “몰”의 안내가 있는 경우에는 그에 따라야 합니다.

제22조(이용자의 의무) 이용자는 다음 행위를 하여서는 안 됩니다.

1. 신청 또는 변경시 허위 내용의 등록
2. 타인의 정보 도용
3. “몰”에 게시된 정보의 변경
4. “몰”이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시
5. “몰” 기타 제3자의 저작권 등 지적재산권에 대한 침해
6. “몰” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위

제23조(연결“몰”과 피연결“몰” 간의 관계)

① 상위 “몰”과 하위 “몰”이 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 
그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 
전자를 연결 “몰”(웹 사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다.

② 연결“몰”은 피연결“몰”이 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는
거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결“몰”의 초기화면 또는 연결되는 
시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.

제24조(저작권의 귀속 및 이용제한)

① “몰“이 작성한 저작물에 대한 저작권 기타 지적재산권은 ”몰“에 귀속합니다.

② 이용자는 “몰”을 이용함으로써 얻은 정보 중 “몰”에게 지적재산권이 귀속된 정보를 “몰”의 사전 승낙 없이 복제,
 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.

③ “몰”은 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.

제25조(분쟁해결)

① “몰”은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여
 피해보상처리기구를 설치․운영합니다.

② “몰”은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 
다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.

③ “몰”과 이용자 간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 
공정거래위원회 또는 시•도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.

제26조(재판권 및 준거법)

① “몰”과 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 
주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는
 거소가 분명하지 않거나 외국 거주자의 
경우에는 민사소송법상의 관할법원에 제기합니다.

② “몰”과 이용자 간에 제기된 전자상거래 소송에는 한국법을 적용합니다.

</pre>
   			</div>
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="ck" id="ck" value="">&nbsp; BROCOLI 마케팅 활용및 광고정보 수신(필수)
   			</div>
   			<div>
   			<pre id="agree">
귀하는 개인(신용)정보의 선택적인 수집∙이용, 제공에 대한 동의를 거부할 수 있습니다. 
다만, 동의하지 않을 경우 관련 편의제공(이벤트 안내, 공지사항, 할인행사)
안내 등 이용 목적에 따른 혜택에 제한이 있을 수 있습니다.
그 밖에 계약과 관련된 불이익은 없습니다. 
동의한 경우에도 귀하는 동의를 철회하거나 마케팅 목적으로 귀하에게 연락하는 것을 
중지하도록 요청할 수 있습니다.

1. 제공목적
고객에 대한 편의제공, 귀사 및 제휴업체의 상품·서비스 안내 및 이용권유, 사은·판촉행사 등의 마케팅 활동, 
시장조사 및 상품·서비스 개발연구 등을 목적으로 수집·이용

2. 제공항목
- 개인식별정보: 성명, 성별, 나이,휴대전화번호, e-mail 등
- 고객 ID, 접속 일시, IP주소 등

3. 보유기간
동의일로부터 회원 탈퇴 혹은 마케팅 동의 해제 시까지 보유·이용
※ 상기 내용이 변동하는 경우 당사의 공지사항 게시 등을 통해 그 내용을 공시 
   			</pre>
   			</div>
   		</div>
   		
   		</div>
   		<br>
   		<div style="margin-left: 40%">
   		<button type="submit" onclick="return validate2();" name="subBtn" id="subBtn"  class="btn btn-primary" style="background: #222; width: 300px; border: 1px solid #222;" disabled>가   입</button>
   		</div>
	<br><br>
	
</form>
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
  function pop_up(){
	  var email = $("#email").val();
	
	  if(email == null || email==""){
		  alert("메일을 입력해주세요.");
		  
	  }else{
	  $.ajax({
	 		url:"sendEmail.do",
	 		data:{email:email},
	 		type:"post",
	 		success:function(data){
	 			console.log(data);
	 			if(data == "ok"){
	 				alert("메일로 인증번호가 전송되었습니다.");
	 				var openwin = window.open("<c:url value='logingo.mn'/>","인증번호 입력","width = 500, height = 500, top = 100, left = 200, location = no, resizable = no");
	 				console.log("openwin:::"+openwin);
	 			}else{
	 				alert("이미 사용중인 이메일입니다.");
	 			}
	 			
	 		},error:function(jqxhr, textStatus, errorThrown){
				console.log("ajax 처리실패");
				
				// 에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
	 	});
	  }
  }
   
   $(function(){
	   
	  
		$("[name='ck']").on("click",function(){
			var f=document.forms[0];

			 if($('input:checkbox[id="ck"]:checked').length == 3 ){
				 f.subBtn.disabled=false;
			 }else{
				 f.subBtn.disabled=true;
			 }
	});
   });

   
   function validate2(){
	   
	   var rgEx = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
      var phone = document.getElementById("phone");
      
      var pwd = $("#pwd").val();
		
	
		var num = pwd.search(/[0-9]/g);
		 var eng = pwd.search(/[a-z]/ig);
		 var spe = pwd.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		 
		 if(pwd.length < 8 || pwd.length > 20){
			 $("#pwdDuplicateCheck3").val(0);
			 $("#pwd").focus();
			  alert("비밀번호를 8자리 ~ 20자리 이내로 입력해주세요.");
			  return false;
			 }else if(pwd.search(/\s/) != -1){
				 $("#pwdDuplicateCheck3").val(0);
				 $("#pwd").focus();
			  alert("비밀번호는 공백 없이 입력해주세요.");
			  return false;
			 }else if(num < 0 || eng < 0 || spe < 0 ){
				 $("#pwdDuplicateCheck3").val(0);
				 $("#pwd").focus();
			  alert("비밀번호에 영문, 숫자, 특수문자를 혼합하여 입력해주세요.");
			  return false;
			 }else {
				 $("#pwdDuplicateCheck3").val(1);
			    
			 } 
      
			var dateStr = $("#birthDay").val();
		 	var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
			var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
			var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
			var today = new Date(); // 날짜 변수 선언
			var yearNow = today.getFullYear(); // 올해 연도 가져옴
			if (dateStr.length <=8) {
			// 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
				if (1900 > year || year > yearNow){
					alert("생년월일을 알맞게 입력해주세요.");
					return false;
				} else if (month < 1 || month > 12) {
					alert("생년월일을 알맞게 입력해주세요.");
					return false;
				} else if (day < 1 || day > 31) {
					alert("생년월일을 알맞게 입력해주세요.");
					return false;
				} else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
					alert("생년월일을 알맞게 입력해주세요.");
					return false;
				} else if (month == 2) {

					var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
					if (day>29 || (day==29 && !isleap)) {
						alert("생년월일을 알맞게 입력해주세요.");
						return false;
					}//end of if (day>29 || (day==29 && !isleap))
				} else {
					$("#birthDuplicateCheck2").val(1);
				}//end of if
			}
			else {
				//1.입력된 생년월일이 8자 초과할때 :  auth:false
				alert("생년월일을 정확히 입력해주세요.");
				return false;
			}
		 
		// 가입하기 클릭시 최종 점검
		if($("#idDuplicateCheck2").val()==1 && $("#pwdDuplicateCheck2").val()==1 && $("#mailDuplicateCheck2").val()==1&&
				$("#mailDuplicateCheck3").val()==1 && $("#pwdDuplicateCheck3").val()==1 && $("#birthDuplicateCheck2").val()==1 && rgEx.test(phone.value) == true ){
			return true;
		}else{
			if($("#idDuplicateCheck2").val()!=1){
				$("#mId").focus();
				alert("ID 중복체크를 실시해주세요");
			}else if($("#pwdDuplicateCheck2").val()!=1 || $("#pwdDuplicateCheck3").val()!=1){
				$("#pwd").focus();
				alert("비밀번호를 다시 한번 확인해주세요.");
			}else if($("#birthDuplicateCheck2").val()!=1){
				$("#birthDay").focus();
				alert("생년월일을 정확히 입력해주세요.");
			}else if($("#mailDuplicateCheck2").val()!=1){
				$("#email").focus();
				alert("이메일 주소를 다시 한번 확인해주세요.")
			}else if($("#mailDuplicateCheck3").val()!=1){
				alert("이메일 인증이 필요합니다.");
				$("#email").focus();
			}else{
		         alert("휴대폰 번호를 다시 입력하세요.");
		         phone.value="";
		         phone.focus();
		       
		      }
			
			
			return false;
		}
		
	}
   
   $(function(){
		$("#email").on("keyup",function(){
			
			var email= $(this).val();
		
			
			if(email.length < 7){
				$(".mGuide").hide();
				$("#mailDuplicateCheck2").val(0);
				
				return;
			}
			
			$.ajax({
		 		url:"mailCheck.do",
		 		data:{email:email},
		 		type:"post",
		 		success:function(data){
		 			console.log(data);
		 			
		 			if(data =="ok"){
		 				$(".error2").hide();
						$(".ok2").show();
						$("#mailDuplicateCheck2").val(1);
		 				
		 			}else{	
		 				$(".ok2").hide();
						$(".error2").show();
						$("#mailDuplicateCheck2").val(0);
		 			}
		 		},error:function(jqxhr, textStatus, errorThrown){
					console.log("ajax 처리실패");
					
					// 에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
		 	});
			
			
		});
	});
   
   $(function(){
		$("#pwd2").on("keyup",function(){
			var pwd = $("#pwd").val();
			var pwd2 = $(this).val();
			
			
			if(pwd.length > pwd2.length){
				$(".guide").hide();
				$("#pwdDuplicateCheck2").val(0);
				return;
				
			}
			if(pwd != pwd2){
				$(".ok").hide();
				$(".error").show();
				$("#pwdDuplicateCheck2").val(0);
			}else{
			
				$(".error").hide();
				$(".ok").show();
				$("#pwdDuplicateCheck2").val(1);
			}
			
			
			
		});
	});
   
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
<!--===============================================================================================-->
   <script src="/brocoli/resources/mainResources/js/main.js"></script>
 <!--===============================================================================================-->
 
 <script>
 function validateCheck(){
	 var mId = $("#mId").val();
	

	 var specialCheck = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
	
	 var checkKor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

	 
	 if(mId == null || mId==""){
		 alert("ID를 입력해주세요!");
	 }else if(checkKor.test(mId)){
		 alert("ID에는 한글을 사용할 수 없습니다.");
	 
 }else if(mId.search(/\s/) != -1){
		 alert("ID는 빈 칸을 포함 할 수 없습니다.");

	 }else  if (mId.length < 4 || mId.length > 15){
		 alert("아이디는 4자 에서 15자 까지만 허용합니다.");
	 }else if(specialCheck.test(mId)){
		 alert("ID는 특수문자를 포함 할 수 없습니다.");

	 }else{
		 $.ajax({
 		url:"idCheck.do",
 		data:{id:mId},
 		type:"post",
 		success:function(data){
 			console.log(data);
 			if(data =="ok"){
 				alert("ID 사용 가능!");
 				$("#idDuplicateCheck2").val(1);
 			}else{	
 				alert("중복된 ID가 존재합니다!");
 				$("#idDuplicateCheck2").val(0);
 			}
 		},error:function(jqxhr, textStatus, errorThrown){
			console.log("ajax 처리실패");
			
			// 에러로그
			console.log(jqxhr);
			console.log(textStatus);
			console.log(errorThrown);
		}
 	});
	 }
 }
 </script>
 <!-- 우편 주소 API -->
 <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    
    function postcodify_search() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('post').value = data.zonecode;
                document.getElementById("address1").value = roadAddr;
                document.getElementById("address1").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                	document.getElementById("address2").value = extraRoadAddr;
                } else {
                	document.getElementById("address2").value = '';
                }

                var guideTextBox = document.getElementById("amado");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    if(document.getElementById("address1").value.length > 0){
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    }else{
                    	document.getElementById("address1").value = expRoadAddr;
                    }
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    if(document.getElementById("address1").value.length > 0){
                    	 guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                        }else{
                        	document.getElementById("address1").value = expJibunAddr;
                        }
                   
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
	</body>
</html>