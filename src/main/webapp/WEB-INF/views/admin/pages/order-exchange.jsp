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
                            <h2 class="pageheader-title">교환/환불</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">주문관리</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">교환/환불</li>
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
                            <h5 class="card-header">교환 테이블</h5>
                            <div class="card-body">
                                <div class="table-responsive" name="changeDiv">
                                    <table id="change" class="table table-striped table-bordered first" style="text-align:center;">
                                        <thead>
                                            <tr>
	                                        	<th style="width:3%">번호</th>
	                                            <th style="width:3%">교환번호</th>
	                                            <th style="width:3%">주문번호</th>
	                                            <th style="width:8%">주문자</th>
	                                            <th style="width:8%">아이디</th> 
	                                            <th style="width:10%">상품명</th>
	                                            <th style="width:10%">상품번호</th>
	                                            <th style="width:8%">옵션1</th>
	                                            <th style="width:8%">옵션2</th>
	                                            <th style="width:8%">가격</th>
	                                            <th style="width:8%">교환사유</th>
	                                            <th style="width:8%">교환내용</th>
	                                            <th style="width:8%">교환요청일</th>
	                                            <th style="width:12%">교환상태</th>
	                                            <th style="width:12%">교환</th>
	                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="c" items="${changeList}" varStatus="cl"> 
                                            <tr id="changeTable" name="changeTable">
                                                <td>${cl.count}</td>
	                                            <td name="chNO">${c.ch_No}</td>
	                                            <td name="chORNO">${c.ch_ordersMember.or_NO}</td>
	                                            <td>${c.ch_ordersMember.or_Member.mId}</td>
	                                            <td>${c.ch_ordersMember.or_Member.mName}</td>
	                                            <td name="chPname">${c.ch_Pname}</td>
	                                            <td name="chPNO">${c.ch_ordersMember.pList.p_NO}</td>
	                                            
	                                            <td id="option1" class="option1">${c.ch_ordersMember.or_Option1}</td>
	                                            <td id="option2" class="option2">${c.ch_ordersMember.or_Option2}</td>
	                                            <td>${c.ch_Price}</td>
	                                            <td>${c.ch_Reason}</td>
	                                            <td>${c.ch_Comment}</td>
	                                            <td>${c.ch_Date}</td>
	                                            <td id="ch_Status" name="ch_Status">
	                                            <c:set var="ch_Status" value="${c.ch_Status}" />
                                            	<c:choose>
                                            		<c:when test="${ch_Status eq '1'}">
                                            			<strong style="color:blue;">교환접수</strong>
                                            		</c:when>
                                            		<c:when test="${ch_Status eq '2'}">
                                            			<strong style="color:blue;">교환진행중</strong>
                                            		</c:when>
                                            		<c:when test="${ch_Status eq '3'}">
                                            			<strong style="color:blue;">재발송</strong>
                                            		</c:when>
                                            		<c:when test="${ch_Status eq '4'}">
                                            			<strong style="color:tomato;">교환완료</strong>
                                            		</c:when>
                                            	</c:choose>
	                                            </td>
	                                            <td>
									                <button name="orderChangeBtn" type="button" class="btn btn-outline-dark"
									                        style="width:60px; height:40px; ">
									                 		교환
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
                    <!-- 교환 Modal -->

					<!-- <form action="changeOption.ad" method="post"> -->
				  	<div class="modal fade" id="orderChangeModal" role="dialog"> 
				
				    <div class="modal-dialog">
				
				     <!-- Modal content-->
				      <div class="modal-content">
				        <div class="modal-header">
						          교환번호 <div id="chNO"></div>
						     / 주문번호<span id="chORNO"></span>
				          <button type="button" class="close" data-dismiss="modal">×</button>
				
				        </div>
				
				        <div class="modal-body">
				        <div class="form-group row">
                            <label class="col-12 col-sm-3 col-form-label text-sm-right">옵션1</label>
                            <div id="modalOption1" class="col-12 col-sm-8 col-lg-6"  style="margin-top:3px;"></div>
                        </div>
                        <div class="form-group row" style="padding-bottom:3px;" name="Option1SelectDiv">
                            <label class="col-12 col-sm-3 col-form-label text-sm-right">옵션1 변경</label>
                            <div class="btn-group" name="selectBtnDiv">
                                <select id="or_Option1Select" name="or_Option1Select" style="margin-left:15px; margin-top:3px;"></select>
                            </div>		
                        </div>
				        
				        <br><hr>
				        
				        <div class="form-group row">
                            <label class="col-12 col-sm-3 col-form-label text-sm-right">옵션2</label>
                            <div id="modalOption2" class="col-12 col-sm-8 col-lg-6"  style="margin-top:3px;"></div>
                        </div>
                        <div class="form-group row" style="padding-bottom:3px;">
                            <label class="col-12 col-sm-3 col-form-label text-sm-right">옵션2 변경</label>
                            <div class="btn-group">
                                <select id="or_Option2Select" name="or_Option2Select" style="margin-left:15px; margin-top:3px;"></select>
                            </div>		
                        </div>
                        
                        <br><hr>
				        
				        <div class="form-group row">
                            <label class="col-12 col-sm-3 col-form-label text-sm-right">교환상태</label>
                            <div id="modalChange" class="col-12 col-sm-8 col-lg-6"  style="margin-top:3px;">
                            	
                            </div>
                        </div>
                        <div class="form-group row" style="padding-bottom:3px;">
                            <label class="col-12 col-sm-3 col-form-label text-sm-right">교환상태 변경</label>
                            <div class="btn-group">
                                <select id="modalChangeSelect" name="modalChangeSelect" style="margin-left:15px; margin-top:3px;">
                                	<option value="1">교환접수</option>
					                <option value="2">교환진행중</option>
					                <option value="3">재발송</option>
					                <option value="4">교환완료</option>
                                </select>
                            </div>		
                        </div>
				        </div>
				        
				        <div class="modal-footer">
						  <!-- <button id="changeBtn" name="changeBtn" type="submit" class="btn btn-default" data-dismiss="modal" onclick="submitOk();">등록</button> -->	
				          <button id="changeBtn" name="changeBtn" type="submit" class="btn btn-default" data-dismiss="modal">등록</button>	
				         
				          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        </div>
				      </div>
				      
				
				    </div>
				
				  	</div>
					<!-- </form> -->
                     
                     <!-- // 교환 Modal -->
                     
                     
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">환불 테이블</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="reject" class="table table-striped table-bordered first" style="text-align:center;">
                                    <thead>
                                        <tr>
                                        	<th style="width:3%">번호</th>
                                            <th style="width:3%">환불번호</th>
                                            <th style="width:3%">주문번호</th>
                                            <th style="width:8%">주문자</th>
                                            <th style="width:8%">아이디</th> 
                                            <th style="width:10%">상품명</th>
                                            <th style="width:10%">상품옵션번호</th>
                                            <th style="width:8%">가격</th>
                                            <th style="width:8%">환불사유</th>
                                            <th style="width:8%">환불내용</th>
                                            <th style="width:8%">환불요청일</th>
                                            <th style="width:12%">환불상태</th>
                                            <th style="width:12%">환불</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="r" items="${rejectList}" varStatus="rl"> 
                                        <tr id="rejectTable" >
                                        	<td>${rl.count}</td>
                                            <td name="reNO">${r.re_No}</td>
                                            <td name="reORNO">${r.re_ordersMember.or_NO}</td>
                                            <td>${r.re_ordersMember.or_Member.mId}</td>
                                            <td>${r.re_ordersMember.or_Member.mName}</td>
                                            <td name="re_Pname">${r.re_Pname}</td>
                                            <td name="re_Op_NO">${r.re_ordersMember.pList.poList.op_NO}</td>
                                            <td>${r.re_Price}</td>
                                            <td>${r.re_Reason}</td>
                                            <td>${r.re_Comment}</td>
                                            <td>${r.re_Date}</td>
                                            <td name="re_Status">
                                            	<c:set var="re_Status" value="${r.re_Status}" />
                                            	<c:choose>
                                            		<c:when test="${re_Status eq '1'}">
                                            			<strong>환불접수</strong>
                                            		</c:when>
                                            		<c:when test="${re_Status eq '2'}">
                                            			<strong>환불진행중</strong>
                                            		</c:when>
                                            		<c:when test="${re_Status eq '3'}">
                                            			<strong style="color:tomato;">환불완료</strong>
                                            		</c:when>
                                            	</c:choose>
                                            </td>
                                            <td>
								               <button type="submit" class="btn btn-outline-danger "
								                       name="orderRejectBtn" style="width:60px; height:40px; ">
								                      	환불
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
                </div>
             </div>
         </div>       
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    
    
    <!-- ============================================================== -->
    <!--교환시 모달창 띄우기-->  
    <!-- ============================================================== -->
    <script>
	    $(document).ready(function(){
	    	$("button[name=orderChangeBtn]").click(function(){
	    		$("#orderChangeModal").modal();
	    		var chNO = $(this).parents("#changeTable").children('td[name=chNO]').text();
	    		var chORNO = $(this).parents("#changeTable").children('td[name=chORNO]').text();
	    		var chPNO = $(this).parents("#changeTable").children('td[name=chPNO]').text();
	    		var option1 = $(this).parents("#changeTable").children('td[class=option1]').text();
	    		var option2 = $(this).parents("#changeTable").children('td[class=option2]').text();
	    		var chPname = $(this).parents("#changeTable").children('td[name=chPname]').text();
	    		var ch_Status =  $(this).parents("#changeTable").children('td[name=ch_Status]').text();
	    		
	    			$.ajax({
	    				url:'orderChangeModal.ad',
	    				data:{chPNO:chPNO, chPname:chPname},
	    				type:'post',
	    				success:function(data){
	    					$("#chNO").text(chNO);
	    					$("#chORNO").text(chORNO);
	    					$("#modalOption1").text(option1);
	    					$("#modalOption2").text(option2);
	    					$("#modalChange").text(ch_Status);
	    					$("#chORNO").text
	    					$.each(data, function(index,po){
	    						//ajax로 주문번호 보낸뒤 해당 상품의 option 가져와서 option select 붙여주기
	         					$('#or_Option1Select').append("<option value="+(index++)+">"+ po.option_1 +"</option>"
	         					);
	         					$('#or_Option2Select').append("<option value="+(index++)+">"+ po.option_2 +"</option>"
	    				   		);
	    					}); 
	    				},error:function(){
	         				
	         			}
	    			});
	    	});
	    });
    </script>
    
    <!-- ============================================================== -->
    <!-- 교환 모달 저장 클릭시 ajax -->
    <!-- ============================================================== -->
    <script>
    	/* $(document).ready(function(){
    		$("submitOk()").click(function(){ */
    			$(document).on("click", "button[name=changeBtn]", function(event){
	   			var or_Option1Select =$('#or_Option1Select option:selected').text();
	   			var or_Option2Select =$('#or_Option2Select option:selected').text();
	   			var modalChangeSelect =$('#modalChangeSelect option:selected').val();
	   			
	   			var chNO =$('#chNO').text();
	   			var chORNO = $('#chORNO').text();
	   			
	   			var option1 =$(this).parents("#changeTable").children('td[class=option1]').text();
	    		var option2 =$(this).parents("#changeTable").children('td[class=option2]').text();
	    		var ch_Status = $(this).parents('tr[name=changeTable]').children('td[name=ch_Status]');
	    		/* var ch_Status =  $('#ch_Status'); */
	    		
	    		ch_Status.css("color","blue");
	    		ch_Status.css("font-weight","bold");
	    		
	    		console.log("option1"+option1);
	    		console.log("option2"+option2);
	    		console.log("ch_Status" +ch_Status);
	    		
	   			$.ajax({
	   				url:'changeOption.ad',
	   				data:{or_Option1Select:or_Option1Select, or_Option2Select:or_Option2Select, 
	   					  modalChangeSelect:modalChangeSelect , chNO:chNO ,chORNO:chORNO},
	   				type:'post',
	   				success:function(data){
	   					/* option1.text(or_Option1Select);
	   					option2.text(or_Option2Select);
	   					location.href="orderChangeReject.ad";
	   					switch(modalChangeSelect){
	   	    			case '1': modalChangeSelect="교환접수"; break;
	   	    			case '2': modalChangeSelect="교환진행중"; break;
	   	    			case '3': modalChangeSelect="재발송"; break;
	   	    			case '4': modalChangeSelect="교환완료"; break;
	   	    			}
	   					
	   					ch_Status.text(modalChangeSelect); */
	   					location.reload();
	   					
	   				},error:function(){
	        				
	        		  }
	   			});
    		});
    </script> 
    
    <!-- <script>
    	/* $(document).ready(function(){
    		$("submitOk()").click(function(){ */
    		$(document).on("click", "button[name=changeBtn]", function(event){
    			alert("??");
	   			/* var or_Option1Select =$('#or_Option1Select option:selected').text();
	   			var or_Option2Select =$('#or_Option2Select option:selected').text();
	   			var modalChangeSelect =$('#modalChangeSelect option:selected').val();
	   			var chNO =$('#chNO').text();
	   			var chORNO = $('#chORNO').text();
	   			var option1 = $(this).parents('#changeTable').children('td[name=option1]');
	    		var option2 = $(this).parents('#changeTable').children('td[name=option2]');
	    		var ch_Status =  $('#ch_Status');
	    		ch_Status.css("color","blue");
	    		ch_Status.css("font-weight","bold"); */
	    		
	    		var or_Option1Select =$(this).parents('div.Option1SelectDiv').children('div.selectBtnDiv').children("select[name=or_Option1Select]").text();
	    		console.log(or_Option1Select);
	    		
	    		
	   			$.ajax({
	   				url:'changeOption.ad',
	   				data:{or_Option1Select:or_Option1Select, or_Option2Select:or_Option2Select, 
	   					  modalChangeSelect:modalChangeSelect , chNO:chNO ,chORNO:chORNO},
	   				type:'post',
	   				success:function(data){
	   					option1.text(or_Option1Select);
	   					option2.text(or_Option2Select);
	   					
	   					switch(modalChangeSelect){
	   	    			case '1': modalChangeSelect="교환접수"; break;
	   	    			case '2': modalChangeSelect="교환진행중"; break;
	   	    			case '3': modalChangeSelect="재발송"; break;
	   	    			case '4': modalChangeSelect="교환완료"; break;
	   	    			}
	   					
	   					ch_Status.text(modalChangeSelect);
	   					
	   				},error:function(){
	        				
	        		  }
	   			});
    		});
    </script>  -->
   
    <!-- ============================================================== -->
    <!-- //교환 모달 저장 클릭시 ajax -->
    <!-- ============================================================== -->
    
    <!-- ============================================================== -->
    <!--반품시 alert창으로 확인 후 주문페이지 상태 변경+해당상품재고+1 -->  
    <!-- ============================================================== -->
    
    <script>
	    $(document).ready(function(){
	    	$("button[name=orderRejectBtn]").click(function(){
	    		if (confirm("환불하시겠습니까?")) {
	    			var reNO = $(this).parents("#rejectTable").children('td[name=reNO]').text();
	    			var reORNO = $(this).parents("#rejectTable").children('td[name=reORNO]').text();
	    			var re_Op_NO = $(this).parents("#rejectTable").children('td[name=re_Op_NO]').text();
	    			var re_Status = $(this).parents("#rejectTable").children('td[name=re_Status]');
	    			re_Status.css("color","tomato");
	    			re_Status.css("font-weight","bold");
	    			
	    			$.ajax({
	    				url:'orderReject.ad',
		   				data:{reNO:reNO, reORNO:reORNO,re_Op_NO:re_Op_NO},
		   				type:'post',
		   				success:function(data){
		   					if(data=='Sucess'){
		   					alert('환불완료.');
			    			re_Status.text('환불완료');
		   					}
		   				},error:function(){
		        				
		        		}
	    			});
	    		}
	    	});
	    });
    </script>
    
    <!-- ============================================================== -->
    <!--/ <!--반품시 alert창으로 확인 후 주문페이지 상태 변경+해당상품재고+1 -->  
    <!-- ============================================================== -->
    
  
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
    
    <!-- end Optional JavaScript -->
    <!-- ============================================================== -->         
</body>
 
</html>