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
    
    <title>오너 : 지난 매거진</title>
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
                            <h2 class="pageheader-title">지난 매거진</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">매거진</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">지난 매거진</a></li>
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
                                <h5 class="mb-0">지난 매거진</h5>
                                <p> - 이전에 등록하셨던 매거진 리스트입니다.<br>
                                - Print, Excel, CSV, PDF 버튼 클릭시 저장됩니다.</p>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-striped table-bordered second" style="width:100%">
                                        <thead>
                                            <tr>
                                            	<th style="display: none;">정렬</th>
                                            	<th>번호</th>
                                                <th>등록일</th>
                                                <th>분류</th>
                                                <th>대표이미지</th>
                                                <th>제목</th>
                                                <th>내용</th>
                                                <th>조회수</th>
                                                <th>작성자</th>
                                                <th>상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach var="i" items="${list }">
	                                            <tr>
	                                            	<td style="display: none;">${i.m_NO*-1 }</td>
	                                            	<td>${i.m_NO}</td>
	                                                <td>${i.m_Date}</td>
	                                                <td>${i.m_Category}</td>
	                                                <td align="center" >
	                                                	<div class="m-r-10"><img src="/brocoli/resources/magazine-Img/${i.m_Magazine_File.mf_Img1_ReName}" alt="user" class="rounded" width="45"></div>
	                                                </td>
	                                                <td>${i.m_Title}</td>
	                                                <td>${i.m_Comment}</td>
	                                                <td>${i.m_Count}</td>
	                                                <td>${i.m_ID}</td>
	                                                <td>
	                                                	<c:choose>
	                                                	<c:when test="${i.m_Status eq 'N' }">
		                                                	<span class="badge-dot badge-brand"></span>승인대기중
	                                                	</c:when>
	                                                	<c:when test="${i.m_Status eq 'Y' }">
		                                                	<span class="badge-dot badge-primary"></span>승인됨
	                                                	</c:when>
	                                                	<c:when test="${i.m_Status eq 'D' }">
		                                                	<span class="badge-dot badge-danger"></span>반려됨
	                                                	</c:when>
	                                                </c:choose>
	                                                </td>
	                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            	<th style="display: none;">정렬</th>
                                            	<th>번호</th>
                                                <th>등록일</th>
                                                <th>분류</th>
                                                <th>대표이미지</th>
                                                <th>제목</th>
                                                <th>내용</th>
                                                <th>조회수</th>
                                                <th>작성자</th>
                                                <th>상태</th>
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