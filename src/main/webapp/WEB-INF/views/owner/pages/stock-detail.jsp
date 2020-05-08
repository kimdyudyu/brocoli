<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>오너 : 선택상품재고관리</title>
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
			padding: 10px;
		}  
		  
        .table th{
        	padding: 10px;
        }
        .colorCube{
        	width: 20px;
        	height: 20px;
        	border-radius: 5px;
        	background-color: gray;
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
                            <h2 class="pageheader-title">재고관리</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">상품관리</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">판매상품관리</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">재고관리</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">선택상품재고관리</a></li>
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
                                <h5 class="mb-0">선택상품재고관리</h5>
                                <p>선택한 상품의 옵션별 재고 현황입니다.</p>
								<h5 style="float: left;">선택상품 : ${pName}</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                <form action="stock_change.ow" method="post" enctype="multipart/form-data" >
                                    <table id="example" class="table table-striped table-bordered second" >
                                        <thead>
                                            <tr>
                                            	<th>옵션 번호</th>
                                            	<th>옵션1</th>
                                                <th>옵션2</th>
                                                <th>잔여재고</th>
                                                <th>재고변경</th>
                                                <th>현재상태</th>
                                                <th>상태변경</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% int count = 0; %>
                                        	<c:forEach var="r" items="${ list }">
	                                            <tr>
	                                            	<td style="width: 10%;"><input  name="Product_OptionVOList[<%=count%>].op_NO" value="${r.op_NO }" readonly="readonly" type="number" style="width: 100%; text-align: center; border: none; background: none; color=#71748D;"></td>
	                                                <td>${r.option_1 }</td>
	                                                <td>${r.option_2 }</td>
	                                                <td>${r.op_Stock }</td>
	                                                <td><input type="number" name="Product_OptionVOList[<%=count%>].op_Stock" value="${r.op_Stock }"></td>
	                                                <td id="status">
	                                                <c:choose>
														<c:when test="${r.op_Status_YN eq 'Y'}"><span class="badge-dot badge-success"></span><a id="statusText<%= count %>">판매중</a></c:when>
														<c:when test="${r.op_Status_YN eq 'N'}"><span class="badge-dot badge-warning"></span><a id="statusText<%= count %>">품절</a></c:when>
													</c:choose>	
													</td>
	                                                <td><%-- name="Product_OptionVOList[<%= count %>].op_Status_YN" --%>
	                                                	<select id="opStatus<%= count %>" name="Product_OptionVOList[<%= count %>].op_Status_YN" style="height: 31px; width: 100%;">
														    <option value="Y">판매중</option>
														    <option value="N">판매중지</option>
														</select>														
	                                                </td>
	                                            </tr>
                                             <% count++; %>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            	<th>옵션 번호</th>
                                            	<th>옵션1</th>
                                                <th>옵션2</th>
                                                <th>잔여재고</th>
                                                <th>재고변경</th>
                                                <th>현재상태</th>
                                                <th>상태변경</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                    <button type="submit" class="btn btn-primary" style="float: right; color: #FFFFFF; margin-top: 20px; margin-right: 5px; margin-bottom: 20px;">변경사항 적용</button>
				                    <input type="text" name="pName" value="${pName}" style="display: none;" >
				                    <input type="number" name="pNO" value="${pNO}" style="display: none;" > 
                                    </form>
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