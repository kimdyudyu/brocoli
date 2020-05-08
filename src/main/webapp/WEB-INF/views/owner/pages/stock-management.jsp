<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>오너 : 재고현황</title>
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
                            <h2 class="pageheader-title">재고 현황</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">상품관리</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">재고관리</a></li>
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
                    <!-- 재고/입고  테이블  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">재고</h5>
                                <p>현재등록 상품의 전체재고 현황입니다. </p>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-striped table-bordered second" >
                                        <thead>
                                            <tr>
                                            	<th style="display: none;">정렬</th>
                                            	<th>상품번호</th>
                                                <th>이미지</th>
                                                <th>제품명</th>
                                                <th>옵션번호</th>
                                                <th>옵션1</th>
                                                <th>옵션2</th>
                                                <th>재고</th>
                                                <th>상태</th>
                                                <th>상세보기</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <% int count = 0; %>
                                        	<c:forEach var="r" items="${ list }">
	                                            <tr>
	                                            	<td style="display: none;">${r.pList.p_NO * -1}</td>
	                                                <td>${r.pList.p_NO }</td><!-- 상품번호 P상품 0 대분류 0소분류 000상품번호-->
	                                                <td align="center" >
	                                                	<div class="m-r-10"><img src="/brocoli/resources/product-Img/${r.pList.pfList.pf_Img1_ReName}" alt="user" class="rounded" width="45"></div>
	                                                </td>
	                                                <td>${r.pList.p_Name }</td>
	                                                <td>${r.op_NO }</td>
	                                                <td>${r.option_1 }</td>
	                                                <td>${r.option_2 }</td>
	                                                <td>${r.op_Stock }</td>
	                                                <td id="status">
	                                                <c:choose>
														<c:when test="${r.op_Status_YN eq 'Y'}"><span class="badge-dot badge-success"></span><a id="statusText<%= count %>">판매중</a></c:when>
														<c:when test="${r.op_Status_YN eq 'N'}"><span class="badge-dot badge-warning"></span><a id="statusText<%= count %>">품절</a></c:when>
													</c:choose>	
													</td>
	                                                <td>
	                                                	<div class="btn-group ml-auto">
		                                                <c:url var="stockdetail" value="stock_detail.ow">
		                                                	<c:param name="pNO" value="${r.pList.p_NO}"/>
		                                                	<c:param name="pName" value="${r.pList.p_Name}"/>
				                                        </c:url>
				                                            <a class="btn btn-sm btn-outline-light" href="${stockdetail}">재고관리</a>
				                                        </div>
	                                                </td>
	                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            	<th style="display: none;">정렬</th>
                                            	<th>상품번호</th>
                                                <th>이미지</th>
                                                <th>제품명</th>
                                                <th>옵션번호</th>
                                                <th>옵션1</th>
                                                <th>옵션2</th>
                                                <th>재고</th>
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
                    <!-- end 재고관리 테이블  -->
                    <!-- ============================================================== -->

             
             </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->


            </div>

        </div>
  	
  	<!--  
	작성자 : 박주완
	작성일 : 2020-04-09
	내용 : 불러온 값에따라 상품상태 select box select 값 변경
	-->
	<script>
	$(function(){
		for(var i=0; i<<%= count %>; i++){
	    	var status = $('#statusText'+i+'').text();
	    	var sale = '판매중';
	    	var soldout = '품절';
			if(status == sale){
				$("#opStatus"+i+" option[value='Y']").attr("selected","selected");
			}else{
				$("#opStatus"+i+" option[value='N']").attr("selected","selected");
			}
		}
	 });
	</script>
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