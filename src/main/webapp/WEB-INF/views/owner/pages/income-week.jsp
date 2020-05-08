<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>오너 : 주간매출</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/brocoli/resources/ownerResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/libs/css/style.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/fixedHeader.bootstrap4.css">
    
    <%@ include file="header.jsp" %>
    
    <style type="text/css">
    	.product-name{
    		max-width: 120px;
    	}
		.table td{
			padding: 5px;
			align-content:center;
		}  
		  
        .table th{
        	padding: 5px;
        	align-items:center;
        }
    </style>
    
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
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">주간매출</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">매출관리</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">주간매출</a></li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->

                    <!-- ============================================================== -->
                    <!-- 매출관리 테이블  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">주간매출</h5>
                                <p> - 반품,교환은 배송운임 포함된 금액입니다. <br> 
                                    - 매주 월요일 00시00분 ~ 일요일 24:00 까지의 데이터입니다.</p>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-striped table-bordered second" >
                                        
                                         <thead>
                                            <tr>
                                                <th>날짜</th>
                                                <th>주문건수</th>
                                                <th>매출 (원)</th>
                                                <th>환불 건/금액 (원)</th>
                                                <th>교환 건/금액 (원)</th>
                                                <th>총 계 (원)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>2020-03 1주차</td>
                                                <td>2031건</td>
                                                <td>21,023,000</td>
                                                <td>61 / 321,300</td>
                                                <td>12 / 120,000</td>
                                                <td>20,581,700</td>
                                            </tr>
                                            <tr>
                                                <td>2020-03 2주차</td>
                                                <td>2031건</td>
                                                <td>21,023,000</td>
                                                <td>61 / 321,300</td>
                                                <td>12 / 120,000</td>
                                                <td>20,581,700</td>
                                            </tr>
                                            <tr>
                                                <td>2020-03 3주차</td>
                                                <td>2031건</td>
                                                <td>21,023,000</td>
                                                <td>61 / 321,300</td>
                                                <td>12 / 120,000</td>
                                                <td>20,581,700</td>
                                            </tr>
                                            <tr>
                                                <td>2020-03 4주차</td>
                                                <td>2031건</td>
                                                <td>21,023,000</td>
                                                <td>61 / 321,300</td>
                                                <td>12 / 120,000</td>
                                                <td>20,581,700</td>
                                            </tr>
                                            <tr>
                                                <td>2020-03 5주차</td>
                                                <td>2031건</td>
                                                <td>21,023,000</td>
                                                <td>61 / 321,300</td>
                                                <td>12 / 120,000</td>
                                                <td>20,581,700</td>
                                            </tr>
                                            
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>날짜</th>
                                                <th>주문건수</th>
                                                <th>매출 (원)</th>
                                                <th>환불 건/금액</th>
                                                <th>교환 건/금액</th>
                                                <th>총 계</th>
                                            </tr>
                                        </tfoot>
                                        
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end 판매상품관리 테이블  -->
                    <!-- ============================================================== -->
             



             
             </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->


            </div>

        </div>
  
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- <script src="/brocoli/resources/ownerResources/vendor/jquery/jquery-3.3.1.min.js"></script> -->
    <!-- <script src="/brocoli/resources/ownerResources/vendor/bootstrap/js/bootstrap.bundle.js"></script> -->
    <script src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/multi-select/js/jquery.multi-select.js"></script>
    <script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/data-table.js"></script>
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