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
    <title>가맹브랜드 게시판</title>
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
                            <h2 class="pageheader-title">오너 콘택트</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">가맹브랜드 관리</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">오너 콘택트</li>
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
                            <h5 class="card-header"></h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="brand-owner-contact" class="table table-striped table-bordered first" style="text-align:center;">
                                        <thead>
                                            <tr>
                                            	<th style="width:3%">번호</th>
                                                <th style="width:5%">글번호</th>
                                                <th style="width:8%">작성자</th>
                                                <th style="width:8%">브랜드명</th>
                                                <th style="width:13%">제목</th>
                                                <th style="width:8%">작성일</th>
                                                <th style="width:5%">읽음여부</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        <c:forEach var="c" items="${OwnerContactList}" varStatus="cl"> <!-- for -->
                                            <tr>
                                            	<td>${cl.count}</td>
                                                <td>${c.con_NO}</td>
                                                <td>${c.con_Writer}</td>
                                                <td>
                                                <c:set var="brandName" value="${c.brandName}"/>
                                                <c:if test="${brandName != 'NO'}">
                                                	${c.brandName}
                                                </c:if>
                                                <c:if test="${brandName eq 'NO'}">
                                                	-
                                                </c:if>
                                                </td>
                                                <td>${c.con_Title}</td>
                                                <td>${c.con_Date}</td>
                                                <td>
                                                	<c:set var="viewCheck" value="${c.con_View_Check}"/>
                                                	<c:if test="${viewCheck eq 'Y'}">
                                                		<strong><span style="color:#63C386;">읽음O</span></strong>
                                                	</c:if>
                                                	<c:if test="${viewCheck eq 'N'}">
                                                		<strong><span style="color:tomato;">읽음X</span></strong>
                                                	</c:if>
                                                </td>
											</tr>
                                        </c:forEach>
                                      </tbody>
                                    </table>
                                </div>
                                <div class="form-group row text-right" style="width:136%">
                                     <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                     	<button class="btn btn-dark btn-xs" onclick="location.href='contactWrite.ad'">글작성</button>
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
    
    	<!-- 오너콘택트 상세보기용 -->
		<script>
			$(function(){
				$("#brand-owner-contact").find("td").mouseenter(function(){
					$(this).parents("tr").css({ "cursor":"pointer"});
				}).click(function(){
					var ocId = $(this).parents().children("td").eq(1).text();	
					location.href="ownerContactDetail.ad?ocId="+ocId;
					//location.href="detail.bo?bId="+bId;
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