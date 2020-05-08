<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">


<!-- 
	작성자 : 박주완
	작성일 : 2020-03-20 
	내용    : 상품등록 
-->
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>오너 : 매거진등록</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="/brocoli/resources/ownerResources/vendor/bootstrap/css/bootstrap.min.css">
<link
	href="/brocoli/resources/ownerResources/vendor/fonts/circular-std/style.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="/brocoli/resources/ownerResources/libs/css/style.css">
<link rel="stylesheet"
	href="/brocoli/resources/ownerResources/vendor/fonts/fontawesome/css/fontawesome-all.css">

    <%@ include file="header.jsp" %>




<style type="text/css">
	.btn-secondary {
		color: #fff;
		background-color: #ff407b;
		border-color: #ff407b;
	}


    .img-Dtail-Area::webkit-scrollbar{
    	display: none;
    }
    .img-Dtail-Area{
      overflow-y: scroll;
      overflow-x: hidden;
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
			<div class="container-fluid  dashboard-content">
				<!-- ============================================================== -->
				<!-- pageheader -->
				<!-- ============================================================== -->
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div class="page-header">
							<h2 class="pageheader-title">매거진등록</h2>
							<p class="pageheader-text">Proin placerat ante duiullam
								scelerisque a velit ac porta, fusce sit amet vestibulum mi.
								Morbi lobortis pulvinar quam.</p>
							<div class="page-breadcrumb">
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="#"
											class="breadcrumb-link">메뉴</a></li>
										<li class="breadcrumb-item"><a href="#"
											class="breadcrumb-link">매거진</a></li>
										<li class="breadcrumb-item active" aria-current="page">매거진등록</li>
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
							<h5 class="card-header">상품등록</h5>
							<div class="card-body">
								<form action="magazineInsert.ow" method="post" enctype="multipart/form-data" onsubmit="return checks()">

									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">카테고리
										</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<select id="optionBox" name="optionBox"
												class="btn btn-secondary dropdown-toggle"
												style="height: 38px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
												<option value="">선택</option>
												<option value="뉴스">뉴스</option>
												<option value="룩북">룩북</option>
												<option value="신상품">신상품</option>
												<option value="세일">세일</option>
											</select>
											<input id="category" name="m_Category" type="text" readonly="readonly" style="display: none;">
											<input value="${loginUser.brand_NO }" name="m_Brand_NO" type="text" readonly="readonly" style="display: none;">
											<input value="${loginUser.mNO }" name="m_Mno" type="text" readonly="readonly" style="display: none;">
											<input value="${loginUser.mName }" name="m_ID" type="text" readonly="readonly" style="display: none;">
											<input value="${loginUser.brand }" name="bName" type="text" readonly="readonly" style="display: none;">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">제목</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input id="title" name="m_Title" type="text" required="" data-parsley-minlength="6" placeholder="제목을 입력해주세요" class="form-control">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">내용</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<textarea id="Comment" name="m_Comment" rows="10" required="" class="form-control"></textarea>
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">태그</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input type="text" required="" data-parsley-minlength="6"
												placeholder="태그입력" class="form-control">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">이미지 등록</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<div id="contentImgArea1"  style="float: left; width: 220px; height: 160px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
												<img id="mImg1" src="http://via.placeholder.com/1000x700" alt="Responsive image" style="width: 210px; height: auto; max-width: 210px; max-height: 155px; bor"> 
                                            </div>
                                            <div id="contentImgArea2"  style="float: left; width: 220px; height: 160px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
												<img id="mImg2" src="http://via.placeholder.com/1000x700" alt="Responsive image" style="width: 210px; height: auto; max-width: 210px; max-height: 155px;"> 
                                            </div>
                                            <div id="contentImgArea3"  style="float: left; width: 220px; height: 160px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
												<img id="mImg3" src="http://via.placeholder.com/1000x700" alt="Responsive image" style="width: 210px; height: auto; max-width: 210px; max-height: 155px;"> 
                                            </div>
                                            <div id="contentImgArea4"  style="float: left; width: 220px; height: 160px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
												<img id="mImg4" src="http://via.placeholder.com/1000x700" alt="Responsive image" style="width: 210px; height: auto; max-width: 210px; max-height: 155px;"> 
                                            </div>
                                            <div id="contentImgArea5"  style="float: left; width: 220px; height: 160px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
												<img id="mImg5" src="http://via.placeholder.com/1000x700" alt="Responsive image" style="width: 210px; height: auto; max-width: 210px; max-height: 155px;"> 
                                            </div>
                                            <div id="contentImgArea6"  style="float: left; width: 220px; height: 160px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
												<img id="mImg6" src="http://via.placeholder.com/1000x700" alt="Responsive image" style="width: 210px; height: auto; max-width: 210px; max-height: 155px;"> 
                                            </div>
										
										
										</div>
									</div>
									
									 <div class="mImgArea" id="magazineImgArea">
                                        	<input type="file" id="mf_Img1" name="file1" accept="resources/magazine-Img/*" onchange="loadImg(this, 1);" style="display: none;" />
                                        	<input type="file" id="mf_Img2" name="file2" accept="resources/magazine-Img/*" onchange="loadImg(this, 2);" style="display: none;" />
                                        	<input type="file" id="mf_Img3" name="file3" accept="resources/magazine-Img/*" onchange="loadImg(this, 3);" style="display: none;" />
                                        	<input type="file" id="mf_Img4" name="file4" accept="resources/magazine-Img/*" onchange="loadImg(this, 4);" style="display: none;" />
                                        	<input type="file" id="mf_Img5" name="file5" accept="resources/magazine-Img/*" onchange="loadImg(this, 5);" style="display: none;" />
                                        	<input type="file" id="mf_Img6" name="file6" accept="resources/magazine-Img/*" onchange="loadImg(this, 6);" style="display: none;" />
                                    </div>
									
									




									<div class="form-group row text-right">
										<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
											<button type="submit" class="btn btn-space btn-primary">등록</button>
											<button class="btn btn-space btn-secondary">취소</button>
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
	
	<script>
		$('#optionBox').change(function() {
	        var result = $("#optionBox option:selected").val();
	        console.log("선택한 카테고리값 : " + result);
	        $('#category').val(result);
	    });
		
		jQuery('#optionBox').change(function() {
	        var state = jQuery('#optionBox option:selected').val();
	        jQuery('#category').val(state);
	    });
	    
	</script>
	
<!--    작성자 : 박주완
        작성일 : 2020-04-28
        내용: 이미지 클릭시 이미지 파일 업로드 스크립트 -->
	<script>
	//사진 게시판 미리보기 기능 지원 스크립트
	$(function(){
	   $('#mImgArea').hide();
	   
	      
	   $('#contentImgArea1').click(() => {
	      $('#mf_Img1').click();
	   });
	      
	   $('#contentImgArea2').click(() => {
	      $('#mf_Img2').click();
	   });
	   
	   $('#contentImgArea3').click(() => {
	      $('#mf_Img3').click();
	   });

	   $('#contentImgArea4').click(() => {
	      $('#mf_Img4').click(); 
	   });
	    
	   $('#contentImgArea5').click(() => {
	      $('#mf_Img5').click();
	   });
	    
	   $('#contentImgArea6').click(() => {
	      $('#mf_Img6').click();
	   });
	   
	});

	function loadImg(value, num){
	   
	   if(value.files && value.files[0])  {
	      
	      var reader = new FileReader();
	      
	      reader.onload = function(e){
	         
	         switch(num) {
	         case 1 : $('#mImg1').attr('src', e.target.result);
	            break;
	         case 2 : $('#mImg2').attr('src', e.target.result);
	            break;
	         case 3 : $('#mImg3').attr('src', e.target.result);
	            break;
	         case 4 : $('#mImg4').attr('src', e.target.result);
	            break;
	         case 5 : $('#mImg5').attr('src', e.target.result);
	            break;
	         case 6 : $('#mImg6').attr('src', e.target.result);
	            break;
	         }
	      }
	      reader.readAsDataURL(value.files[0]);
	   }
	}
	</script>


<!--    작성자 : 박주완
        작성일 : 2020-04-28
        내용: 상품등록 유효성 검사 스크립트 -->   
    <script>
    function checks(){
	    //카테고리 공백 확인 
	  	if($("#optionBox").val() == ""){
		  alert("카테고리를 선택해 주세요."); 
		  $("#optionBox").focus(); 
		  return false; 
		}
	    
	  	if($("#title").val() == ""){
			  alert("제목을 입력해 주세요."); 
			  $("#title").focus(); 
			  return false; 
		}
	  	
	  	if($("#Comment").val() == ""){
			  alert("메거진 내용을 입력해 주세요."); 
			  $("#Comment").focus(); 
			  return false; 
		}
	  	
	  //메거진 대표 이미지 공백 확인 
	  	if(document.getElementById('mImg1').src == "http://via.placeholder.com/1000x700"){
		  alert("메거진 대표 이미지를 첨부해 주세요."); 
		  $("#mImg1").focus(); 
		  return false; 
		}
    }
	</script>
	<script
		src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
	<script
		src="/brocoli/resources/ownerResources/vendor/parsley/parsley.js"></script>
	<script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
	<script>
    $('#form').parsley();
    </script>


</body>

</html>