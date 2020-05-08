<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!Doctype html>
<html lang="en">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>가맹브랜드 관리</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/brocoli/resources/adminResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/brocoli/resources/adminResources/libs/css/style.css">
    <link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/fixedHeader.bootstrap4.css">
</head>

<body>
	<%@ include file="header.jsp" %>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">

        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">가맹브랜드</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">가맹브랜드 관리</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">가맹브랜드</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- basic table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">가맹브랜드 테이블</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="brand-management" class="table table-striped table-bordered first" style="text-align:center;">
                                        <thead>
                                            <tr>
                                                <th style="width:3%">번호</th>
                                                <th style="width:3%">브랜드번호</th>
                                                <th style="width:5%">로고</th>
                                                <th style="width:8%">브랜드명</th>
                                                <th style="width:8%">사업자번호</th>
                                                <th style="width:5%">대표</th>
                                                <th style="width:10%">주소</th>
                                                <th style="width:8%">전화번호</th>
                                                <th style="width:8%">입점일</th>
                                                <th style="width:3%">입점상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="b" items="${BrandList}" varStatus="bl">
                                            <tr>
                                                <td>${bl.count }</td>
                                                <td>${b.brand_NO}</td>
                                                <td>
                                                <c:set var="img" value="${b.b_Logo_ReName}"/>
                                                <c:if test="${empty img}">
                                                <img src="/brocoli/resources/adminResources/images/noImage.PNG" width="50" height="50">                                                
                                                </c:if>
                                                <c:if test="${not empty img }">
                                                <img src="/brocoli/resources/brandLogo/${b.b_Logo_ReName}" width="50" height="50">
                                                </c:if>
                                                </td>                                              	
                                                <td>${b.b_Name}</td>
                                                <td>${b.b_Business_NO}</td>
                                                <td>${b.b_Owner_Name }</td>
                                                <td>${b.b_Address }</td>
                                                <td>${b.b_Phone }</td>
                                                <td>${b.b_Enter_Date }</td>
                                                <td>
	                                                <c:set var="b_Status" value="${b.b_Status}" />
	                                            	<c:choose>
	                                            		<c:when test="${b_Status eq 'Y'}">
	                                            			<strong><span style="color:#4865CD;">입점</span></strong>
	                                            		</c:when>
	                                            		<c:when test="${b_Status eq 'N'}">
	                                            			<strong><span style="color:tomato;">폐점</span></strong>
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
                    </div>
                    <!-- ============================================================== -->
                    <!-- end basic table  -->
                    <!-- ============================================================== -->
                    
                </div>
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- data table  -->
                    <!-- ============================================================== -->            
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    
    	<!-- 브랜드 상세보기용 -->
		<script>
			$(function(){
				$("#brand-management").find("td").mouseenter(function(){
					$(this).parents("tr").css({ "cursor":"pointer"});
				}).click(function(){
					var brand_NO = $(this).parents().children("td").eq(1).text();	
					location.href="brandDetail.ad?brand_NO="+brand_NO
				});
			});
		</script>
		
		

    
    
    
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/multi-select/js/jquery.multi-select.js"></script>
    <script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/datatables/js/data-table.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
    <script src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
    
</body>
 
</html>