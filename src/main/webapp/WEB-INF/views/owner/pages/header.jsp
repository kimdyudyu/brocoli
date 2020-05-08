<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/brocoli/resources/ownerResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/libs/css/style.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/fonts/flag-icon-css/flag-icon.min.css">

	
</head>

<body>
		
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header" style="z-index: 20;">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
            	<c:url var="MainPage" value="MainPage" />
                <a class="navbar-brand" href="${MainPage }"><strong> BROCOLI</strong>  PARTNER</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item">
                            <div id="custom-search" class="top-search-bar">
                          	<c:url var="bproduct" value="bproduct.mn">
	                 			<c:param name="b_Name" value="${ brand.b_Name }"/>
	                 		</c:url>
                            <a class="navbar-brand" style="font-size: 18px; padding-top: 5px; color: #1c1d1f;" href="#"><strong>스토어</strong></a>
                            <a class="navbar-brand" style="font-size: 18px; padding-top: 5px; color: #1c1d1f;"><c:out value="${loginUser.brand }"/></a>
                            </div>
                        </li>
                        <li class="nav-item dropdown notification">
                            <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                                <li>
                                    <div class="notification-title">알림</div>
                                    <div class="notification-list">
                                        <div class="list-group">
                                        <c:url var="managerContact" value="managerContact.ow"/>
                                            <a href="${managerContact }" class="list-group-item list-group-item-action active">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="/brocoli/resources/ownerResources/images/avatar-2.jpg" alt="" class="user-avatar-md rounded-circle brandLogo"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">메시지</span><span id="countMassege">0</span>개의 읽지않은 매니저 메시지가 있습니다.
                                                        <div class="notification-date">확인하기</div>
                                                    </div>
                                                </div>
                                            </a>
                                        <c:url var="noReadReview" value="noReadReview.ow">
                                       		<c:param name="bNO" value="${loginUser.brand_NO }"/>
                                       	</c:url>
                                            <a href="${noReadReview }" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="/brocoli/resources/ownerResources/images/avatar-3.jpg" alt="" class="user-avatar-md rounded-circle brandLogo"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">리뷰</span><span id="countReview">0</span>개의 리뷰가 작성되었습니다.
                                                        <div class="notification-date">답변달기</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <c:url var="noReadQNA" value="noReadQNA.ow">
                                        		<c:param name="bNO" value="${loginUser.brand_NO }"/>
                                        	</c:url>
                                            <a href="${noReadQNA }" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="/brocoli/resources/ownerResources/images/avatar-4.jpg" alt="" class="user-avatar-md rounded-circle brandLogo"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">상품 QnA</span><span id="countQnA">0</span>개의 읽지않은 상품문의가 있습니다.
                                                        <div class="notification-date">확인하기</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <c:url var="order_progress" value="order_progress.ow">
                                        		<c:param name="Brand_NO" value="${ loginUser.brand_NO }"/>
                                        	</c:url>
                                            <a href="${order_progress}" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="/brocoli/resources/ownerResources/images/avatar-5.jpg" alt="" class="user-avatar-md rounded-circle brandLogo"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">주문접수</span><span id="countOrder">0</span>개의 신규 주문이 접수되었습니다.
                                                        <div class="notification-date">확인하기</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-footer"> <a href="#">닫기</a></div>
                                </li>
                            </ul>
                        </li>
                        <!-- <li class="nav-item dropdown connection">
                            <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                            <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                                <li class="connection-list">
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/brocoli/resources/ownerResources/images/github.png" alt="" > <span>Github</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/brocoli/resources/ownerResources/images/dribbble.png" alt="" > <span>Dribbble</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/brocoli/resources/ownerResources/images/dropbox.png" alt="" > <span>Dropbox</span></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/brocoli/resources/ownerResources/images/bitbucket.png" alt=""> <span>Bitbucket</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/brocoli/resources/ownerResources/images/mail_chimp.png" alt="" ><span>Mail chimp</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="/brocoli/resources/ownerResources/images/slack.png" alt="" > <span>Slack</span></a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="conntection-footer"><a href="#">More</a></div>
                                </li>
                            </ul>
                        </li> -->
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           		<img src="/brocoli/resources/ownerResources/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle brandLogo">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name"><c:out value="${ loginUser.mName }"/>  </h5>
                                    <span class="status"></span><span class="ml-2">${ loginUser.brand }</span>
                                </div>
                                    <c:url var="alarmSetting" value="alarmSetting.ow"/>
                                    <c:url var="brandSetting" value="brandSetting.ow"/>
                                    <c:url var="logoutPage" value="logoutPage" />
                                <a class="dropdown-item" href="${brandSetting}"><i class="fas fa-user mr-2"></i>브랜드관리</a>
                                <a class="dropdown-item" href="${alarmSetting}"><i class="fas fa-cog mr-2"></i>알림설정</a>
                                <a class="dropdown-item" href="${logoutPage}"><i class="fas fa-power-off mr-2"></i>Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark" style="z-index: 30;">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">메인화면</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                	        메뉴
                            </li>
                            <li class="nav-item ">
                            	<c:url var="goToHome" value="goToHome.ow">
                            	</c:url>
                                <a class="nav-link active" href="${goToHome}" ><i class="fa fa-fw fa-user-circle"></i>홈</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#" aria-expanded="false" data-toggle="collapse" data-target="#submenu-1" aria-controls="submenu-1"><i class="fab fa-fw fa-wpforms"></i>매출관리</a>
                                <div id="submenu-1" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                        	<c:url var="incomeDay_select" value="incomeDaySelect.ow">
                                        		<c:param name="Brand_NO" value="${ loginUser.brand_NO }"/>
                                        	</c:url>
                                            <a class="nav-link" href="${incomeDay_select}">일간매출</a>
                                        </li>
                                        <li class="nav-item">
                                       		<c:url var="incomeMonth_select" value="incomeMonthSelect.ow">
                                        		<c:param name="Brand_NO" value="${ loginUser.brand_NO }"/>
                                        	</c:url>
                                            <a class="nav-link" href="${incomeMonth_select}">월간매출</a>
                                        </li>
                                        <li class="nav-item">
                                        	<c:url var="incomeYear_select" value="incomeYearSelect.ow">
                                        		<c:param name="Brand_NO" value="${ loginUser.brand_NO }"/>
                                        	</c:url>
                                            <a class="nav-link" href="${incomeYear_select}">연간매출</a>
                                        </li>
