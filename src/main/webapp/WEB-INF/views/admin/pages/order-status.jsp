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
    <title>주문관리</title>
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
                            <h2 class="pageheader-title">주문현황</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">주문관리</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">주문현황</li>
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
                            <h5 class="card-header">주문 테이블</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="brand-management" class="table table-striped table-bordered first" style="text-align:center;">
                                        <thead>
                                            <tr>
                                                <th style="width:3%">번호</th>
                                                <th style="width:5%">주문번호</th>
                                                <th style="width:5%">주문자</th>
                                                <th style="width:8%">아이디</th> 
                                                <th style="width:7%">주문일자</th>
                                                <th style="width:10%">상품명</th>
                                                <th style="width:5%">옵션1</th>
                                                <th style="width:6%">옵션2</th>
                                                <th style="width:4%">상품번호</th>
                                                <th style="width:3%">수량</th>
                                                <th style="width:8%">가격</th>
                                                <th style="width:10%">배송지</th>
                                                <th style="width:5%">택배사</th>
                                                <th style="width:5%">송장번호</th>
                                                <th style="width:5%">수령인</th>
                                                <th style="width:5%">수령인번호</th>
                                                <th style="width:8%">주문상태</th>
                                                <th style="width:8%">상태변경</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="o" items="${ordersList}" varStatus="ol" >
                                            <tr>
                                                <td>${ol.count}</td>
                                                <td name="orNO">${o.or_NO}</td>
                                                <td>${o.or_Member.mName}</td>
                                                <td>${o.or_Member.mId}</td>
                                                <td>${o.or_Date}</td>
                                                <td>${o.or_Pname}</td>
                                                <td>${o.or_Option1}</td>
                                                <td>${o.or_Option2}</td>
                                                <td>${o.or_P_NO}</td>
                                                <td>${o.or_Amount}</td>
                                                <td>${o.or_Price}</td>
                                                <td>${o.or_Address}</td>
                                                <td>${o.or_Deliver_Vender}</td>
                                                <td>${o.or_Deliver_Num}</td>
                                                <td>${o.or_Recip_Name}</td>
                                                <td>${o.or_Phone}</td>
                                                <td name="orderStatus">${o.or_Status_Str}</td>
                                                <td>
                                                 <select name="orderStatusSelect" style="height: 30px; background-color: white;">
                                                 	<option value="1">주문확인</option>
									                <option value="2">상품준비중</option>
									                <option value="3">상품배송중</option>
									                <option value="4">배송완료</option>
									                <option value="5">구매확정</option>
									                <option value="6">환불 진행 중</option>
									                <option value="7">교환 진행 중</option>
									                <option value="8">반품완료</option>
									                <option value="9">교환완료</option>
									                
									              </select>
									              <button name="orderStatusBtn" id="orderStatusBtn" type="submit" class="btn btn-light" style="width:50px; height:40px; ">
									                  <i class="fas fa-sync"></i>
									               </button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                      </tbody>
                                    </table>
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
    
    <!-- 작성자 : 신은지  / 주문상태 변경 ajax -->
    <script>
    	$(function(){
    		$("button[name=orderStatusBtn]").on("click",function(){
    			//var jsonData = new Object();
    			//jsonData.or_Status = $(this).parent().children('#orderStatusSelect').val();
    			//jsonData.or_NO = $(this).parent().prevAll("td[name=orNO]").text();
    			var orderStatus = $(this).parents('#orderStatus');
    			var or_NO = $(this).parent().prevAll("td[name=orNO]").text();
    			
    			or_Status = $(this).parent().children('select[name=orderStatusSelect]').val();
    			$.ajax({
    				url:'orderStatusChange.ad',
    				//data:JSON.stringify(jsonData),
    				data:{or_NO:or_NO,or_Status:or_Status},
    				type:'post',
    				success:function(data){
    					if(data == 'Sucess'){
    					or_Status = $(this).parent().children('select[name=orderStatusSelect]').val();
    					}
    				},error:function(){
    					console.log("전송실패");
    				}	
    			});
    			
    		    switch(or_Status){
    			case '1': or_Status="주문확인"; break;
    			case '2': or_Status="상품준비중"; break;
    			case '3': or_Status="상품배송중"; break;
    			case '4': or_Status="배송완료"; break;
    			case '5': or_Status="구매확정"; break;
    			case '6': or_Status="환불진행중"; break;
    			case '7': or_Status="교환진행중"; break;
    			case '8': or_Status="반품완료"; break;
    			case '9': or_Status="교환완료"; break;
    			}
    		    
    			//주문 상태변경 버튼 누르면 주문상태 변경해줌
    			$(this).parent().prevAll('td[name=orderStatus]').text(or_Status);
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