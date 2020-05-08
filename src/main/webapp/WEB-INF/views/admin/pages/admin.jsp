<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>어드민 메인 페이지</title>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>

</head>

<body>

	<%@ include file="header.jsp"%>
	<!-- ================================================================ -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">

		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="dashboard-ecommerce">
				<div class="container-fluid dashboard-content ">
					<!-- ============================================================== -->
					<!-- pageheader  -->
					<!-- ============================================================== -->
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="page-header">
								<h2 class="pageheader-title">
									<input type="text" name="con_Writer" value="${loginUser.mName}" readonly="readonly" style="height:35px; width:100%; border:none; background-color: #efeff6;">
								</h2>
								<div class="page-breadcrumb">
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item"><a href="#"
												class="breadcrumb-link">BROCOLI</a></li>
											<li class="breadcrumb-item active" aria-current="page">홈</li>
										</ol>
									</nav>
								</div>
							</div>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- 총 회원수, 브랜드수, 주문수, 매출  -->
					<!-- ============================================================== -->
					<div class="ecommerce-widget">

						<div class="row">
							<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="card">
									<div class="card-body">
										<h4 class="text-muted"><strong>총 회원수</strong></h4>
										<div class="metric-value d-inline-block">
											<h1 class="mb-1">${memberCount} 명</h1>
										</div>
										<div
											class="metric-label d-inline-block float-right text-success font-weight-bold">
											<span><i class="fa fa-fw fa-arrow-up"></i></span><span></span>
										</div>
									</div>
									<div id="sparkline-revenue"></div>
								</div>
							</div>
							<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="card">
									<div class="card-body">
										<h4 class="text-muted"><strong>총 브랜드수</strong></h4>
										<div class="metric-value d-inline-block">
											<h1 class="mb-1">${brandCount } 개</h1>
										</div>
										<div
											class="metric-label d-inline-block float-right text-success font-weight-bold">
											<span><i class="fa fa-fw fa-arrow-up"></i></span><span></span>
										</div>
									</div>
									<div id="sparkline-revenue2"></div>
								</div>
							</div>
							<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="card">
									<div class="card-body">
										<h4 class="text-muted"><strong>총 주문수</strong></h4>
										<div class="metric-value d-inline-block">
											<h1 class="mb-1">${orderCount } 건</h1>
										</div>
										<div
											class="metric-label d-inline-block float-right text-primary font-weight-bold">
											<span><i class="fa fa-fw fa-arrow-up"></i></span>
										</div>
									</div>
									<div id="sparkline-revenue3"></div>
								</div>
							</div>
							<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="card">
									<div class="card-body">
										<h4 class="text-muted"><strong>총 매출</strong></h4>
										<div class="metric-value d-inline-block">
											<h1 class="mb-1">${sales } 원</h1>
										</div>
										<div
											class="metric-label d-inline-block float-right text-secondary font-weight-bold">
											<span><i class="fa fa-fw fa-arrow-up"></i></span>
										</div>
									</div>
									<div id="sparkline-revenue4"></div>
								</div>
							</div>
						</div>
						
						<!-- ============================================================== -->
						<!-- 브랜드 NEW 5  -->
						<!-- ============================================================== -->
						<div class="col-md-8 .col-md-push-3" style="float:left;">
							<div class="card">
								<h5 class="card-header">브랜드 NEW 5</h5>
								<div class="card-body p-0">
									<div class="table-responsive">
										<table class="table"  style="text-align: center; ">
											<thead class="bg-light">
												<tr class="border-0">
	                                                <th style="width:5%">로고</th>
	                                                <th>브랜드명</th>
	                                                <th>대표</th>
	                                                <th>주소</th>
	                                                <th>전화번호</th>
	                                                <th>입점일</th>
	                                                <th>입점상태</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="b" items="${BrandList}">
												<tr>
	                                                <td>
	                                                <c:set var="img" value="${b.b_Logo_ReName}"/>
	                                                <c:if test="${empty img}">
	                                                <img src="/brocoli/resources/adminResources/images/noImage.PNG" width="50" height="50">                                                
	                                                </c:if>
	                                                <c:if test="${not empty img }">
	                                            	<img src="/brocoli/resources/brandLogo/${b.b_Logo_ReName}" width="50" height="50"></c:if>
	                                                </td>                                              	
	                                                <td>${b.b_Name}</td>
	                                                <td>${b.b_Owner_Name }</td>
	                                                <td>${b.b_Address }</td>
	                                                <td>${b.b_Phone }</td>
	                                                <td>${b.b_Enter_Date }</td>
	                                                <td>
                                                	<c:set var="b_Status" value="${b.b_Status}" />
                                            			<c:choose>
                                            			<c:when test="${b_Status eq 'Y'}">
                                            				<strong><span style="color:#4865CD;">O</span></strong>
                                            			</c:when>
                                            			<c:when test="${b_Status eq 'N'}">
                                            				<strong><span style="color:tomato;">X</span></strong>
                                            			</c:when>
                                             			</c:choose>
                                           			</td>
                                           		</tr>
                                      			 </c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- ============================================================== -->
						<!-- ============================================================== -->
						<!-- 회원 성별 비율  -->
						<!-- ============================================================== -->
							<div class="col-md-4 .col-md-pull-9" style="float:left;">
								<div class="card">
									<h5 class="card-header"><strong>회원 성별 비율</strong></h5>
									<div class="card-body">
										<div id="c3chart_category1"></div>
										<div id="chartWomen" style="display:none;">${memberWCount}</div>
										<div id="chartMen" style="display:none;">${memberMCount}</div>
									</div>
								</div>
							</div>
						
						

		<!-- ============================================================== -->
		<!-- end wrapper  -->
		<!-- ============================================================== -->

		<!-- ============================================================== -->
		<!-- 회원 성별 비율 -->
		<!-- ============================================================== -->
		<script>
			$(function(){
				 var chartWomen = $('#chartWomen').text();
				 var chartMen = $('#chartMen').text();
				 console.log(chartWomen);
				 console.log(chartMen);
				 
				 
				 var chart = c3.generate({
			        bindto: "#c3chart_category1",
			        data: {
			            columns: [
			                ['남성회원', chartMen],
			                ['여성회원', chartWomen]
			            ],
			            type: 'donut',

			            onclick: function(d, i) { console.log("onclick", d, i); },
			            onmouseover: function(d, i) { console.log("onmouseover", d, i); },
			            onmouseout: function(d, i) { console.log("onmouseout", d, i); },

			            colors: {
			                Men: '#5969ff',
			                Women: '#ff407b'
			            }
			        },
			        donut: {
			            label: {
			                show: false
			            }
			        }
				});
			});
			   
		</script>
		<!-- ============================================================== -->
		<!-- end main wrapper  -->
		<!-- ============================================================== -->
		<!-- Optional JavaScript -->
		<!-- slimscroll js -->
		
			
		<script src="https://d3js.org/d3.v3.min.js"></script>     
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
		<script src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
		<!-- main js -->
		<script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
		<!-- chart chartist js -->
		<script src="/brocoli/resources/adminResources/vendor/charts/chartist-bundle/chartist.min.js"></script>
		<!-- sparkline js -->
		<script src="/brocoli/resources/adminResources/vendor/charts/sparkline/jquery.sparkline.js"></script>
		<!-- morris js -->
		<script src="/brocoli/resources/adminResources/vendor/charts/morris-bundle/raphael.min.js"></script>
		<script src="/brocoli/resources/adminResources/vendor/charts/morris-bundle/morris.js"></script>
		<!-- chart c3 js -->
		<script src="/brocoli/resources/adminResources/vendor/charts/c3charts/c3.min.js"></script>
		<script src="/brocoli/resources/adminResources/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
		<script src="/brocoli/resources/adminResources/vendor/charts/c3charts/C3chartjs.js"></script>
		<script src="/brocoli/resources/adminResources/libs/js/dashboard-ecommerce.js"></script>
</body>

</html>