<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>회원 상세페이지</title>
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
                            <h2 class="pageheader-title">회원정보</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="member-management.jsp" class="breadcrumb-link">회원관리</a></li>
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">회원정보</a></li>
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
                                <h5 class="card-header">회원정보</h5>
                                <div class="card-body">
                                    <form action="memberUpdate.ad" method="post">
                                    	<div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">회원번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="mNO" value="${m.mNO}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">이름</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="mName" value="${m.mName}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">아이디</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="mId" value="${m.mId}">
                                            </div>
                                        </div>
                                        <div class="form-group row" style="display:none;">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">비밀번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="pwd" value="${m.pwd}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">성별</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="gender" value="${m.gender}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">생년월일</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="birthDay" value="${m.birthDay}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">전화번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="phone" value="${m.phone}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">주소</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="address" value="${m.address}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                     	                       <label class="col-12 col-sm-3 col-form-label text-sm-right">이메일</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="email" class="form-control" name="email" value="${m.email}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">적립금</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="mPoint" value="${m.mPoint}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">총 주문수</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="order_Count" value="${m.order_Count}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">총 주문금액</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input data-parsley-type="number" type="text" class="form-control" name="order_Price" value="${m.order_Price}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">가입일</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="enrollDate" value="${m.enrollDate}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">삭제일</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control"  value="${m.del_Date}" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
	                                        	<c:set var="mgrant" value="${m.mGrant }"/>
	                                        	<c:choose>
	                                       			<c:when test="${mgrant eq '1'}">
	                                       				<input type="text" class="form-control" name="brand" value="${m.brand}">
	                                           		</c:when>
	                                           		<c:when test="${mgrant eq '2'}">
	                                           			<input type="text" class="form-control" name="brand" value="${m.brand}">
	                                           		</c:when>
	                                           		<c:when test="${mgrant eq '3'}">
	                                           			<input type="text" class="form-control" name="brand" value="${m.brand}"  readonly="readonly">
	                                           		</c:when>
	                                            </c:choose>
                                        	</div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드NO</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
	                                        	<c:set var="mgrant" value="${m.mGrant }"/>
	                                        	<c:choose>
	                                       			<c:when test="${mgrant eq '1'}">
	                                       				<input type="text" class="form-control" name="brand_NO" value="${m.brand_NO}" >
	                                           		</c:when>
	                                           		<c:when test="${mgrant eq '2'}">
	                                           			<input type="text" class="form-control" name="brand_NO" value="${m.brand_NO}">
	                                           		</c:when>
	                                           		<c:when test="${mgrant eq '3'}">
	                                           			<input type="text" class="form-control" name="brand_NO" value="${m.brand_NO}"  readonly="readonly">
	                                           		</c:when>
	                                            </c:choose>
                                        	</div>
                                        </div>
                                       	<div class="form-group row" style="padding-bottom:3px;">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">회원정지 사유</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="block_Content" value="${m.block_Content}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">회원정지</label>
                                            <div class="col-12 col-sm-8 col-lg-6"  style="margin-top:3px;">
                                                <c:set var="block_YN1" value="${m.block_YN}" />
                                            	<c:choose>
                                            		<c:when test="${block_YN1 eq 'Y'}">
                                            			<h4 id="block_YN1">정지O</h4>
                                            		</c:when>
                                            		<c:when test="${block_YN1 eq 'N'}">
                                            			<h4 id="block_YN1">정지X</h4>
                                            		</c:when>
                                            	</c:choose>
                                            </div>
                                        </div>
                                        <div class="form-group row" style="padding-bottom:3px;">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">회원 정지여부</label>
                                            <div class="btn-group">
                                                <select id="block_YN2" name="block_YN" style="margin-left:15px; margin-top:3px;">
                                                	<option value="N">정지X</option>
                                                	<option value="Y">정지O</option>
                                                </select>
                                            </div>		
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">권한</label>
                                            <div class="col-12 col-sm-8 col-lg-6"  style="margin-top:3px;">
                                                <c:set var="m_Grant" value="${m.mGrant}" />
                                            	<c:choose>
                                            		<c:when test="${m_Grant eq '1'}">
                                            			<h4 id="m_Grant">admin</h4>
                                            		</c:when>
                                            		<c:when test="${m_Grant eq '2'}">
                                            			<h4 id="m_Grant">owner</h4>
                                            		</c:when>
                                            		<c:when test="${m_Grant eq '3'}">
                                            			<h4 id="m_Grant">일반회원</h4>
                                            		</c:when>
                                            	</c:choose>
                                            </div>
                                        </div>
                                        <div class="form-group row" style="padding-bottom:3px;">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">owner 권한부여</label>
                                            <div class="btn-group">
                                                <select id="mGrant_Class" name="mGrant" style="margin-left:15px; margin-top:3px;">
                                                	<option value="3">일반</option>
                                                	<option value="2">owner</option>
                                                	<option value="1">admin</option>
                                                </select>
                                            </div>		
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">회원신고</label>
                                            <div class="col-12 col-sm-8 col-lg-6"  style="margin-top:3px;">
                                                <c:set var="report_YN" value="${m.report_YN}" />
                                            	<c:choose>
                                            		<c:when test="${report_YN eq 'Y'}">
                                            			<h4 id="report_YN">신고</h4>
                                            		</c:when>
                                            		<c:when test="${report_YN eq 'N'}">
                                            			<h4 id="report_YN">신고해제</h4>
                                            		</c:when>
                                            	</c:choose>
                                            </div>
                                        </div>
                                        <div class="form-group row" style="padding-bottom:3px;">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">회원 삭제여부</label>
                                            <div class="btn-group">
                                                <select id="report_YN2" name="report_YN" style="margin-left:15px; margin-top:3px;">
                                                	<option value="N">신고해제</option>
                                                	<option value="Y">신고</option>
                                                </select>
                                            </div>		
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">회원삭제</label>
                                            <div class="col-12 col-sm-8 col-lg-6"  style="margin-top:3px;">
                                                <c:set var="del_Flag_YN1" value="${m.del_Flag_YN}" />
                                            	<c:choose>
                                            		<c:when test="${del_Flag_YN1 eq 'Y'}">
                                            			<h4 id="del_Flag_YN1">삭제</h4>
                                            		</c:when>
                                            		<c:when test="${del_Flag_YN1 eq 'N'}">
                                            			<h4 id="del_Flag_YN1">활동중</h4>
                                            		</c:when>
                                            	</c:choose>
                                            </div>
                                        </div>
                                        <div class="form-group row" style="padding-bottom:3px;">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">회원 삭제여부</label>
                                            <div class="btn-group">
                                                <select id="del_Flag_YN2" name="del_Flag_YN" style="margin-left:15px; margin-top:3px;">
                                                	<option value="N">활동중</option>
                                                	<option value="Y">삭제</option>
                                                </select>
                                            </div>		
                                        </div>
                                       	<div class="form-group row text-right">
                                    		<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                            	<button type="submit" class="btn btn-dark btn-xs" >저장</button>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="form-group row text-right">
                                    	<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                    		<form action="memberDelete.ad" method="post" >
                                        		<input type="hidden" name="mId" value="${m.mId}"/>	
                                            	<button type="submit" class="btn btn-dark btn-xs">회원삭제</button>
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
    
    <!-- 작성자 : 신은지 
         1. 회원권한 dropdown 저장값 불러오기  -->
    <script>
     	var m_Grant = $("#m_Grant").text();
     	var admin = "admin";
     	var owner = "owner";
     	var members = "일반회원";
     	if(m_Grant == admin ){
     		$("#mGrant_Class option[value='1']").attr("selected","selected"); 
     	}else if(m_Grant == owner){
     		$("#mGrant_Class option[value='2']").attr("selected","selected"); 	
     	}else if(m_Grant == members){
     		$("#mGrant_Class option[value='3']").attr("selected","selected");
     	}
    </script>
    <!-- //신은지 -->
    
    <!-- 작성자 : 신은지 
         2. 회원정지유무 dropdown 저장값 불러오기  -->
    <script>
     	var block_YN1 = $("#block_YN1").text();
     	var active = "정지X";
     	var stop = "정지O";
     	if(block_YN1 == active ){
     		$("#block_YN2 option[value='N']").attr("selected","selected"); 
     	}else if(block_YN1 == stop){
     		$("#block_YN2 option[value='Y']").attr("selected","selected"); 	
     	}
     	
    </script>
    
    <!-- //신은지 -->
      <!-- 작성자 : 신은지 
         3. 회원신고유무 dropdown 저장값 불러오기  -->
    <script>
     	var report_YN = $("#report_YN").text();
     	var release = "신고해제";
     	var declare = "신고";
     	if(del_Flag_YN1 == release ){
     		$("#report_YN2 option[value='N']").attr("selected","selected"); 
     	}else if(del_Flag_YN1 == declare){
     		$("#report_YN2 option[value='Y']").attr("selected","selected"); 	
     	}
    </script>
    <!-- //신은지 -->
    
    <!-- //신은지 -->
      <!-- 작성자 : 신은지 
         4. 회원삭제유무 dropdown 저장값 불러오기  -->
    <script>
     	var del_Flag_YN1 = $("#del_Flag_YN1").text();
     	var save = "활동중";
     	var del = "삭제";
     	if(del_Flag_YN1 == save ){
     		$("#del_Flag_YN2 option[value='N']").attr("selected","selected"); 
     	}else if(del_Flag_YN1 == del){
     		$("#del_Flag_YN2 option[value='Y']").attr("selected","selected"); 	
     	}
    </script>
    <!-- //신은지 -->
    <!-- Optional JavaScript -->
    <script src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/parsley/parsley.js"></script>
    <script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
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