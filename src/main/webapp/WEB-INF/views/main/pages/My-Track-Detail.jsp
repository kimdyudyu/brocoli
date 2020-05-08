<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<link rel="shortcut icon" type="image/x-icon" href="https://ssl.pstatic.net/static.checkout/layout/202003261038/images/mobile/icon/android_legacy_xxxhpdi_192x192.png" />
<link type="text/css" rel="stylesheet" href="https://ssl.pstatic.net/static.checkout/layout/202003261038/css/mobile/w_layout.css">
<link type="text/css" rel="stylesheet" href="//img.pay.naver.net/o/mstatic/css/service/mobile/buy.css?1585267116652">
<!-- <link rel="stylesheet" type="text/css" href="/brocoli/main/css/trdcss.css"> -->
</head>
   <!-- 2020.04.20 
                수정자 : 김주희
                화면 크기 변경 -->
<body >
	<div class="wrap" style="padding: 40px; margin-left: 60px; margin-right: 60px;">
        <div class="header">
				<div class="htit simple" style="background-color: #222;">
					<h1 class="h1">배송 조회</h1>
					
						<a href="javascript:window.close();" class="gnb_cls"><span class="blind">닫기</span></a>
				</div>
        </div>
        <div class="container">
            <div id="ct" role="main">



    <!--[D] 배송완료 -->
    <div class="wrap_buy_box">
        <div class="bnr_info"><span class="inner">
            <strong class="sjt">배송이 완료되었습니다.</strong>
                <span class="dsc">배송담당자 : 고객 </span>
        </span></div>
        <!--배송조회 내 상품주문 정보 삽입 -->
        <div class="goods_item">
            <div class="goods_detail">
                <div class="thumb">
                    <img src="/brocoli/main/images/product-15.jpg" width="52" height="52" alt="임시이미지">
                </div>
                <div class="goods_info">
                    <div class="goods">
                        <p class="name">상품</p>

                    </div><br>
                    <span class="link point_color" aria-hidden="true">주문상세정보 확인하기</span>
                </div>
            </div>
            <a href="javascript:void(0);" class="detail_link _click(checkout.mobile.order.delivery.deliveryTracking.moveOrderDetail(2020030565320801)) _stopDefault"><span class="blind">주문상세정보 확인하기</span></a>
        </div>
    </div>
    <div class="wrap_buy_box delivery_check">
        <table class="check_table">
            <caption class="blind">배송조회</caption>
            <colgroup>
                <col>
                <col>
                <col>
            </colgroup>
            <tbody>
                <tr>
                    <th>처리일시</th>
                    <th>현재위치</th>
                    <th>상태</th>
                </tr>
                        <tr >
                            <td>2020-03-09<br>23:59:59</td>
                            <td>고객</td>
                            <td class="latest_state">배송완료</td>
                        </tr>
                        <tr class="_state" style="display:none">
                            <td>2020-03-09<br>09:27:29</td>
                            <td>송파풍납(대)</td>
                            <td >배송완료</td>
                        </tr>
                        <tr class="_state" style="display:none">
                            <td>2020-03-09<br>08:08:00</td>
                            <td>송파풍납(대)</td>
                            <td >배송출발</td>
                        </tr>
                        <tr class="_state" style="display:none">
                            <td>2020-03-07<br>01:45:26</td>
                            <td>동남권TML</td>
                            <td >배송진행중</td>
                        </tr>
                        <tr class="_state" style="display:none">
                            <td>2020-03-07<br>01:30:18</td>
                            <td>동남권TML</td>
                            <td >배송진행중</td>
                        </tr>
                        <tr class="_state" style="display:none">
                            <td>2020-03-07<br>01:25:25</td>
                            <td>동남권TML</td>
                            <td >배송진행중</td>
                        </tr>
                        <tr class="_state" style="display:none">
                            <td>2020-03-06<br>19:26:15</td>
                            <td>대구TML</td>
                            <td >배송진행중</td>
                        </tr>
                        <tr class="_state" style="display:none">
                            <td>2020-03-06<br>19:29:05</td>
                            <td>대구TML</td>
                            <td >배송진행중</td>
                        </tr>
                        <tr class="_state" style="display:none">
                            <td>2020-03-06<br>18:44:33</td>
                            <td>대구연경(대)</td>
                            <td >집하완료</td>
                        </tr>
            </tbody>
        </table>
            <a href="#" class="N=a:trk.details btn_view_more _click(checkout.mobile.order.delivery.deliveryTracking.toggleMoreView())" role="button"><span class="inner">상세보기</span></a>
    </div>

    <div class="wrap_buy_box">
        <div class="wrap_tit">
            <strong class="tit_txt">송장정보</strong>
        </div>
        <div class="wrap_buy_cont delivery_info">
            <table class="info_table">
                <caption class="blind">송장정보</caption>
                <colgroup>
                    <col>
                    <col>
                </colgroup>
                <tbody>
                <tr><th>송장번호</th><td>12345678</td></tr>
                <tr><th>택배사</th><td>롯데택배</td></tr>
                </tbody></table>
        </div>
    </div>

    <div class="wrap_buy_box">
        <div class="wrap_tit">
            <strong class="tit_txt">판매자 정보</strong>
        </div>
        <div class="wrap_buy_cont delivery_info">
            <table class="info_table">
                <caption class="blind">판매자 정보</caption>
                <colgroup>
                    <col>
                    <col>
                </colgroup>
                <tbody><tr>
                    <th>판매자</th>
                    <td>Brocoli</td>
                </tr>
                    <tr>
                        <th>연락처</th>
                        <td><a href="tel:010-1234-5678" class="btn_tel">010-1234-5678</a></td>
                    </tr>
                </tbody></table>
            <span style="display: block;padding: 2px;font-size: 12px;color: #8f8f8f;line-height: 14px;">※ 배송 문의사항은 판매자에게 확인해 주세요.</span>
        </div>
    </div>

<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/jindo.mobile.all.js?ts=3" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/component/jindo.Component.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/component/jindo.UIComponent.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/component/jindo.Timer.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/component/jindo.WatchInput.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/component/jindo.LayerManager.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/component/jindo.LayerPosition.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/component/jindo.NumericStepper.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/mobile_component/jindo.m.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/mobile_component/jindo.m.Touch.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/mobile_component/jindo.m.CoreScroll.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/mobile_component/jindo.m.Scroll.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/jindo/mobile_component/jindo.m.AjaxHistory.js?ts=3" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/config.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.base.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.utility.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.variables.js?ts=1" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.Component.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.layer.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.form.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.net.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.window.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.event.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.event.delegator.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/pug/pug.storage.js" charset="utf-8"></script>
  <script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/service/checkout/mobile/pug/pug.mobile.js?ts=7" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/mobile_static/js/service/checkout/mobile/order/splog_m.js" charset="utf-8"></script>
<script type="text/javascript" src="//img.pay.naver.net/static/js/mobile/checkout.nclk_evt.js?1585267116652" charset="utf-8"></script>
  	<script type="text/javascript" src="//img.pay.naver.net/o/mstatic/js/service/checkout/mobile/order/delivery/tracking/deliveryTracking.js?1585267116652" charset="utf-8"></script>
<script type="text/javascript">
	if (BMR) {
	   	BMR.run('//sp.naver.com/sp');
	}
pug.registerModule(checkout.mobile.order.delivery.deliveryTracking, {});
</script>
</body>
</html>