<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>상품 상세보기</title>
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
                            <h2 class="pageheader-title">판매상품 정보</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="member-management.jsp" class="breadcrumb-link">판매상품 관리</a></li>
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">판매상품정보</a></li>
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
                                <h5 class="card-header">판매상품정보</h5>
                                <div class="card-body">
                                    <form action="productUpdate.ad" method="post" enctype="multipart/form-data">
                                    	<div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_NO" value="${po.p_NO}" readonly="readonly">
                                            </div>
                                        </div>
                                    	<div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품이미지</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                            	<c:set var="img" value="${po.pfList.pf_Img1_ReName}"/>
                                                <c:if test="${empty img}">
                                                <img src="/brocoli/resources/adminResources/images/noImage.PNG" width="120" height="120">                                                
                                                </c:if>
                                                <c:if test="${not empty img }">
                                            	<img src="/brocoli/resources/product-Img/${po.pfList.pf_Img1_ReName}" width="120" height="120">
                                                </c:if>   
                                                
                                                <c:set var="img" value="${po.pfList.pf_Img2_ReName}"/>
                                                <c:if test="${empty img}">
                                                <img src="/brocoli/resources/adminResources/images/noImage.PNG" width="120" height="120">                                                
                                                </c:if>
                                                <c:if test="${not empty img }">
                                            	<img src="/brocoli/resources/product-Img/${po.pfList.pf_Img2_ReName}" width="120" height="120">
                                                </c:if>    
                                                
                                                <c:set var="img" value="${po.pfList.pf_Img3_ReName}"/>
                                                <c:if test="${empty img}">
                                                <img src="/brocoli/resources/adminResources/images/noImage.PNG" width="120" height="120">                                                
                                                </c:if>
                                                <c:if test="${not empty img }">
                                            	<img src="/brocoli/resources/product-Img/${po.pfList.pf_Img3_ReName}" width="120" height="120">
                                                </c:if>  
                                                
                                                <c:set var="img" value="${po.pfList.pf_Img4_ReName}"/>
                                                <c:if test="${empty img}">
                                                <img src="/brocoli/resources/adminResources/images/noImage.PNG" width="120" height="120">                                                
                                                </c:if>
                                                <c:if test="${not empty img }">
                                            	<img src="/brocoli/resources/product-Img/${po.pfList.pf_Img4_ReName}" width="120" height="120">
                                                </c:if>  
                                                
                                                <c:set var="img" value="${po.pfList.pf_Img5_ReName}"/>
                                                <c:if test="${empty img}">
                                                <img src="/brocoli/resources/adminResources/images/noImage.PNG" width="120" height="120">                                                
                                                </c:if>
                                                <c:if test="${not empty img }">
                                            	<img src="/brocoli/resources/product-Img/${po.pfList.pf_Img5_ReName}" width="120" height="120">
                                                </c:if>  
                                                
                                                <c:set var="img" value="${po.pfList.pf_Img6_ReName}"/>
                                                <c:if test="${empty img}">
                                                <img src="/brocoli/resources/adminResources/images/noImage.PNG" width="120" height="120">                                                
                                                </c:if>
                                                <c:if test="${not empty img }">
                                            	<img src="/brocoli/resources/product-Img/${po.pfList.pf_Img6_ReName}" width="120" height="120">
                                                </c:if>  
                                                                                    
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Name" value="${po.p_Name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Name" value="${po.brList.b_Name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">기본가</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Price" value="${po.p_Price}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">할인가</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Sail_Price" value="${po.p_Sail_Price}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">판매가</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Last_Price" value="${po.p_Last_Price}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">카테고리(대)</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Bcategory" value="${po.p_Bcategory}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">카테고리(소)</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Scategory" value="${po.p_Scategory}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">총 주문수</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Order_Count"  value="${po.p_Order_Count}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품설명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Comment" value="${po.p_Comment}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품입고일</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Insert_Date" value="${po.p_Insert_Date}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품수정날짜</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <c:set var="p_Modify_Date" value="${po.p_Modify_Date}"/>
                                                <c:if test="${empty p_Modify_Date}">
                                                <input type="text" class="form-control" name="p_Modify_Date" value="${po.p_Insert_Date}" readonly="readonly">                                        
                                                </c:if>
                                                <c:if test="${not empty p_Modify_Date }">
                                                <input type="text" class="form-control" name="p_Modify_Date" value="${po.p_Modify_Date}" readonly="readonly">
                                                </c:if> 
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">작성자</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Writer" value="${po.p_Writer}" readonly="readonly">
                                            </div>
                                        </div>
                                        <input type="hidden" class="form-control" name="p_Modify_Id" value="${loginUser.mId}"> 
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품수정ID</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" value="${po.p_Modify_Id}" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품판매여부</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input id="p_Show_YN" type="text" class="form-control" name="p_Show_YN" value="${po.p_Show_YN}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상태</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <c:set var="p_Status" value="${po.p_Status}" />
                                            	<c:choose>
                                            		<c:when test="${p_Status eq '1'}">
                                            			<h4 id="p_Status">판매중</h4>
                                            		</c:when>
                                            		<c:when test="${p_Status eq '2'}">
                                            			<h4 id="p_Status">할인중</h4>
                                            		</c:when>
                                            		<c:when test="${p_Status eq '3'}">
                                            			<h4 id="p_Status">품절</h4>
                                            		</c:when>
                                            	</c:choose>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상태 변경</label>
                                            <div class="btn-group">
                                                <select  id="p_StatusOP" name="p_Status" style="margin-left:15px">
                                                	<option value="1" >판매중</option>
                                                	<option value="2" >할인중</option>
                                                	<option value="3" >품절</option>
                                                </select>
                                            </div>		
                                        </div>                                                                            
                                        <div class="form-group row text-right">
                                            <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                                <button type="submit" class="btn btn-dark btn-xs">저장</button>
                                            </div>
                                        </div>
                                    </form>
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
     	var p_Status = $("#p_Status").text();
     	var selling = "판매중";
     	var sale = "할인중";
     	var soldOut = "품절";
     	if(p_Status == selling ){
     		$("#p_StatusOP option[value='1']").attr("selected","selected"); 
     	}else if(p_Status == sale){
     		$("#p_StatusOP option[value='2']").attr("selected","selected"); 	
     	}else if(p_Status == soldOut){
     		$("#p_StatusOP option[value='3']").attr("selected","selected"); 	
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