<!--                                          <li class="nav-item">
                                            <a class="nav-link" href="/brocoli/owner/pages/404-Page.jsp">매출분석(제작중)</a>
                                        </li>  -->
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#" aria-expanded="false" data-toggle="collapse" data-target="#submenu-2" aria-controls="submenu-2"><i class="fab fa-elementor"></i>상품관리</a>
                                 <div id="submenu-2" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <c:url var="Product_insert" value="productInsertMenu.ow"/>
                                            <a class="nav-link" href="${Product_insert}">상품업로드</a>
                                        </li>
                                        <li class="nav-item">
			                                <c:url var="BRAND_NO" value="productList.ow">
			                                   <c:param name="Brand_NO" value="${ loginUser.brand_NO }"/>
			                                </c:url>
                                            <a class="nav-link" href="${BRAND_NO}">판매상품관리</a>
                                        </li>
                                        <li class="nav-item">
                                        	<c:url var="Brand_NO" value="stockList.ow">
			                                   <c:param name="Brand_NO" value="${ loginUser.brand_NO }"/>
			                                </c:url>
                                            <a class="nav-link" href="${Brand_NO}">재고관리</a>
                                        </li>
<!--                                         <li class="nav-item">
                                            <a class="nav-link" href="/brocoli/owner/pages/404-Page.jsp">판매제품순위(제작중)</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="/brocoli/owner/pages/product-list.jsp">판매상품전체보기</a>
                                        </li> -->
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-3" aria-controls="submenu-3"><i class="fab fa-trello"></i>주문관리</a>
                                <div id="submenu-3" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${order_progress }">진행중인 주문</a>
                                        </li>
                                        <li class="nav-item">
                                        	<c:url var="order_complete" value="order_complete.ow">
                                        		<c:param name="Brand_NO" value="${ loginUser.brand_NO }"/>
                                        	</c:url>
                                            <a class="nav-link" href="${order_complete }">완료된 주문</a>
                                        </li>
                                        <li class="nav-item">
                                        	<c:url var="order_reject" value="order_reject.ow">
                                        		<c:param name="bNO" value="${loginUser.brand_NO }"/>
                                        	</c:url>
                                            <a class="nav-link" href="${order_reject }">반품</a>
                                        </li>
                                        <li class="nav-item">
                                        	<c:url var="order_change" value="order_change.ow">
                                        		<c:param name="bNO" value="${loginUser.brand_NO }"/>
                                        	</c:url>
                                            <a class="nav-link" href="${order_change }">교환</a>
                                        </li>
  <!--                                  <li class="nav-item">
                                            <a class="nav-link" href="/brocoli/owner/pages/404-Page.jsp">주문분석(제작중)</a>
                                        </li> -->
                                    </ul>
                                </div>
                                
                                
                            </li>
                            
                            <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i class="fab fa-weixin"></i>후기관리</a>
                                <div id="submenu-4" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${noReadReview }">읽지않은 후기</a>
                                        </li>
                                        <li class="nav-item">
                                        	<c:url var="readReview" value="readReview.ow">
                                        		<c:param name="bNO" value="${loginUser.brand_NO }"/>
                                        	</c:url>
                                            <a class="nav-link" href="${readReview }">완료된 후기</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                           
                            
                           <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fas fa-comment-dots"></i>질의응답</a>
                                <div id="submenu-5" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${noReadQNA}">읽지않은 QnA</a>
                                        </li>
                                        <li class="nav-item">
                                        	<c:url var="readQNA" value="readQNA.ow">
                                        		<c:param name="bNO" value="${loginUser.brand_NO }"/>
                                        	</c:url>
                                            <a class="nav-link" href="${readQNA}">완료된 QnA</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            
                             <li class="nav-item ">
                                <a class="nav-link" href="${managerContact }" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i class="fas fa-hands-helping"></i>매니저컨택트</a>
                            </li>
                            
                            <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6" aria-controls="submenu-6"><i class="fas fa-images"></i>광고</a>
                                <div id="submenu-6" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                        	<c:url var="banner_Tip" value="banner_Tip.ow"></c:url>
                                            <a class="nav-link" href="${banner_Tip}">광고요령</a>
                                        </li>
                                        <li class="nav-item">
                                        	<c:url var="banner_sale" value="banner_sale.ow"></c:url>
                                            <a class="nav-link" href="${banner_sale}">광고신청</a>
                                        </li>
                                        <li class="nav-item">
                                        	<c:url var="banner_result" value="banner_result.ow">
                                        		<c:param name="bNO" value="${loginUser.brand_NO }}"/>
												<c:param name="mNO" value="${loginUser.mNO }"/>      
                                        	</c:url>
                                            <a class="nav-link" href="${banner_result}">결과확인</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#"  data-toggle="collapse" aria-expanded="false" data-target="#submenu-7" aria-controls="submenu-7"><i class=" fab fa-leanpub"></i>매거진</a>
                                <div id="submenu-7" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                        <c:url var="gotoMagazineInsert" value="manazineInsertPage.ow"/>
                                            <a class="nav-link" href="${gotoMagazineInsert }">매거진등록</a>
                                        </li>
                                        <li class="nav-item">
                                        <c:url var="gotoMagazineResult" value="manazineResultPage.ow">
                                        	<c:param name="bNO" value="${loginUser.brand_NO }"></c:param>
                                        </c:url>
                                            <a class="nav-link" href="${gotoMagazineResult }">이번달 진행현황</a>
                                        </li>
                                        <li class="nav-item">
                                        <c:url var="gotoMagazineSelect" value="manazineSelectPage.ow">
                                        	<c:param name="bNO" value="${loginUser.brand_NO }"></c:param>
                                        </c:url>
                                            <a class="nav-link" href="${gotoMagazineSelect }">지난매거진</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse"  aria-expanded="false" data-target="#submenu-8" aria-controls="submenu-8"><i class="fab fa-whmcs"></i>설정</a>
                                <div id="submenu-8" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${alarmSetting }">알림설정</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="${brandSetting }">브랜드관리</a>
                                        </li>
                                    <!--     <li class="nav-item">
                                            <a class="nav-link" href="/brocoli/owner/pages/404-Page.jsp">계정관리</a>
                                        </li> -->

                                    </ul>
                                </div>
                                
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-9" aria-controls="submenu-9"><i class="fa fa-fw fa-rocket"></i>부가기능</a>
                                <div id="submenu-9" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                        	<c:url var="Cropper" value="Cropper.ow"></c:url>
                                            <a class="nav-link" href="${Cropper}">사진편집<span class="badge badge-secondary">New</span></a>
                                        </li>
                                        <li class="nav-item">
                                        	<c:url var="color_picker" value="color_picker.ow"></c:url>
                                            <a class="nav-link" href="${color_picker}">RGB색상표<span class="badge badge-secondary">New</span></a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        
        <!-- jquery 3.3.1 -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/jquery/jquery-3.3.1.min.js"></script>
    
	<script>
		
	$( document ).ready(function(){
		
		var bNO = "${loginUser.brand_NO}";
		
		$.ajax({
			url : "ownerHaeder.ow",
			type: "POST",
			dataType:"json",
			data : {bNO:bNO},
			success : function(data){
				console.log("메시지 : "+data.countMassege);
				console.log("리뷰 : "+data.countReview);
				console.log("오더 : "+data.countOrder);
				console.log("QnA : "+data.countQnA);
				
				
				$('#countMassege').text(data.countMassege);
				$('#countReview').text(data.countReview);
				$('#countOrder').text(data.countOrder);
				$('#countQnA').text(data.countQnA);
				
				if(data.brandLogo != null){
					$('.brandLogo').attr("src","/brocoli/resources/brandLogo/"+data.brandLogo+"");
				}else{
					$('.brandLogo').attr("src","/brocoli/resources/ownerResources/images/avatar-4.jpg");
				}
				
			},error : function(jqxhr, textStatus, errorThrown) {
				console.log("오너페이지 ajax 처리실패");

				//에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
		
	
	});
	
	</script>
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->

    <script src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/multi-select/js/jquery.multi-select.js"></script>
    <!-- bootstap bundle js -->
    <script src="/brocoli/resources/ownerResources/vendor/bootstrap/js/bootstrap.bundle.js"></script> 


</body>
 
</html>