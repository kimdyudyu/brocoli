<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/bootstrap/css/bootstrap.min.css">
	<link href="/brocoli/resources/adminResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
	<link rel="stylesheet" href="/brocoli/resources/adminResources/libs/css/style.css">
	<link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
	<!-- 글작성 에디터-->
    <!-- css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>
    <!-- /글작성 에디터-->
	<title>Concept - Bootstrap 4 Admin Dashboard Template</title>
</head>

<body>
	<%@ include file="header.jsp"%>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">

		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="dashboard-ecommerce">
				<div class="container-fluid dashboard-content ">
					<!-- ============================================================== -->
					<!-- pageheader  -->
					<!-- ============================================================== -->
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="page-header">
								<h2 class="pageheader-title">오너 콘택트</h2>
								<div class="page-breadcrumb">
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item">가맹브랜드 관리</a></li>
											<li class="breadcrumb-item">오너콘택트</a></li>
											<li class="breadcrumb-item">수정하기</a></li>
										</ol>
									</nav>
								</div>
							</div>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- end pageheader  -->
					<!-- ============================================================== -->
					<div class="row">
						<div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
						  <form action="ownerContactUpdateSave.ad" enctype="multipart/form-data" method="post">
							<div class="card">
								<div class="card-header p-4">
									<div class="card-header" style="border-bottom: none; padding-top: 22px; padding-bottom: 22px; background-color: none;">
										<h2 class="card-title" style="margin-bottom: 0px; font-size: 17px">
											<input type="hidden" name="con_NO" value="${c.con_NO}">
											<input type="hidden" name="con_Img" value="${ c.con_Img }">
											<input type="hidden" name="con_Img_ReName" value="${ c.con_Img_ReName }">
		
											<span style="font-size: 85%;">작성자</span> 
											<span style="padding-left: 6%; font-size: 85%;">
												<input type="text" name="con_Writer" value="${c.con_Writer}" style="width:16.5vw; border: solid 1.2px lightgrey;">
											</span>
											<br>
											<hr>
											<div style="float: left; width: 50%">
												<span style="font-size: 85%;">제 목</span> 
												<span style="padding-left: 15%; font-size: 85%;">
													<input type="text" name="con_Title" value="${c.con_Title}" style="width:16.5vw; border: solid 1.2px lightgrey;">
												</span>
											</div>
											<div style="float: left; width:20vw">
												<span style="padding-left: 9vw; font-size: 85%;">작성일</span>
												<span style="padding-left: 1vw; font-size: 85%;">${c.con_Date}</span>
												<input type="hidden" name="con_Date" value="${c.con_Date}">
											</div>
											<br>
											<hr>
											<span style="padding-left: 5%; font-size: 85%;"> 
												<div>
												<input type="file" name="reloadFile" accept="resources/buploadFiles/" onchange="loadImg(this, 1);" style="height:2.4vw;"/>
												</div>
												<c:if test="${ !empty c.con_Img }">
													<br>현재 업로드 파일 : 
													<img src="/brocoli/resources/ownerContact/${c.con_Img_ReName}" alt="user" class="rounded" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
												</c:if>
											</span>
										</h2>
									</div>
								</div>
								<div class="card-body">
									<div class="row mb-4">
										<div class="col-sm-6">
										<textarea type="" name="con_Content" style="width:47vw; height:20vw; border: solid 1.2px lightgrey;">${c.con_Content}</textarea>
										</div>
									</div>
									<div class="card-footer float-right" style="background-color: transparent !important; border-top: white;">
										<button type="submit" class="btn btn-light btn-xs">저장</button>
									</div>
								</div>
								<div class="card-footer bg-white"></div>
							</div>
						  </form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- ============================================================== -->
	<!-- end wrapper  -->
	<!-- ============================================================== -->
	</div>
	</div>
	<!-- ============================================================== -->
	<!-- end main wrapper  -->
	<!-- ============================================================== -->
	<!-- Optional JavaScript -->
	<!-- 첨부파일 미리보기 기능 지원 -->
	<script>
	   //사진 게시판 미리보기 기능 지원 스크립트
	   $(function(){
	      $('#ownerContactImgArea').hide();
	      
	      $('#titleImgArea').click(() => {
	          $('#pf_Img1').click();
	       });
	         
	   });
	
	   function loadImg(value, num){
	      
	      if(value.files && value.files[0])  {
	         
	         var reader = new FileReader();
	         
	         reader.onload = function(e){          
	            switch(num) {
	            case 1 : $('#titleImg').attr('src', e.target.result);
	               break;
	            }
	         }
	         reader.readAsDataURL(value.files[0]);
	      }
	   }
	</script>
	
	<!-- 글작성 에디터 -->
	<script>
	  $(document).ready(function() {
	      $('#summernote').summernote();
	  });
	  $('#summernote').summernote({
	      height: 300,
	      width: 1000,                 // set editor height
	      minHeight: null,             // set minimum height of editor
	      maxHeight: null,             // set maximum height of editor
	      focus: true                  // set focus to editable area after initializing summernote
	  });
	</script>
	<!-- /글작성 에디터 -->
	
	
	<!-- slimscroll js -->
	<script
		src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
	<!-- main js -->
	<script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
</body>

</html>