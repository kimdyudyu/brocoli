<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/fixedHeader.bootstrap4.css">
    
    <%@ include file="header.jsp" %>
    
    <style type="text/css">
    	input{
    		text-align: right;
    		width: auto;
    	}
    </style>
    
    <title>오너 : 광고신청</title>
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
                            <h2 class="pageheader-title">광고신청</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">광고</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">광고신청</a></li>
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
                    <!-- data table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">광고입찰</h5>
                                <p> - 원하시는 배너 번호를 반드시 확인하고 입찰해주세요.<br>
                                - Print, Excel, CSV, PDF 버튼 클릭시 저장됩니다.</p>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                		<table id="example" class="table table-striped table-bordered second" style="width:100%">
	                                        <thead>
	                                            <tr>
	                                                <th>배너번호</th>
	                                                <th>사이즈</th>
	                                                <th>전월 낙찰가</th>
	                                                <th>입찰금액</th>
	                                                <th>광고멘트</th>
	                                                <th style="width: 121px;">배너이미지</th>
	                                                <th>입찰신청</th>
	                                                <th>상태</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
		                                        <tr>
	                                                <td>NO.
	                                                	<input id="ac_bannerNo1" type="text" style="border: none; background: none; width: 10px;" value="1" readonly="readonly"/>
	                                                	<input id="ac_ID1" type="text" value="${loginUser.mId}" style="display: none;" readonly="readonly">
	                            						<input id="ac_Brand1" type="text" value="${loginUser.brand }" style="display: none;" readonly="readonly">
	                            						<input id="ac_Brand_NO1" type="text" value="${loginUser.brand_NO }" style="display: none;" readonly="readonly">
	                                                </td>
	                                                <td>550*420</td>
	                                                <td>
	                                                	<span id="banner1_lastPrice"></span> 원
	                                                </td>
	                                                <td>
	                                                	<input id="banner1_Price" type="text" onkeyup="resultPrice()" maxlength="11">
	                                                	<input id="banner1_updatePrice" type="text" onkeyup="resultPrice()" maxlength="11" style="display: none;">
	                                                </td>
	                                                <td>
	                                                	<input id="banner1_comment" type="text"/>
	                                                	<input id="banner1_updateComment" type="text" style="display: none;"/>
	                                                </td>
	                                                <td>
		                                                <div id="contentImgArea1"  style="float: left; width: 171px; height: auto; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
		                                                	<img id="contentImg1" src="http://via.placeholder.com/550x420"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
			                                            </div>
			                                            <input id="ac_No1" type="text" style="display: none;" readonly="readonly">
	                                                </td>
	                                                <td>
	                                                	<div class="btn-group ml-auto">
				                                            <button id="banner1_insertBtn" class="btn btn-sm btn-outline-light" onclick="insertBanner('1');">입찰</button>
				                                            <button id="banner1_showUpdateBtn" class="btn btn-sm btn-outline-light" style="display: none;" onclick="showUpdate('1');">수정</button>
				                                            <button id="banner1_deleteBtn" class="btn btn-sm btn-outline-light" onclick="deleteBanner('1');" style="margin-left: 13px; display: none;">입찰취소</button>
				                                            <button id="banner1_updateBtn" class="btn btn-sm btn-outline-light" style="display: none;" onclick="updateBanner('1');">적용</button>
				                                            <button id="banner1_updateCancelBtn" class="btn btn-sm btn-outline-light" style="display: none; margin-left: 13px;" onclick="updateCancelBanner('1');" >수정취소</button>
				                                        </div>
	                                                </td>
	                                                <td>
	                                                	<div id="banner1_Ok" style="display: none;"><span class="badge-dot badge-success mr-1"></span>입찰완료</div>
	                                                	<div id="banner1_No"><span class="badge-dot badge-brand"></span>미입찰</div>
	                                                </td>
	                                        
	                                            </tr>
	                                            <tr>
	                                                <td>NO.
	                                                	<input id="ac_bannerNo2" type="text" style="border: none; background: none; width: 10px;" value="2" readonly="readonly"/>
	                                                	<input id="ac_ID2" type="text" value="${loginUser.mId}" style="display: none;" readonly="readonly">
	                            						<input id="ac_Brand2" type="text" value="${loginUser.brand }" style="display: none;" readonly="readonly">
	                            						<input id="ac_Brand_NO2" type="text" value="${loginUser.brand_NO }" style="display: none;" readonly="readonly">
	                                                </td>
	                                                <td>550*420</td>
	                                                <td>
	                                                	<span id="banner2_lastPrice"></span> 원
	                                                </td>
	                                                <td>
	                                                	<input id="banner2_Price" type="text" onkeyup="resultPrice()" maxlength="11">
	                                                	<input id="banner2_updatePrice" type="text" onkeyup="resultPrice()" maxlength="11" style="display: none;">
	                                                </td>
	                                                <td>
	                                                	<input id="banner2_comment" type="text"/>
	                                                	<input id="banner2_updateComment" type="text" style="display: none;"/>
	                                                </td>
	                                                <td>
	                                                	<div id="contentImgArea2"  style="float: left; width: 171px; height: auto; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                                		<img id="contentImg2" src="http://via.placeholder.com/550x420"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
	                                                	</div>
	                                                	<input id="ac_No2" type="text" style="display: none;" readonly="readonly">
	                                                </td>
	                                                <td>
	                                                	<div class="btn-group ml-auto">
				                                            <button id="banner2_insertBtn" class="btn btn-sm btn-outline-light" onclick="insertBanner('2');">입찰</button>
				                                            <button id="banner2_showUpdateBtn" class="btn btn-sm btn-outline-light" style="display: none;" onclick="showUpdate('2');">수정</button>
				                                            <button id="banner2_deleteBtn" class="btn btn-sm btn-outline-light" onclick="deleteBanner('2');" style="margin-left: 13px; display: none;">입찰취소</button>
				                                            <button id="banner2_updateBtn" class="btn btn-sm btn-outline-light" style="display: none;" onclick="updateBanner('2');">적용</button>
				                                            <button id="banner2_updateCancelBtn" class="btn btn-sm btn-outline-light" style="display: none; margin-left: 13px;" onclick="updateCancelBanner('2');" >수정취소</button>
				                                        </div>
	                                                </td>
	                                                <td>
	                                                	<div id="banner2_Ok" style="display: none;"><span class="badge-dot badge-success mr-1"></span>입찰완료</div>
	                                                	<div id="banner2_No"><span class="badge-dot badge-brand"></span>미입찰</div>
	                                                </td>
	                                            </tr>
	                                            <tr>
	                                                <td>NO.
	                                                	<input id="ac_bannerNo3" type="text" style="border: none; background: none; width: 10px;" value="3" readonly="readonly"/>
	                                                	<input id="ac_ID3" type="text" value="${loginUser.mId}" style="display: none;" readonly="readonly">
	                            						<input id="ac_Brand3" type="text" value="${loginUser.brand }" style="display: none;" readonly="readonly">
	                            						<input id="ac_Brand_NO3" type="text" value="${loginUser.brand_NO }" style="display: none;" readonly="readonly">
	                                                </td>
	                                                <td>330*250</td>
	                                                <td>
	                                                	<span id="banner3_lastPrice"></span> 원
	                                                </td>
	                                                <td>
	                                                	<input id="banner3_Price" type="text" onkeyup="resultPrice()" maxlength="11">
	                                                	<input id="banner3_updatePrice" type="text" onkeyup="resultPrice()" maxlength="11" style="display: none;">
	                                                </td>
	                                                <td>
	                                                	<input id="banner3_comment" type="text"/>
	                                                	<input id="banner3_updateComment" type="text" style="display: none;"/>
	                                                </td>
	                                                <td>
	                                                	<div id="contentImgArea3"  style="float: left; width: 171px; height: auto; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                                		<img id="contentImg3" src="http://via.placeholder.com/330x250"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
	                                                	</div>
	                                                	<input id="ac_No3" type="text" style="display: none;" readonly="readonly">
	                                                </td>
	                                                <td>
	                                                	<div class="btn-group ml-auto">
				                                            <button id="banner3_insertBtn" class="btn btn-sm btn-outline-light" onclick="insertBanner('3');">입찰</button>
				                                            <button id="banner3_showUpdateBtn" class="btn btn-sm btn-outline-light" style="display: none;" onclick="showUpdate('3');">수정</button>
				                                            <button id="banner3_deleteBtn" class="btn btn-sm btn-outline-light" onclick="deleteBanner('3');" style="margin-left: 13px; display: none;">입찰취소</button>
				                                            <button id="banner3_updateBtn" class="btn btn-sm btn-outline-light" style="display: none;" onclick="updateBanner('3');">적용</button>
				                                            <button id="banner3_updateCancelBtn" class="btn btn-sm btn-outline-light" style="display: none; margin-left: 13px;" onclick="updateCancelBanner('3');" >수정취소</button>
				                                        </div>
	                                                </td>
	                                                <td>
	                                                	<div id="banner3_Ok" style="display: none;"><span class="badge-dot badge-success mr-1"></span>입찰완료</div>
	                                                	<div id="banner3_No"><span class="badge-dot badge-brand"></span>미입찰</div>
	                                                </td>
	                                            </tr>
	                                            <tr>
	                                                <td>NO.
	                                                	<input id="ac_bannerNo4" type="text" style="border: none; background: none; width: 10px;" value="4" readonly="readonly"/>
	                                                	<input id="ac_ID4" type="text" value="${loginUser.mId}" style="display: none;" readonly="readonly">
	                            						<input id="ac_Brand4" type="text" value="${loginUser.brand }" style="display: none;" readonly="readonly">
	                            						<input id="ac_Brand_NO4" type="text" value="${loginUser.brand_NO }" style="display: none;" readonly="readonly">
	                                                </td>
	                                                <td>330*250</td>
	                                                <td>
	                                                	<span id="banner4_lastPrice"></span> 원
	                                                </td>
	                                                <td>
	                                                	<input id="banner4_Price" type="text" onkeyup="resultPrice()" maxlength="11">
	                                                	<input id="banner4_updatePrice" type="text" onkeyup="resultPrice()" maxlength="11" style="display: none;">
	                                                </td>
	                                                <td>
	                                                	<input id="banner4_comment" type="text"/>
	                                                	<input id="banner4_updateComment" type="text" style="display: none;"/>
	                                                </td>
	                                                <td>
	                                                	<div id="contentImgArea4"  style="float: left; width: 171px; height: auto; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                                		<img id="contentImg4" src="http://via.placeholder.com/330x250"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
	                                                	</div>
	                                                	<input id="ac_No4" type="text" style="display: none;" readonly="readonly">
	                                                </td>
	                                                <td>
	                                                	<div class="btn-group ml-auto">
				                                            <button id="banner4_insertBtn" class="btn btn-sm btn-outline-light" onclick="insertBanner('4');">입찰</button>
				                                            <button id="banner4_showUpdateBtn" class="btn btn-sm btn-outline-light" style="display: none;" onclick="showUpdate('4');">수정</button>
				                                            <button id="banner4_deleteBtn" class="btn btn-sm btn-outline-light" onclick="deleteBanner('4');" style="margin-left: 13px; display: none;">입찰취소</button>
				                                            <button id="banner4_updateBtn" class="btn btn-sm btn-outline-light" style="display: none;" onclick="updateBanner('4');">적용</button>
				                                            <button id="banner4_updateCancelBtn" class="btn btn-sm btn-outline-light" style="display: none; margin-left: 13px;" onclick="updateCancelBanner('4');" >수정취소</button>
				                                        </div>
	                                                </td>
	                                                <td>
	                                                	<div id="banner4_Ok" style="display: none;"><span class="badge-dot badge-success mr-1"></span>입찰완료</div>
	                                                	<div id="banner4_No"><span class="badge-dot badge-brand"></span>미입찰</div>
	                                                </td>
	                                            </tr>
	                                            <tr>
	                                                <td>NO.
	                                                	<input id="ac_bannerNo5" type="text" style="border: none; background: none; width: 10px;" value="5" readonly="readonly"/>
	                                                	<input id="ac_ID5" type="text" value="${loginUser.mId}" style="display: none;" readonly="readonly">
	                            						<input id="ac_Brand5" type="text" value="${loginUser.brand }" style="display: none;" readonly="readonly">
	                            						<input id="ac_Brand_NO5" type="text" value="${loginUser.brand_NO }" style="display: none;" readonly="readonly">
	                                                </td>
	                                                <td>330*250</td>
	                                                <td>
	                                                	<span id="banner5_lastPrice"></span> 원
	                                                </td>
	                                                <td>
	                                                	<input id="banner5_Price" type="text" onkeyup="resultPrice()" maxlength="11">
	                                                	<input id="banner5_updatePrice" type="text" onkeyup="resultPrice()" maxlength="11" style="display: none;">
	                                                </td>
	                                                <td>
	                                                	<input id="banner5_comment" type="text"/>
	                                                	<input id="banner5_updateComment" type="text" style="display: none;"/>
	                                                </td>
	                                                <td>
		                                                <div id="contentImgArea5"  style="float: left; width: 171px; height: auto; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
		                                                	<img id="contentImg5" src="http://via.placeholder.com/330x250"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
		                                                </div>
		                                                <input id="ac_No5" type="text" style="display: none;" readonly="readonly">
	                                                </td>
	                                                <td>
	                                                	<div class="btn-group ml-auto">
				                                            <button id="banner5_insertBtn" class="btn btn-sm btn-outline-light" onclick="insertBanner('5');">입찰</button>
				                                            <button id="banner5_showUpdateBtn" class="btn btn-sm btn-outline-light" style="display: none;" onclick="showUpdate('5');">수정</button>
				                                            <button id="banner5_deleteBtn" class="btn btn-sm btn-outline-light" onclick="deleteBanner('5');" style="margin-left: 13px; display: none;">입찰취소</button>
				                                            <button id="banner5_updateBtn" class="btn btn-sm btn-outline-light" style="display: none;" onclick="updateBanner('5');">적용</button>
				                                            <button id="banner5_updateCancelBtn" class="btn btn-sm btn-outline-light" style="display: none; margin-left: 13px;" onclick="updateCancelBanner('5');" >수정취소</button>
				                                        </div>
	                                                </td>
	                                                <td>
	                                                	<div id="banner5_Ok" style="display: none;"><span class="badge-dot badge-success mr-1"></span>입찰완료</div>
	                                                	<div id="banner5_No"><span class="badge-dot badge-brand"></span>미입찰</div>
	                                                </td>
	                                            </tr>
	                                        </tbody>
	                                        <tfoot>
	                                            <tr>
	                                                <th>배너번호</th>
	                                                <th>사이즈</th>
	                                                <th>전월 낙찰가</th>
	                                                <th>입찰금액</th>
	                                                <th>광고멘트</th>
	                                                <th style="width: 121px;">배너이미지</th>
	                                                <th>입찰신청</th>
	                                                <th>상태</th>
	                                            </tr>
	                                        </tfoot>
	                                    </table>
                                    <div class="productImgArea" id="productImgArea" style="display: none;" >
                                    	<input type="file" id="banner_Img1" name="file1" accept="resources/product-Img/*" onchange="loadImg(this, 1);" />
                                    	<input type="file" id="banner_Img2" name="file2" accept="resources/product-Img/*" onchange="loadImg(this, 2);" />
                                    	<input type="file" id="banner_Img3" name="file3" accept="resources/product-Img/*" onchange="loadImg(this, 3);" />
                                    	<input type="file" id="banner_Img4" name="file4" accept="resources/product-Img/*" onchange="loadImg(this, 4);" />
                                    	<input type="file" id="banner_Img5" name="file5" accept="resources/product-Img/*" onchange="loadImg(this, 5);" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end data table  -->
                    <!-- ============================================================== -->
                </div>
 
 
            </div>

        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
	
