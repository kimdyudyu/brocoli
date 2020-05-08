<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>브랜드 상세페이지</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/brocoli/resources/adminResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/brocoli/resources/adminResources/libs/css/style.css">
    <link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
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
                            <h2 class="pageheader-title">브랜드 정보</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="member-management.jsp" class="breadcrumb-link">가맹브랜드 관리</a></li>
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">브랜드정보</a></li>
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
                        <!-- valifation types -->
                        <!-- ============================================================== -->
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">브랜드정보</h5>
                                <div class="card-body">
                                    <form action="brandUpdate.ad" method="post" enctype="multipart/form-data">
                                    	<div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">로고</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                            	<c:set var="img" value="${b.b_Logo_ReName}"/>
                                                <c:if test="${empty img}">
                                                <img src="/brocoli/resources/adminResources/images/noImage.PNG" width="130" height="130">                                                
                                                </c:if>
                                                <c:if test="${not empty img }">
                                            	<img src="/brocoli/resources/brandLogo/${b.b_Logo_ReName}" width="130" height="130">
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Name" value="${b.b_Name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="brand_NO" value="${b.brand_NO}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드설명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Comment" value="${b.b_Comment}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">사업자번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Business_NO" value="${b.b_Business_NO}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">대표</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Owner_Name" value="${b.b_Owner_Name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드주소</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Address" value="${b.b_Address}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">전화번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Phone" value="${b.b_Phone}">
                                            </div>
                                        </div>
                                        <input type="hidden" class="form-control" name="sessionName" value="${loginUser.mName}">                                            
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">수정자</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Modify_ID" value="${loginUser.mName}" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">수정일</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Modify_Date"  value="${b.b_Modify_Date}" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">입점일</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Enter_Date" value="${b.b_Enter_Date}" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">폐점일</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control"  name="b_Close_Date" value="${b.b_Close_Date}" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">폐점 사유</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Close_Content" value="${b.b_Close_Content}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">owner 아이디1</label>
                                            <div class="col-lg-2">
                                                <input type="text" class="form-control" name="b_Owner1_ID" value="${b.b_Owner1_ID}">
                                            </div>
                                            <label class="col-12 col-sm-2 col-form-label text-sm-right">owner email1</label>
                                            <div class="col-12 col-lg-2">
                                                <input type="text" class="form-control" name="b_Email1" value="${b.b_Email1}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">owner 아이디2</label>
                                            <div class="col-lg-2">
                                                <input type="text" class="form-control" name="b_Owner2_ID" value="${b.b_Owner2_ID}">
                                            </div>
                                            <label class="col-12 col-sm-2 col-form-label text-sm-right">owner email2</label>
                                            <div class="col-12 col-lg-2">
                                                <input type="text" class="form-control" name="b_Email2" value="${b.b_Email2}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">owner 아이디3</label>
                                            <div class="col-lg-2">
                                                <input type="text" class="form-control" name="b_Owner3_ID" value="${b.b_Owner3_ID}">
                                            </div>
                                            <label class="col-12 col-sm-2 col-form-label text-sm-right">owner email3</label>
                                            <div class="col-12 col-lg-2">
                                                <input type="text" class="form-control" name="b_Email3" value="${b.b_Email3}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">입점 상태</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <c:set var="b_Status" value="${b.b_Status}" />
                                            	<c:choose>
                                            		<c:when test="${b_Status eq 'Y'}">
                                            			<h4 id="b_Status">입점</h4>
                                            		</c:when>
                                            		<c:when test="${b_Status eq 'N'}">
                                            			<h4 id="b_Status">폐점</h4>
                                            		</c:when>
                                            	</c:choose>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">입점 상태 변경</label>
                                            <div class="btn-group">
                                                <select  id="block_YN" name="b_Status" style="margin-left:15px">
                                                	<option value="Y" >입점</option>
                                                	<option value="N" >폐점</option>
                                                </select>
                                            </div>		
                                        </div>
                                        <div class="form-group row text-right">
                                            <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                                <button type="submit" class="btn btn-dark btn-xs">저장</button>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="form-group row text-right">
                                    	<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                    		<form action="brandDelete.ad" method="post" >
                                        		<input type="hidden" name="brand_NO" value="${b.brand_NO}"/>	
                                            	<button type="submit" class="btn btn-dark btn-xs">브랜드삭제</button>
                                    		</form>
                                    	</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end valifation types -->
                        <!-- ============================================================== -->
                    </div>           
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/parsley/parsley.js"></script>
    <script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
    
    <!-- 작성자 : 신은지 
         1. dropdown 저장값 불러오기  -->
    <script>
     	var b_Status = $("#b_Status").text();
     	var enter = "입점";
     	var out = "폐점";
     	if(b_Status == enter ){
     		$("#block_YN option[value='Y']").attr("selected","selected"); 
     	}else if(b_Status == out){
     		$("#block_YN option[value='N']").attr("selected","selected"); 	
     	}
    </script>
    <!-- //신은지 -->
    
    <script>
    $('#form').parsley();
    </script>
    <script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
    </script>
    
</body>
</html>