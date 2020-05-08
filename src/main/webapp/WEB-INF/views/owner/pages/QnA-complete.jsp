<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <%@ include file="header.jsp" %>
        
    <title>오너 : 상품문의</title>
    
    <style type="text/css">
       .dataTables_length{
          display: none;
       }
       #DataTables_Table_0_filter{
          float: right;
       }
       .dataTables_info{
          display: none;
       }
       .pagination{
          float: right;
          margin-top: 10px;
       }
       .table-responsive{
          overflow-x: hidden;
       }
       .table-bordered td, .table-bordered th{
           background-color: #fff;
       }
       .card-body{
          padding: 0px;
       }
       .btn-primary:not(:disabled):not(.disabled).active{
             color: #fff;
          background-color: #23253a;
          border-color: #161826;
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
         <div class="influence-profile">
            <div class="container-fluid dashboard-content ">
               <!-- ============================================================== -->
               <!-- pageheader -->
               <!-- ============================================================== -->
               <div class="row">
                  <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                     <div class="page-header">
                        <h3 class="mb-2">완료된 상품문의</h3>
                        <div class="page-breadcrumb">
                           <nav aria-label="breadcrumb">
                              <ol class="breadcrumb">
                                 <li class="breadcrumb-item"><a href="#"
                                    class="breadcrumb-link">메뉴</a></li>
                                 <li class="breadcrumb-item active" aria-current="page">상품문의</li>
                                 <li class="breadcrumb-item active" aria-current="page">완료된 상품문의</li>
                              </ol>
                           </nav>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- ============================================================== -->
               <!-- end pageheader -->
               <!-- ============================================================== -->
               <div class="card" style="padding-top: 13px;">
                  <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                     <div class="card-body">
                        <div class="table-responsive">
                           <table class="table table-striped table-bordered first">
                              <thead style="display: none;">
                                 <tr>
                                    <th style="width: 100%;">Name</th>
                                 </tr>
                              </thead>
                              <tbody id="list">
                               	<c:choose>
                               		<c:when test="${empty list}">
                               			<tr>
                               				<td><div><strong>답변한 상품문의가 없습니다.</strong></div></td>
                               			</tr>
                               		</c:when>
                               	</c:choose>
                                 <c:forEach var="i" items="${ list}">
                                    <tr>
                                       <td style="display: none; width: 0px;">${i.pq_No *-1}</td>
                                       <td style="width: 100%;">
                                          <div class="card-body">
                                             <div style="width:100%; border-bottom: 1px solid #e6e6f2; height: 40px;">
	                                                <img style="height: 35px;" src="/brocoli/resources/product-Img/${i.plist.pfList.pf_Img1_ReName }" alt="" class="user-avatar-md">
	                                                <span class="text-dark font-weight-bold">
	                                                   상품명 - ${i.plist.p_Name }
	                                                </span>
	                                                
	                                                <!-- <a class="btn btn-dark" style="float: right; color: #fff; padding: 5px 9px; margin-left: 5px;">삭제</a>
	                                                <a class="btn btn-dark" style="float: right; color: #fff; padding: 5px 9px; ">수정</a> -->
	                                                <span class="text-mute" style="margin-left: 13px; margin-right:15px; float: right; margin-top: 5px;" >
	                                                   <span class="badge-dot badge-light"></span>
	                                                   ${i.pq_Modify_Date }
	                                                </span>
	                                                <span class="text-dark font-weight-bold" style="margin-left: 15px; float: right;  margin-top: 5px;">${i.pq_Writer }</span>
                                             </div>
                                             <div class="review-block" style="padding: 8px;">
	                                                <div class="m-r-10" style="margin-bottom: 10px; width: 205px;">
		                                               		<c:if test="${!empty i.pq_Img1_ReName}">
			                                                   <img  src="/brocoli/resources/review-Img/${i.pq_Img1_ReName}"
			                                                      alt="user" class="rounded" width="100"> 
		                                                   	</c:if>
		                                                   	<c:if test="${!empty i.pq_Img2_ReName}">
			                                                   <img  src="/brocoli/resources/review-Img/${i.pq_Img2_ReName}"
			                                                      alt="user2" class="rounded" width="100">
		                                                   	</c:if>
	                                                </div>
	                                                <div style=" width: 90%; height: auto; background-color: none; border: none; text-align: left;
	                                                padding: 8px; resize: none; " class="review-text font-italic m-0">${i.pq_Content}</div>
	                                                
	                                                <hr style=" border-top: 1px solid #e6e6f2;">
	                                                
	                                                <div style=" width: 100%; height: auto; float: right; display: inline-block; padding: 5px;">
	                                               
	                                               			<c:forEach var="j" items="${rlist}">
	                                               				<c:choose>
	                                               					<c:when test="${i.pq_No eq j.pqr_ParentNo}">
					                                                   <div style="display: inline-block; padding: 5px; vertical-align: middle; width: 100%; height: auto; border: 1px solid #e6e6f2; border-radius: 5px; margin-bottom: 4px;">
						                                                   <div style=" float: left;">
						                                                   		<img src="/brocoli/resources/brandLogo/${j.blist.b_Logo_ReName}"alt="error" style="width: 40px; height: 40px; border-radius: 50%;"> 
						                                                   </div>
						                                                   <div style="display: table; float: left; vertical-align: middle; text-align: center; margin-right: 3px; min-height: 40px; margin-left: 8px;">
						                                                   		<span style="display: table-cell; vertical-align: middle; font-size: 15px;">
						                                                   			<strong>${j.pqr_Writer}</strong>
						                                                   		</span>
						                                                   </div>
						                                                   <div style="display: table; float: left; height: auto; background: none; resize: none; border: 0; vertical-align: middle; min-height: 40px; margin-left: 5px;">
						                                                   		<span style="display: table-cell; vertical-align: middle;">${j.pqr_Content}</span>
						                                                   </div>
						                                                   <div style=" display: inline-block; float: right;">
						                                                   		<!-- <a style="color: #fff;" class="badge badge-light">수정</a> -->
							                                                   	<c:url var="deleteReply" value="QnAReplyDelete.ow" >
							                                                   		<c:param name="rrNO" value="${j.pqr_No}"/>
							                                                   		<c:param name="bNO" value="${loginUser.brand_NO}"/>
							                                                   	</c:url>
						                                                   		<a style="color: #fff;" class="badge badge-light" href="${deleteReply}">삭제</a>
						                                                   		<br>
						                                                   		<span style="margin-left: 5px;">${j.pqr_Modify_Date}</span>
						                                                   </div>
					                                                   </div>
			                                                   		</c:when>
			                                                   	</c:choose>
			                                                 </c:forEach>
			                                                 
	                                                </div>
	                                                <form action="QnAReply-Insert.ow" method="post" enctype="multipart/form-data" onsubmit="return checks(this)">
	                                                <div style="width: 100%; display: flex;">
		                                                <input name="pqr_No" type="text" style="display: none;" value="${i.pq_No}" readonly="readonly">
		                                                <input name="bNO" type="text" style="display: none;" value="${loginUser.brand_NO}" readonly="readonly">
		                                                <input name="pqr_Writer" type="text" style="display: none;" value="${loginUser.mName}" readonly="readonly">
		                                                <input name="pqr_Mno" type="text" style="display: none;" value="${loginUser.mNO}" readonly="readonly">
	                                                   <textarea name="pqr_Content" id="ReplyComent"
	                                                      style="width: 100%; margin-top: 10px; border-radius: 5px; resize: none; display: inline-block;"></textarea>
	                                                   <button class="btn btn-primary active"
	                                                      style="height: 41px; margin-top: 13px; margin-left: 5px; display: inline-block; background-color: #1e1e21">답글등록</button>
	                                                </div>
	                                                </form>
                                             </div>
                                          </div>
                                       </td>
                                    </tr>
                                 </c:forEach>
                              </tbody>
                              <tfoot style="display: none;">
                                 <tr>
                                    <th style="display: none; width: 100%;">Name</th>
                                 </tr>
                              </tfoot>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   


	<script>
	    function checks(this){
		    //상품명 공백 확인 
		    
		  	if(this.val() == ""){
			  alert("답글내용을 입력해 주세요."); 
			  this.focus(); 
			  return false; 
			}
	    };
	</script>
	
   <script
         src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
      <script
         src="/brocoli/resources/ownerResources/vendor/multi-select/js/jquery.multi-select.js"></script>
      <script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
      <script
         src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
      <script
         src="/brocoli/resources/ownerResources/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
      <script
         src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
      <script
         src="/brocoli/resources/ownerResources/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
      <script
         src="/brocoli/resources/ownerResources/vendor/datatables/js/data-table.js"></script>
      <script
         src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
      <script
         src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
      <script
         src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
      <script
         src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
      <script
         src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
      <script
         src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
      <script
         src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
      <script
         src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
      <script
         src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
</body>
 
</html>