<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/fixedHeader.bootstrap4.css">
    
    <%@ include file="header.jsp" %>
    
    <title>오너 : 주문관리</title>
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
                            <h2 class="pageheader-title">주문관리</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">주문관리</a></li>
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
                    <!-- data table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">진행중인 주문</h5>
                                <p> - 진행중인 주문입니다. <br>
                                - Print, Excel, CSV, PDF 버튼 클릭시 저장됩니다.</p>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-striped table-bordered second" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>주문시간</th>
                                                <th>주문번호</th>
                                                <th>주문자</th>
                                                <th>품 목</th>
                                                <th>주문금액</th>
                                                <th>상태</th>
                                                <th>상세보기</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>2020-04-01 03:00:12</td>
                                                <td>1225412</td>
                                                <td>이준용</td>
                                                <td>레거시 스우.. 외 13개</td>
                                                <td>211,000</td>
                                                <td>배송중</td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">상세보기</button>
			                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2020-03-31 15:10:12</td>
                                                <td>1225100</td>
                                                <td>유영재</td>
                                                <td> BULKY KNEE.. 외 8개</td>
                                                <td>2,321,000</td>
                                                <td>배송중</td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">상세보기</button>
			                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2020-03-30 21:08:52</td>
                                                <td>1225100</td>
                                                <td>유민정</td>
                                                <td>REVERSIBLE F.. 외 21개</td>
                                                <td>151,000</td>
                                                <td>배송중</td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">상세보기</button>
			                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2020-04-02 18:12:21</td>
                                                <td>1225100</td>
                                                <td>최유빈</td>
                                                <td>DUCK DOWN SHORT .. 외 2개</td>
                                                <td>214,000</td>
                                                <td>배송중</td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">상세보기</button>
			                                        </div>
                                                </td>
                                            </tr>
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>주문시간</th>
                                                <th>주문번호</th>
                                                <th>주문자</th>
                                                <th>금액</th>
                                                <th>상태</th>
                                                <th>상세보기</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end data table  -->
                    <!-- ============================================================== -->
                </div>
 
 
 				<div class="row">
                    <!-- ============================================================== -->
                    <!-- data table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">완료된 주문</h5>
                                <p> - 구매 확정된 주문입니다. <br>
                                	- Print, Excel, CSV, PDF 버튼 클릭시 저장됩니다.</p>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-striped table-bordered second" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>주문시간</th>
                                                <th>주문번호</th>
                                                <th>주문자</th>
                                                <th>품 목</th>
                                                <th>주문금액</th>
                                                <th>상태</th>
                                                <th>상세보기</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>2020-04-01 03:00:12</td>
                                                <td>1225412</td>
                                                <td>이준용</td>
                                                <td>레거시 스우.. 외 13개</td>
                                                <td>211,000</td>
                                                <td>구매확정</td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">상세보기</button>
			                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2020-03-31 15:10:12</td>
                                                <td>1225100</td>
                                                <td>유영재</td>
                                                <td> BULKY KNEE.. 외 8개</td>
                                                <td>2,321,000</td>
                                                <td>구매확정</td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">상세보기</button>
			                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2020-03-30 21:08:52</td>
                                                <td>1225100</td>
                                                <td>유민정</td>
                                                <td>REVERSIBLE F.. 외 21개</td>
                                                <td>151,000</td>
                                                <td>구매확정</td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">상세보기</button>
			                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2020-04-02 18:12:21</td>
                                                <td>1225100</td>
                                                <td>최유빈</td>
                                                <td>DUCK DOWN SHORT .. 외 2개</td>
                                                <td>214,000</td>
                                                <td>구매확정</td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">상세보기</button>
			                                        </div>
                                                </td>
                                            </tr>
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>주문시간</th>
                                                <th>주문번호</th>
                                                <th>주문자</th>
                                                <th>금액</th>
                                                <th>상태</th>
                                                <th>상세보기</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end data table  -->
                    <!-- ============================================================== -->
                </div>

            </div>

        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->

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