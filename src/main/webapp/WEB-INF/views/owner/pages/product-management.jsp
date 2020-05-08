<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>오너 : 판매상품관리</title>
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
                            <h2 class="pageheader-title">판매상품관리</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">상품관리</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">판매관리상품</a></li>
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
                    <!-- 판매상품관리 테이블  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">등록된 제품</h5>
                                <p>현재 등록된 상품 정보 입니다.</p>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-striped table-bordered second" >
                                        <thead>
                                            <tr>
                                            	<th style="display: none;">정렬</th>
                                            	<th>상품번호</th>
                                                <th>카테고리</th>
                                                <th>이미지</th>
                                                <th class="product-name">제품명</th>
                                                <th>등록가격</th>
                                                <th>할인</th>
                                                <th>현재가격</th>
                                                <th>상태</th>
                                                <th>등록일</th>
                                                <th>재고</th>
                                            </tr>
                                        </thead>
                                        <tbody>
	                       					<c:forEach var="r" items="${ list }">                     
	                                            <tr>
	                                            	<td style="display: none;">${r.p_NO * -1}</td>
	                                                <td>${r.p_NO}</td>
	                                                <td>${r.p_Bcategory }-${r.p_Scategory}</td>
	                                                <td align="center" >
	                                                	<div class="m-r-10"><img src="/brocoli/resources/product-Img/${r.pfList.pf_Img1_ReName}" alt="user" class="rounded" width="45"></div>
	                                                </td>				
	                                                <td class="product-name">${r.p_Name}</td>
	                                                <td>${r.p_Price}</td>
	                                                <td>${r.p_Sail_Price}</td>
	                                                <td>${r.p_Last_Price}</td>
	                                                <td>${r.p_Status}</td>
	                                                <td>${r.p_Insert_Date }</td>
	                                                <td>
		                                                <div class="btn-group ml-auto">
		                                                <c:url var="stockdetail" value="stock_detail.ow">
		                                                	<c:param name="pNO" value="${r.p_NO}"/>
		                                                	<c:param name="pName" value="${r.p_Name}"/>
				                                        </c:url>
				                                            <a class="btn btn-sm btn-outline-light" href="${stockdetail}">재고확인</a>
				                                        </div>
	                                                </td>
	                                            </tr>
	                                  		</c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            	<th style="display: none;">정렬</th>
                                            	<th>상품번호</th>
                                                <th>카테고리</th>
                                                <th>이미지</th>
                                                <th class="product-name">제품명</th>
                                                <th>등록가격</th>
                                                <th>할인</th>
                                                <th>현재가격</th>
                                                <th>상태</th>
                                                <th>등록일</th>
                                                <th>재고</th>
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