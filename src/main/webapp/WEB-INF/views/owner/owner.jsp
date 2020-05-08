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
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    
    <%@ include file="pages/header.jsp" %>
    <style type="text/css">
    	th{
    		text-align: center;
    	}
    	td{
    		text-align: center;
    	}
    </style>
    
    <title>오너 : 홈</title>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">


	    <!-- ============================================================== -->
	    <!-- wrapper  -->
	    <!-- ============================================================== -->
	    <div class="dashboard-wrapper">
	        <div class="dashboard-influence">
	            <div class="container-fluid dashboard-content">
	                <!-- ============================================================== -->
	                <!-- pageheader  -->
	                <!-- ============================================================== -->
	                <div class="row">
	                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
	                        <div class="page-header">
	                            <h3 class="mb-2"><strong>홈 화면</strong></h3>
	                            <div class="page-breadcrumb">
	                                <nav aria-label="breadcrumb">
	                                    <ol class="breadcrumb">
	                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
	                                        <li class="breadcrumb-item active" aria-current="page">홈</li>
	                                    </ol>
	                                </nav>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- ============================================================== -->
	                <!-- end pageheader  -->
	                <!-- ============================================================== -->
	                <!-- ============================================================== -->
	                <!-- content  -->
	                <!-- ============================================================== -->
	                <!-- ============================================================== -->
	                <!-- influencer profile  -->
	                <!-- ============================================================== -->
	                <div class="row">
	                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
	                        <div class="card influencer-profile-data">
	                            <div class="card-body">
	                                <div class="row">
	                                    <div class="col-xl-2 col-lg-4 col-md-4 col-sm-4 col-12">
	                                        <div class="text-center">
	                                            <img id="brandLogo2" src="/brocoli/resources/images/DIM_E_CRES_LOGO.jpg" alt="User Avatar" class="rounded-circle user-avatar-xxl">
	                                            </div>
	                                        </div>
	                                        <div class="col-xl-10 col-lg-8 col-md-8 col-sm-8 col-12">
	                                            <div class="user-avatar-info">
	                                                <div class="m-b-20">
	                                                    <div class="user-avatar-name">
	                                                        <h2 class="mb-1"><strong id="brandName2">${loginUser.brand }</strong></h2>
	                                                    </div>
	                                                    <div class="rating-star  d-inline-block">
	                                                      
	                                                    </div>
	                                                </div>
	                                                <!--  <div class="float-right"><a href="#" class="user-avatar-email text-secondary">www.henrybarbara.com</a></div> -->
	                                                <div class="user-avatar-address">
	                                                    <p class="border-bottom pb-3">
	                                                        <span class="d-xl-inline-block d-block mb-2"><i class="fa fa-map-marker-alt mr-2 text-primary "></i><span id="brandAdress2"></span></span>
	                                                        <span class="mb-2 ml-xl-4 d-xl-inline-block d-block"><i class="fas fa-phone-volume" style="color: skyblue; font-size: 17px;"></i><span id="brandphone2"></span></span>
	                                                        <span class="mb-2 ml-xl-4 d-xl-inline-block d-block"><i class="fas fa-file-signature"></i> 입점일 : <span id="brandEnrollDate2"></span> </span>
	                                                        <span class="mb-2 ml-xl-4 d-xl-inline-block d-block"><i class="fas fa-user-tie"></i>대표 : </span>
	                                                        <span class="mb-2 ml-xl-4 d-xl-inline-block d-block"><span id="brandBoss2"></span></span>
	                                                    </p>
	                                                    <div class="mt-3" id="brandComment2">
	                                                    	브랜드설명
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="border-top user-social-box">
	                                    <div class="user-social-media d-xl-inline-block" style="padding:15px 43px; "><span class="mr-2 twitter-color"></span>사업자번호 : <span id="businessNo"></span></div>
	                                    <div class="user-social-media d-xl-inline-block" style="padding:15px 43px; "><span class="mr-2 instagram-color"></span>브랜드관리 : <span id="owner1"></span></div>
	                                    <div class="user-social-media d-xl-inline-block" style="padding:15px 43px; "><span class="mr-2  facebook-color"></span><span id="owner2"></span></div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- ============================================================== -->
	                    <!-- end influencer profile  -->
	                    <!-- ============================================================== -->
	                    <!-- ============================================================== -->
	                    <!-- widgets   -->
	                    <!-- ============================================================== -->
	                    <div class="row">
		                        <!-- ============================================================== -->
		                        <!-- four widgets   -->
		                        <!-- ============================================================== -->
		                        <!-- ============================================================== -->
		                        <!-- total views   -->
		                        <!-- ============================================================== -->
		                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
		                            <div class="card">
		                                <div class="card-body">
		                                    <div class="d-inline-block">
		                                        <h5 class="text-muted"><strong><span class="month"></span> 월 정산금액</strong></h5>
		                                        <h2 class="mb-0" ><span id="resultPrice"></span> 원</h2>
		                                    </div>
		                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-info-light mt-1">
		                                        <i class="fa fa-eye fa-fw fa-sm text-info"></i>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- ============================================================== -->
		                        <!-- end total views   -->
		                        <!-- ============================================================== -->
		                        <!-- ============================================================== -->
		                        <!-- total followers   -->
		                        <!-- ============================================================== -->
		                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
		                            <div class="card">
		                                <div class="card-body">
		                                    <div class="d-inline-block">
		                                        <h5 class="text-muted"><strong><span class="month"></span> 월 매출</strong></h5>
		                                        <h2 class="mb-0" ><span id="totalPrice"></span> 원</h2>
		                                    </div>
		                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-primary-light mt-1">
		                                        <i class="fa fa-user fa-fw fa-sm text-primary"></i>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- ============================================================== -->
		                        <!-- end total followers   -->
		                        <!-- ============================================================== -->
		                        <!-- ============================================================== -->
		                        <!-- partnerships   -->
		                        <!-- ============================================================== -->
		                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
		                            <div class="card">
		                                <div class="card-body">
		                                    <div class="d-inline-block">
		                                        <h5 class="text-muted"><strong><span class="month"></span> 월 총주문</strong></h5>
		                                        <h2 class="mb-0" ><span id="countOrder2"></span> 건</h2>
		                                    </div>
		                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-secondary-light mt-1">
		                                        <i class="fa fa-handshake fa-fw fa-sm text-secondary"></i>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- ============================================================== -->
		                        <!-- end partnerships   -->
		                        <!-- ============================================================== -->
		                        <!-- ============================================================== -->
		                        <!-- total earned   -->
		                        <!-- ============================================================== -->
		                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
		                            <div class="card">
		                                <div class="card-body">
		                                    <div class="d-inline-block">
		                                        <h5 class="text-muted"><strong>교환/환불</strong></h5>
		                                        <h2 class="mb-0"><span id="countReject"></span> / <span id="countChange"></span> 건</h2>
		                                    </div>
		                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-brand-light mt-1">
		                                        <i class="fa fa-money-bill-alt fa-fw fa-sm text-brand"></i>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
	                    </div>
	                    
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                    <h5 class="card-header"><strong>누적 판매상품 순위</strong></h5>
                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="bg-light">
                                                    <tr class="border-0">
                                                        <th class="border-0"><strong>주문횟수</strong></th>
                                                        <th class="border-0"><strong>상품번호</strong></th>
                                                        <th class="border-0"><strong>이미지</strong></th>
                                                        <th class="border-0"><strong>상품명</strong></th>
                                                        <th class="border-0"><strong>가격</strong></th>
                                                        <th class="border-0"><strong>카테고리 대</strong></th>
                                                        <th class="border-0"><strong>카테고리 소</strong></th>
                                                    </tr>
                                                </thead>
                                                <tbody id="plist2">
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
	                    </div>
                      </div>
                  </div>
              </div>

	<script>
		$( document ).ready(function(){
			var date = new Date();
			var month = date.getMonth()+1;
			$('.month').text(month);
			
			
			var bNO = "${loginUser.brand_NO}";
			
			$.ajax({
				url : "ownerHome.ow",
				type: "post",
				data : {bNO:bNO},
				dataType : "json",
				success : function(data){
					$('#brandLogo2').attr("src","/brocoli/resources/brandLogo/"+data.b_Logo_ReName+"");
					$('#brandAdress2').text(data.b_Address);
					$('#brandphone2').text(data.b_Phone);
					$('#brandEnrollDate2').text(data.b_Enter_Date);
					$('#brandBoss2').text(data.b_Owner_Name);
					$('#brandComment2').text(data.b_Comment);
					$('#businessNo').text(data.b_Business_NO);
					if(data.b_Owner1_ID !=null){
						$('#owner1').text(data.b_Owner1_ID);
					}else{
						$('#owner1').text("미배정");
					}
					if(data.b_Owner2_ID !=null){
						$('#owner2').text(data.b_Owner2_ID);
					}else{
						$('#owner1').text("미배정");
					}
					if(data.b_Owner3_ID !=null){
						$('#owner3').text(data.b_Owner3_ID);
					}else{
						$('#owner1').text("미배정");
					}
					
				},error : function(jqxhr, textStatus, errorThrown) {
					console.log("매니저컨택트 list Select ajax 처리실패");

					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			})
			
			$.ajax({
				url : "ownerResultPrice.ow",
				type: "post",
				data : {bNO:bNO},
				dataType : "json",
				success : function(data){
					$('#resultPrice').text(data.resultPrice);
					$('#totalPrice').text(data.totalPrice);
					console.log("주문건수 : " + data.countOrder)
					$('#countOrder2').text(data.countOrder);
					$('#countReject').text(data.countReject);
					$('#countChange').text(data.countChange);
				},error : function(jqxhr, textStatus, errorThrown) {
					console.log("매니저컨택트 list Select ajax 처리실패");

					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			})
			
			var plist2 = "";
			$.ajax({
				url : "ownerResultProduct.ow",
				type: "post",
				data : {bNO:bNO},
				dataType : "json",
				success : function(data){
					
					for(var i = 0; i < data.length; i++) {
						console.log("상품명 : " + data[i].p_NO);
						plist2 += "<tr>";
						plist2 += "<td>"+data[i].p_Order_Count+"</td> ";
						plist2 += "<td>"+data[i].p_NO+"</td> ";
						plist2 += "<td><div class='m-r-10'><img src='/brocoli/resources/product-Img/"+data[i].pfList.pf_Img1_ReName+"' alt='user' class='rounded' width='45'></div></td>";
						plist2 += "<td>"+data[i].p_Name+"</td> ";
						plist2 += "<td>"+data[i].p_Last_Price+"</td> ";
						plist2 += "<td>"+data[i].p_Bcategory+"</td> ";
						plist2 += "<td>"+data[i].p_Scategory+"</td> ";
						plist2 += "</tr>";
					}
					
					$('#plist2').html(plist2);
					
				},error : function(jqxhr, textStatus, errorThrown) {
					console.log("매니저컨택트 list Select ajax 처리실패");

					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			})
			
			
		});
	</script>
	
	
	

    <!-- slimscroll js -->
    <script src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
    <!-- morris-chart js -->
    <script src="/brocoli/resources/ownerResources/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/charts/morris-bundle/morris.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/charts/morris-bundle/morrisjs.html"></script>
    <!-- chart js -->
    <script src="/brocoli/resources/ownerResources/vendor/charts/charts-bundle/Chart.bundle.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/charts/charts-bundle/chartjs.js"></script>
    <!-- dashboard js -->
    <script src="/brocoli/resources/ownerResources/libs/js/dashboard-influencer.js"></script>
</body>
 
</html>