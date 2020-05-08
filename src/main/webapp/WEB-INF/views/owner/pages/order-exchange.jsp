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
                            <h2 class="pageheader-title">교환</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">주문관리</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">교환</a></li>
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
                                <h5 class="mb-0">교환 접수된 주문</h5>
                                <p> - 교환진행 현황입니다. <br>
                                - Print, Excel, CSV, PDF 버튼 클릭시 저장됩니다.</p>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-striped table-bordered second" style="width:100%">
                                        <thead>
                                            <tr>
                                            	<th style="display: none;">정렬</th>
                                                <th>주문시간</th>
                                                <th>주문번호</th>
                                                <th>주문자</th>
                                                <th>품 목</th>
                                                <th>주문금액</th>
                                                <th>교환사유</th>
                                                <th>교환신청일시</th>
                                                <th>상태</th>
                                                <th>상세보기</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="r" items="${list}">
	                                            <tr>
	                                            	<td style="display: none;">${r.or_NO * -1}</td>
	                                                <td>${r.or_Date }</td>
	                                                <td>${r.or_NO }</td>
	                                                <td>${r.or_Member.mName }</td>
	                                                <td>${r.or_Pname }</td>
	                                                <td>${r.or_Price }</td>
	                                                <td>${r.ordersChange.ch_Reason }</td>
	                                                <td>${r.ordersChange.ch_Date}</td>
	                                                <td>
	                                                	 <c:choose>
															<c:when test="${r.ordersChange.ch_Status eq '1'}"><span class="badge-dot badge-brand"></span><a id="statusText">교환접수</a></c:when>
															<c:when test="${r.ordersChange.ch_Status eq '2'}"><span class="badge-dot badge-info"></span><a id="statusText">교환진행중</a></c:when>
															<c:when test="${r.ordersChange.ch_Status eq '3'}"><span class="badge-dot badge-primary"></span><a id="statusText">상품재발송</a></c:when>
															<c:when test="${r.ordersChange.ch_Status eq '4'}"><span class="badge-dot badge-success"></span><a id="statusText">교환완료</a></c:when>
														</c:choose>	
	                                                </td>
	                                                <td>
	                                                	<div class="btn-group ml-auto">
		                                                	<c:url var="orderDetails" value="order_detail.ow">
		                                                		<c:param name="oNO" value="${r.or_NO }"/>
		                                                	</c:url>
					                                            <a class="btn btn-sm btn-outline-light" href="${orderDetails}">상세보기</a>
					                                    </div>
	                                                </td>
	                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            	<th style="display: none;">정렬</th>
                                                <th>주문시간</th>
                                                <th>주문번호</th>
                                                <th>주문자</th>
                                                <th>품 목</th>
                                                <th>주문금액</th>
                                                <th>교환사유</th>
                                                <th>교환신청일시</th>
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