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
    <title>광고경매 </title>
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
                            <h2 class="pageheader-title">경매신청 현황</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">광고 경매</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">경매신청 현황</li>
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
                            <h5 class="card-header">경매 테이블</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="brand-owner-contact" class="table table-striped table-bordered first" style="text-align:center;">
                                        <thead>
                                            <tr>
                                                <th>경매번호</th>
                                                <th>배너번호</th>
                                                <th>브랜드</th>
                                                <th>이미지</th>
                                                <th>신청ID</th>
                                                <th>입찰가</th>
                                                <th>신청일</th>
                                                <th>낙찰/패찰 사유</th>
                                                <th>낙찰/패찰 사유</th>
                                                <th>낙찰/패찰</th>
                                                <th>낙찰/패찰</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="a" items="${auctionList}">
                                            <tr id=auctionTable>
                                                <td name="ac_No">${a.ac_No}</td>
                                                <td>${a.ac_Banner_NO}</td>
                                                <td>${a.ac_Brand}</td>
                                                <td>
                                                	<c:set var="img" value="${ a.ac_Img_Rename }"/>
	                                                <c:if test="${empty img}">
	                                                	<img src="/brocoli/resources/adminResources/images/noImage.PNG"  width="100" height="100">
	                                              	</c:if>    
	                                                <c:if test="${not empty img }">
	                                            	 	<img src="/brocoli/resources/Auction-Img/${a.ac_Img_Rename}" width="100" height="100">
                                               		</c:if>
                                                </td>                                              
                                                <td>${a.ac_ID}</td>
                                                <td>${a.ac_Price}</td>
                                                <td>${a.ac_Date}</td>
                                                <td name="ac_Comment">${a.ac_Comment}</td>
                                                <td name="ac_CommentBox"><input type="text" name="ac_CommentText"></td>
                                                <td name="ac_Status">
                                                <c:set var="ac_Status" value="${a.ac_Status}" />
                                            	<c:choose>
                                            		<c:when test="${ac_Status eq '1'}">
                                            			<strong><span style="color:#4865CD;">입찰</span></strong>
                                            		</c:when>
                                            		<c:when test="${ac_Status eq '2'}">
                                            			<strong><span style="color:tomato;">패찰</span></strong>
                                            		</c:when>
                                            		<c:when test="${ac_Status eq '3'}">
                                            			<strong><span style="color:#4865CD;">낙찰</span></strong>
                                            		</c:when>
                                            	</c:choose>
                                                </td>
                                                <td>
									              <button type="submit" class="btn btn-outline-dark"
									                      name="okBtn" style="width:60px; height:40px; ">
									                      	낙찰
									               </button>
									               <button type="submit" class="btn btn-outline-danger "
									                      name="failBtn"style="width:60px; height:40px; ">
									                      	패찰
									               </button>
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
    
    <!-- 낙찰 버튼 클릭 시 ajax -->
    <script>
    	$(function(){
    		$("button[name=okBtn]").on("click",function(){
    			var ac_CommentText =$(this).parents('#auctionTable').children('td[name=ac_CommentBox]').children('input[name=ac_CommentText]').val();
    			var ac_No = $(this).parents('#auctionTable').children('td[name=ac_No]').text();
    			var ac_Comment = $(this).parents('#auctionTable').children('td[name=ac_Comment]');
    			var ac_Status = $(this).parents('#auctionTable').children('td[name=ac_Status]');
    			ac_Status.css("color","#4865CD");
    			ac_Status.css("font-weight","bold");
    			
    			$.ajax({
    				url:'auctionWin.ad',
    				data:{ac_CommentText:ac_CommentText, ac_No:ac_No},
    				type:'post',
    				success:function(data){
    					if(data == 'Sucess'){
    						ac_Comment.text(ac_CommentText);
    						ac_Status.text('낙찰');
    					}
    				},error:function(){
    					console.log("전송실패")
    				}
    			});
    		});
    	});
    </script>
     <!-- //낙찰 버튼 클릭 시 ajax -->
     
     <!-- 폐찰 버튼 클릭 시 ajax -->
    <script>
    	$(function(){
    		$("button[name=failBtn]").on("click",function(){
    			var ac_CommentText =$(this).parents('#auctionTable').children('td[name=ac_CommentBox]').children('input[name=ac_CommentText]').val();
    			var ac_No = $(this).parents('#auctionTable').children('td[name=ac_No]').text();
    			var ac_Comment = $(this).parents('#auctionTable').children('td[name=ac_Comment]');
    			var ac_Status = $(this).parents('#auctionTable').children('td[name=ac_Status]');    			
    			ac_Status.css("color","tomato");
    			ac_Status.css("font-weight","bold");
    			
    			$.ajax({
    				url:'auctionFail.ad',
    				data:{ac_CommentText:ac_CommentText, ac_No:ac_No},
    				type:'post',
    				success:function(data){
    					if(data == 'Sucess'){
    						ac_Comment.text(ac_CommentText);
    						ac_Status.text('패찰');
    					}
    				},error:function(){
    					console.log("전송실패")
    				}
    			});
    		});
    	});
    </script>
     <!-- //폐찰 버튼 클릭 시 ajax -->
    
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