<!--    작성자 : 박주완
        작성일 : 2020-04-27
        내용: 데이터 update 가능하도록 속성변경 -->	    
	<script>
		function showUpdate(n){
			$('#banner'+n+'_Price').removeAttr("readonly");		//수정 가능하도록 readonly 속성 제거
			$('#banner'+n+'_Price').css("border",'none');		//수정 가능하도록 input css복원
			$('#banner'+n+'_Price').css("background",'block');	//수정 가능하도록 input css복원
			$('#banner'+n+'_comment').removeAttr("readonly");	//수정 가능하도록 readonly 속성 제거
			$('#banner'+n+'_comment').css("border",'block');	//수정 가능하도록 input css복원
			$('#banner'+n+'_comment').css("background",'block');//수정 가능하도록 input css복원
			$('#contenImgArea'+n+'').removeAttr("disabled");  	//수정 가능하도록 disabled 속성제거
			$('#banner_Img'+n+'').removeAttr("disabled");		//수정 가능하도록 disabled 속성제거
			
			//버튼들 css 변경
			$('#banner'+n+'_insertBtn').css("display",'none');	
			$('#banner'+n+'_showUpdateBtn').css("display",'none');
			$('#banner'+n+'_updateBtn').css("display",'block');
			$('#banner'+n+'_deleteBtn').css("display",'none');
			$('#banner'+n+'_updateCancelBtn').css("display",'block');
			
			//인풋창 css 변경
			$('#banner'+n+'_Price').css("display",'none');	
			$('#banner'+n+'_updatePrice').css("display",'block');	
			$('#banner'+n+'_comment').css("display",'none');	
			$('#banner'+n+'_updateComment').css("display",'block');
			
		}
		
		/* 업데이트 취소 버큰 클릭시 css 수정 */
		function updateCancelBanner(n){
			
			$('#banner'+n+'_Price').attr("readonly",true);		//결과값 담고 수정못하게 readonly적용
			$('#banner'+n+'_Price').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
			$('#banner'+n+'_Price').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
			$('#banner'+n+'_comment').attr("readonly",true);	//결과값 담고 수정못하게 readonly적용
			$('#banner'+n+'_comment').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
			$('#banner'+n+'_comment').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
			$('#contenImgArea'+n+'').attr("disabled",true);  	//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
			$('#banner_Img'+n+'').attr("disabled",true);		//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
			
			//버튼들 css 변경
			$('#banner'+n+'_insertBtn').css("display",'none');	
			$('#banner'+n+'_showUpdateBtn').css("display",'block');
			$('#banner'+n+'_updateBtn').css("display",'none');
			$('#banner'+n+'_deleteBtn').css("display",'block');
			$('#banner'+n+'_updateCancelBtn').css("display",'none');
			
			//인풋창 css 변경
			$('#banner'+n+'_Price').css("display",'block');	
			$('#banner'+n+'_updatePrice').css("display",'none');	
			$('#banner'+n+'_comment').css("display",'block');	
			$('#banner'+n+'_updateComment').css("display",'none');
		}
		
		/* 선택한 입찰내역 삭제 */
		function deleteBanner(n){
			var ac_No =  $('#ac_No'+n+'').val();
			
			$.ajax({
				url : "auctionDelete.ow",
				type: "post",
				dataType: "json",
				data: {'ac_No':ac_No},
				success : function(data){
					console.log("옥션 delet 성공");
					alert("정상적으로 입찰취소 되었습니다.");
					
					$('#banner'+n+'_Price').val("");
					$('#banner'+n+'_comment').val("");
					$('#banner'+n+'_Price').css("display",'block');		
					$('#banner'+n+'_comment').css("display",'block');		
					$('#ac_No'+n+'').val("");
					$('#contentImg'+n+'').attr("src","http://via.placeholder.com/550x420");
					
					$('#banner'+n+'_Price').removeAttr("readonly");		
					$('#banner'+n+'_Price').css("border",'block');		
					$('#banner'+n+'_Price').css("background",'block');	
					$('#banner'+n+'_Price').css("border-width",'2px');     
					$('#banner'+n+'_Price').css("border-style",'inset');   
					$('#banner'+n+'_Price').css("border-color",'initial'); 
					$('#banner'+n+'_Price').css("border-image",'initial'); 
					$('#banner'+n+'_Price').css("background-color",'#FFFFFF');	
					$('#banner'+n+'_comment').removeAttr("readonly");	
					$('#banner'+n+'_comment').css("border",'block');
					$('#banner'+n+'_comment').css("background",'block')
					$('#banner'+n+'_comment').css("border-width",'2px');
					$('#banner'+n+'_comment').css("border-style",'inset');
					$('#banner'+n+'_comment').css("border-color",'initial');
					$('#banner'+n+'_comment').css("border-image",'initial');
					$('#banner'+n+'_comment').css("background-color",'#FFFFFF');	
					$('#contenImgArea'+n+'').removeAttr("disabled");  	
					$('#banner_Img'+n+'').removeAttr("disabled");		
					
					//버튼들 css 변경
					$('#banner'+n+'_insertBtn').css("display",'block');	
					$('#banner'+n+'_showUpdateBtn').css("display",'none');
					$('#banner'+n+'_updateBtn').css("display",'none');
					$('#banner'+n+'_deleteBtn').css("display",'none');
					
					
					$('#banner'+n+'_Ok').css("display", "none");  
					$('#banner'+n+'_No').css("display", "block");  
					
					
					
				},error : function(jqxhr, textStatus, errorThrown) {
					console.log("옥션 insert ajax 처리실패");

					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			});
		}
	
	</script>
	
    <!--    작성자 : 박주완
        작성일 : 2020-04-27
        내용: 데이터 insert (입찰) -->	
 	<script>
		function insertBanner(n){
			
			var bannerNo = n;
			var id = '${loginUser.mId}';
			var Price = $('#banner'+n+'_Price').val().replace(",","");
			console.log("price 콤마제거 : "+ Price);
			var brandName = "${loginUser.brand}";
			var comment = $('#banner'+n+'_comment').val();
			var imgfile =  $('#banner_Img'+n+'').prop('files')[0];
			var brandNO = '${loginUser.brand_NO}';
			
			var auctionData = new FormData();
			auctionData.append('ac_Banner_NO',bannerNo);
			auctionData.append('ac_ID',id);
			auctionData.append('ac_Price',Price);
			auctionData.append('ac_Brand',brandName);
			auctionData.append('ac_Comment',comment);
			auctionData.append('ac_Brand_NO',brandNO);
			auctionData.append('file', imgfile);
			
			$.ajax({
				url : "auctionBannerInsert.ow",
				type: "POST",
				dataType:"json",
				data : auctionData,
	            processData: false, // DOMDocument 또는 처리되지 않은 데이터 파일을 보내려면 false
	            contentType: false, // 서버에 데이터를 보낼 때 사용되는 내용 유형
				success : function(data){
					console.log("옥션 insert 성공");
					alert("정상적으로 입찰신청 되었습니다.");
					
 					var price = data.ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
					$('#banner'+n+'_Price').val(price);
					$('#banner'+n+'_comment').val(data.ac_Comment);
					$('#ac_No'+n+'').val(data.ac_No);
					
					$('#banner'+n+'_Price').attr("readonly",true);		//결과값 담고 수정못하게 readonly적용
					$('#banner'+n+'_Price').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
					$('#banner'+n+'_Price').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
					$('#banner'+n+'_comment').attr("readonly",true);	//결과값 담고 수정못하게 readonly적용
					$('#banner'+n+'_comment').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
					$('#banner'+n+'_comment').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
					$('#contenImgArea'+n+'').attr("disabled",true);  	//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
					$('#banner_Img'+n+'').attr("disabled",true);		//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
					
					if(data.ac_Status != null){
						//버튼들 css 변경
						$('#banner'+n+'_insertBtn').css("display",'none');	
						$('#banner'+n+'_showUpdateBtn').css("display",'block');
						$('#banner'+n+'_updateBtn').css("display",'none');
						$('#banner'+n+'_deleteBtn').css("display",'block');
						
						
						$('#banner'+n+'_Ok').css("display", "block");  
						$('#banner'+n+'_No').css("display", "none");  
					}
					if(data.ac_Img_Rename != null){
						$('#contentImg'+n+'').attr("src","/brocoli/resources/Auction-Img/"+data.ac_Img_Rename+"");
					}else{
						$('#contentImg'+n+'').attr("src","http://via.placeholder.com/550x420");
					} 
					
				},error : function(jqxhr, textStatus, errorThrown) {
					console.log("옥션 insert ajax 처리실패");

					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			})
		};
		
		function updateBanner(n){
			
			var ac_no = $('#ac_No'+n+'').val();
			var bannerNo = n;
			var id = '${loginUser.mId}';
			var Price = $('#banner'+n+'_updatePrice').val().replace(",","");
			console.log("price 콤마제거 : "+ Price);
			var brandName = "${loginUser.brand}";
			var comment = $('#banner'+n+'_updateComment').val();
			var img = $('#contentImg'+n+'').attr("src");
			var imgfile =  $('#banner_Img'+n+'').prop('files')[0];
			var brandNO = '${loginUser.brand_NO}';
			
			var auctionData = new FormData();
			auctionData.append('ac_No',ac_no);
			auctionData.append('ac_Banner_NO',bannerNo);
			auctionData.append('ac_ID',id);
			auctionData.append('ac_Price',Price);
			auctionData.append('ac_Brand',brandName);
			auctionData.append('ac_Comment',comment);
			auctionData.append('ac_Img',img);
			auctionData.append('ac_Brand_NO',brandNO);
			auctionData.append('file', imgfile);
			
			$.ajax({
				url : "auctionBannerUpdate.ow",
				type: "POST",
				dataType:"json",
				data : auctionData,
	            processData: false, // DOMDocument 또는 처리되지 않은 데이터 파일을 보내려면 false
	            contentType: false, // 서버에 데이터를 보낼 때 사용되는 내용 유형
				success : function(data){
					console.log("옥션 UPADTE 성공");
					alert("정상적으로 수정 되었습니다.");
					
 					var price = data.ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
					$('#banner'+n+'_Price').val(price);
					$('#banner'+n+'_comment').val(data.ac_Comment);
					$('#banner'+n+'_Price').attr("readonly",true);		//결과값 담고 수정못하게 readonly적용
					$('#banner'+n+'_Price').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
					$('#banner'+n+'_Price').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
					$('#banner'+n+'_comment').attr("readonly",true);	//결과값 담고 수정못하게 readonly적용
					$('#banner'+n+'_comment').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
					$('#banner'+n+'_comment').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
					$('#contenImgArea'+n+'').attr("disabled",true);  	//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
					$('#banner_Img'+n+'').attr("disabled",true);		//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
					
					if(data.ac_Status != null){
						$('#banner'+n+'_Ok').css("display", "block");  
						$('#banner'+n+'_No').css("display", "none");  
						//버튼들 css 변경
						$('#banner'+n+'_insertBtn').css("display",'none');	
						$('#banner'+n+'_showUpdateBtn').css("display",'block');
						$('#banner'+n+'_updateBtn').css("display",'none');
						$('#banner'+n+'_deleteBtn').css("display",'block');
						$('#banner'+n+'_updateCancelBtn').css("display",'none');
						//인풋창 css 변경
						$('#banner'+n+'_Price').css("display",'block');	
						$('#banner'+n+'_updatePrice').css("display",'none');	
						$('#banner'+n+'_comment').css("display",'block');	
						$('#banner'+n+'_updateComment').css("display",'none');
					}
					if(data.ac_Img_Rename != null){
						$('#contentImg'+n+'').attr("src","/brocoli/resources/Auction-Img/"+data.ac_Img_Rename+"");
					}else{
						$('#contentImg'+n+'').attr("src","http://via.placeholder.com/550x420");
					} 
					
				},error : function(jqxhr, textStatus, errorThrown) {
					console.log("옥션 insert ajax 처리실패");

					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			})
		};
	</script> 
	<!--    작성자 : 박주완
        작성일 : 2020-04-21
        내용: 이미지 클릭시 이미지 파일 업로드 스크립트 -->
	<script>
	//사진 게시판 미리보기 기능 지원 스크립트
	$(function imgUpload(){
	      
	   $('#contentImgArea1').click(() => {
	      $('#banner_Img1').click();
	   });
	      
	   $('#contentImgArea2').click(() => {
	      $('#banner_Img2').click();
	   });
	   
	   $('#contentImgArea3').click(() => {
	      $('#banner_Img3').click();
	   });

	   $('#contentImgArea4').click(() => {
	      $('#banner_Img4').click(); 
	   });
	    
	   $('#contentImgArea5').click(() => {
	      $('#banner_Img5').click();
	   });
	   
	});
	
	function loadImg(value, num){
	   
	   if(value.files && value.files[0])  {
	      
	      var reader = new FileReader();
	      
	      reader.onload = function(e){
	         
	         switch(num) {
	         case 1 : $('#contentImg1').attr('src', e.target.result);
	            break;
	         case 2 : $('#contentImg2').attr('src', e.target.result);
	            break;
	         case 3 : $('#contentImg3').attr('src', e.target.result);
	            break;
	         case 4 : $('#contentImg4').attr('src', e.target.result);
	            break;
	         case 5 : $('#contentImg5').attr('src', e.target.result);
	            break;
	         }
	      }
	      reader.readAsDataURL(value.files[0]);
	   }
	}
	</script>
	
<!--    작성자 : 박주완
        작성일 : 2020-04-25
        내용: 테이블 정보 select -->	
	<script>
		$( document ).ready(function(){
			var bNO = "${loginUser.brand_NO}";			
			$.ajax({
				url : "auctionListSelect.ow",
				data : {bNO:bNO},
				dataType:"json",
				success : function(data){
					if( data.beforlist != null){
						for(var i=0; i<data.beforlist.length; i++){
							if(data.beforlist[i].ac_Banner_NO == 1){
								var p1 = data.beforlist[i].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner1_lastPrice').text(p1);
							}
							if(data.beforlist[i].ac_Banner_NO == 2){
								var p2 = data.beforlist[i].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner2_lastPrice').text(p2);
							}
							if(data.beforlist[i].ac_Banner_NO == 3){
								var p3 = data.beforlist[i].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner3_lastPrice').text(p3);
							}
							if(data.beforlist[i].ac_Banner_NO == 4){
								var p4 = data.beforlist[i].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner4_lastPrice').text(p4);
							}
							if(data.beforlist[i].ac_Banner_NO == 5){
								var p5 = data.beforlist[i].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner5_lastPrice').text(p5);
							}
						}
					}
					
					if(data.list != null){
						for(var j=0; j<data.list.length; j++){
							if(data.list[j].ac_Banner_NO == 1){
								var price1 = data.list[j].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner1_Price').val(price1);
								$('#banner1_comment').val(data.list[j].ac_Comment);
								$('#ac_No1').val(data.list[j].ac_No);
								$('#banner1_Price').attr("readonly",true);		//결과값 담고 수정못하게 readonly적용
								$('#banner1_Price').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
								$('#banner1_Price').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
								$('#banner1_comment').attr("readonly",true);	//결과값 담고 수정못하게 readonly적용
								$('#banner1_comment').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
								$('#banner1_comment').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
								$('#contentImgArea1').attr("disabled",true);  	//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
								$('#banner_Img1').attr("disabled",true);		//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
								if(data.list[j].ac_Status != null){
									$('#banner1_Ok').css("display", "block");  
									$('#banner1_No').css("display", "none");  
									//버튼들 css 변경
									$('#banner1_insertBtn').css("display",'none');	
									$('#banner1_showUpdateBtn').css("display",'block');
									$('#banner1_updateBtn').css("display",'none');
									$('#banner1_deleteBtn').css("display",'block');
								}
								if(data.list[j].ac_Img_Rename != null){
									$('#contentImg1').attr("src","/brocoli/resources/Auction-Img/"+data.list[j].ac_Img_Rename+"");
								}else{
									$('#contentImg1').attr("src","http://via.placeholder.com/550x420");
								}
							}
							if(data.list[j].ac_Banner_NO == 2){
								var price2 = data.list[j].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner2_Price').val(price2);
								$('#banner2_comment').val(data.list[j].ac_Comment);
								$('#ac_No2').val(data.list[j].ac_No);
								$('#banner2_Price').attr("readonly",true);		//결과값 담고 수정못하게 readonly적용
								$('#banner2_Price').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
								$('#banner2_Price').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
								$('#banner2_comment').attr("readonly",true);	//결과값 담고 수정못하게 readonly적용
								$('#banner2_comment').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
								$('#banner2_comment').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
								$('#contentImgArea2').attr("disabled",true);  	//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
								$('#banner_Img2').attr("disabled",true);		//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
								if(data.list[j].ac_Status != null){
									$('#banner2_Ok').css("display", "block");  
									$('#banner2_No').css("display", "none");  
									//버튼들 css 변경
									$('#banner2_insertBtn').css("display",'none');	
									$('#banner2_showUpdateBtn').css("display",'block');
									$('#banner2_updateBtn').css("display",'none');
									$('#banner2_deleteBtn').css("display",'block');
								}
								if(data.list[j].ac_Img_Rename != null){
									$('#contentImg2').attr("src","/brocoli/resources/Auction-Img/"+data.list[j].ac_Img_Rename+"");
								}else{
									$('#contentImg2').attr("src","http://via.placeholder.com/550x420");
								}
							}
							if(data.list[j].ac_Banner_NO == 3){
								var price3 = data.list[j].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner3_Price').val(price3);
								$('#banner3_comment').val(data.list[j].ac_Comment);
								$('#ac_No3').val(data.list[j].ac_No);
								$('#banner3_Price').attr("readonly",true);		//결과값 담고 수정못하게 readonly적용
								$('#banner3_Price').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
								$('#banner3_Price').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
								$('#banner3_comment').attr("readonly",true);	//결과값 담고 수정못하게 readonly적용
								$('#banner3_comment').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
								$('#banner3_comment').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
								$('#contentImgArea3').attr("disabled",true);  	//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
								$('#banner_Img3').attr("disabled",true);		//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
								if(data.list[j].ac_Status != null){
									$('#banner3_Ok').css("display", "block");  
									$('#banner3_No').css("display", "none");  
									//버튼들 css 변경
									$('#banner3_insertBtn').css("display",'none');	
									$('#banner3_showUpdateBtn').css("display",'block');
									$('#banner3_updateBtn').css("display",'none');
									$('#banner3_deleteBtn').css("display",'block');
								}
								if(data.list[j].ac_Img_Rename != null){
									$('#contentImg3').attr("src","/brocoli/resources/Auction-Img/"+data.list[j].ac_Img_Rename+"");
								}else{
									$('#contentImg3').attr("src","http://via.placeholder.com/550x420");
								}
							}
							if(data.list[j].ac_Banner_NO == 4){
								var price4 = data.list[j].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner4_Price').val(price4);
								$('#banner4_comment').val(data.list[j].ac_Comment);
								$('#ac_No4').val(data.list[j].ac_No);
								$('#banner4_Price').attr("readonly",true);		//결과값 담고 수정못하게 readonly적용
								$('#banner4_Price').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
								$('#banner4_Price').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
								$('#banner4_comment').attr("readonly",true);	//결과값 담고 수정못하게 readonly적용
								$('#banner4_comment').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
								$('#banner4_comment').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
								$('#contentImgArea4').attr("disabled",true);  	//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
								$('#banner_Img4').attr("disabled",true);		//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
								if(data.list[j].ac_Status != null){
									$('#banner4_Ok').css("display", "block");  
									$('#banner4_No').css("display", "none");  
									//버튼들 css 변경
									$('#banner4_insertBtn').css("display",'none');	
									$('#banner4_showUpdateBtn').css("display",'block');
									$('#banner4_updateBtn').css("display",'none');
									$('#banner4_deleteBtn').css("display",'block');
								}
								if(data.list[j].ac_Img_Rename != null){
									$('#contentImg4').attr("src","/brocoli/resources/Auction-Img/"+data.list[j].ac_Img_Rename+"");
								}else{
									$('#contentImg4').attr("src","http://via.placeholder.com/550x420");
								}
							}
							if(data.list[j].ac_Banner_NO == 5){
								var price5 = data.list[j].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner5_Price').val(price5);
								$('#banner5_comment').val(data.list[j].ac_Comment);
								$('#ac_No5').val(data.list[j].ac_No);
								$('#banner5_Price').attr("readonly",true);		//결과값 담고 수정못하게 readonly적용
								$('#banner5_Price').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
								$('#banner5_Price').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
								$('#banner5_comment').attr("readonly",true);	//결과값 담고 수정못하게 readonly적용
								$('#banner5_comment').css("border",'none');		//input처럼 보이지 않게 css변경 적용 border: none; 
								$('#banner5_comment').css("background",'none');	//input처럼 보이지 않게 css변경 적용 background: none;
								$('#contentImgArea5').attr("disabled",true);  	//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
								$('#banner_Img5').attr("disabled",true);		//결과값 담고 수정못하게 클릭이벤트 비활성화 적용
								if(data.list[j].ac_Status != null){
									$('#banner5_Ok').css("display", "block");  
									$('#banner5_No').css("display", "none");  
									//버튼들 css 변경
									$('#banner5_insertBtn').css("display",'none');	
									$('#banner5_showUpdateBtn').css("display",'block');
									$('#banner5_updateBtn').css("display",'none');
									$('#banner5_deleteBtn').css("display",'block');
								}
								if(data.list[j].ac_Img_Rename != null){
									$('#contentImg5').attr("src","/brocoli/resources/Auction-Img/"+data.list[j].ac_Img_Rename+"");
								}else{
									$('#contentImg5').attr("src","http://via.placeholder.com/550x420");
								}
							}
						}
					}
				},error : function(jqxhr, textStatus, errorThrown) {
					console.log("옥션 list Select ajax 처리실패");

					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			})
		});
	</script>

<!--    작성자 : 박주완
        작성일 : 2020-04-06
        내용: 할인가격 자동 계산, 3자리수 콤마 스크립트 -->
    <script>
	    function resultPrice() {
	    	var price1 = document.getElementById("banner1_Price").value;	
	    	var price2 = document.getElementById("banner2_Price").value;	
	    	var price3 = document.getElementById("banner3_Price").value;	
	    	var price4 = document.getElementById("banner4_Price").value;	
	    	var price5 = document.getElementById("banner5_Price").value;	
	    	price1 = price1.replace(",","");	//기존 값의 , 제거
	    	price2 = price2.replace(",","");
	    	price3 = price3.replace(",","");
	    	price4 = price4.replace(",","");
	    	price5 = price5.replace(",","");
	    	
	    	price1 = price1.replace(/[^0-9]/g,'');   // 입력값이 숫자가 아니면 공백
	    	price2 = price2.replace(/[^0-9]/g,'');
	    	price3 = price3.replace(/[^0-9]/g,'');
	    	price4 = price4.replace(/[^0-9]/g,'');
	    	price5 = price5.replace(/[^0-9]/g,'');
	    	
	    	price1 = price1.replace(/,/g,'');          // ,값 공백처리
	    	price2 = price2.replace(/,/g,'');
	    	price3 = price3.replace(/,/g,'');
	    	price4 = price4.replace(/,/g,'');
	    	price5 = price5.replace(/,/g,'');
	    	$("#banner1_Price").val(price1.replace(/\B(?=(\d{3})+(?!\d))/g, ",")); 		// 정규식을 이용해서 3자리 마다 , 추가 
	    	$("#banner2_Price").val(price2.replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	    	$("#banner3_Price").val(price3.replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	    	$("#banner4_Price").val(price4.replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	    	$("#banner5_Price").val(price5.replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	    }
    </script>
	
    <script src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/multi-select/js/jquery.multi-select.js"></script>
    <script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/data-table.js"></script>
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