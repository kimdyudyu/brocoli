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
											<li class="breadcrumb-item">게시글</a></li>
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
						 	<form action="ownerContactWrite.ad" enctype="multipart/form-data" method="post">
							<div class="card">
								<div class="card-header p-4">
									<div class="card-header" style="border-bottom: none; padding-top: 22px;background-color: none; font-family: 'Do Hyeon', sans-serif;">
										<h3 class="card-title" style="margin-bottom: 0px; font-size: 16px">	
											<label>작성자</label><br><br>
											<input type="text" name="con_Writer" value="${loginUser.mName}" readonly="readonly" style="height:35px; width:100%; border: solid 1.3px lightgrey;">
											<input type="hidden" name="con_Mno" value="${loginUser.mNO}" />
											<input type="hidden" name="con_Bno" value="${loginUser.brand_NO}" />
										</h3><br><br>
										<h3 class="card-title" style="margin-bottom: 0px; font-size: 16px">	
											<label>제목</label> <br><br>
											<input type="text" name="con_Title" style="height:35px; width: 100%; border: solid 1.3px lightgrey;" placeholder="제목을 입력해주세요." >
              							</h3><br>
										<div class="col-12 col-sm-8 col-lg-6">
                                           <div class="form-group row">
                                              <div id="titleImgArea" style=" float: left; width: 100px; height: 100px; vertical-align: middle; display: flex; align-items: center; class="img-thumbnail mr-3" >
                                                 <img id="titleImg" src="http://via.placeholder.com/"  alt="첨부파일 "  style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
                                              </div>
                                           </div>
                                       	</div>
                                        <div class="ownerContactImgArea" id="ownerContactImgArea">
                                           <input type="file" id="pf_Img1" name="file1" accept="resources/ownerContact/*" onchange="loadImg(this, 1);" />
                                        </div>
         							</div>
								</div>
								<div class="card-body" style="padding-left:100px;">
									<div class="row mb-4" >
									    <textarea id="summernote" name="con_Content" style="height:350px; width:90%; border: solid 1.3px lightgrey"></textarea>
									</div>
									<div class="card-footer float-right" style="background-color: transparent !important; border-top: white;">
										<button type="submit" class="btn btn-light btn-xs">저장</button>
									</div>
								</div>
							</div>
							</form>	
						</div>
					</div>
				</div>
			</div>
		</div>
			<!-- ============================================================== -->
			<!-- end wrapper  -->
			<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- end main wrapper  -->
	<!-- ============================================================== -->
	<!-- Optional JavaScript -->
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
	
	<!-- slimscroll js -->
	<script src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
	<!-- main js -->
	<script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>

</body>
</html>
