<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>오너 : 상품등록</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/brocoli/resources/ownerResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/libs/css/style.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
    
    <%@ include file="header.jsp" %>
            
    <style type="text/css">
    #small-category-A { display: none;}
    #small-category-B { display: none;}
    #small-category-C { display: none;}
    #small-category-D { display: none;}
    #small-category-E { display: none;}
    #small-category-F { display: none;}
    #small-category-G { display: none;}
    #small-category-H { display: none;}
    #small-category-I { display: none;}
    #small-category-J { display: none;}
    #small-category-K { display: none;}
    #small-category-L { display: none;}
    #small-category-M { display: none;}
    
    #small-category-  { display: none;}
    
    #small-category-Z { display: none;}  /* Z는 반드시 마지막 번째 기타항목  */
    
    .btn-secondary{
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
                        <div class="page-header" >
                            <h2 class="pageheader-title">상품등록</h2>
                            <p class="pageheader-text"></p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">상품관리</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">상품등록</li>
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
                                    <form action="product-insert.ow" method="post" enctype="multipart/form-data" onsubmit="return checks()">
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input name="brand" value="${ loginUser.brand }" type="text"  placeholder="자동생성" class="form-control" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">등록자</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input name="p_Writer" value="${ loginUser.mName }" type="text"  placeholder="자동생성" class="form-control" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input name="p_Name" id="p_Name" type="text" data-parsley-minlength="6" placeholder="상품명을 입력해주세요." class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품 이미지</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                            	<div id="titleImgArea" style=" float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                            	<img id="titleImg" src="http://via.placeholder.com/160x200"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
	                                            </div>
	                                            <div id="contentImgArea1"  style="float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                            	<img id="contentImg1" src="http://via.placeholder.com/160x200" alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px; ">
	                                            </div>
	                                            <div id="contentImgArea2"  style="float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                            	<img id="contentImg2"  src="http://via.placeholder.com/160x200" alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
	                                            </div>
	                                            <div id="contentImgArea3"  style="float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                           		<img id="contentImg3"  src="http://via.placeholder.com/160x200" alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
	                                            </div>
	                                            <div id="contentImgArea4" style="float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                            	<img id="contentImg4"  src="http://via.placeholder.com/160x200" alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
	                                            </div>
	                                            <div id="contentImgArea5"  style="float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                            	<img id="contentImg5"  src="http://via.placeholder.com/160x200" alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
	                                            </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품설명 이미지</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                            	<div id="contentImgArea6" style="float: left; width: 190px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                            	<div class="img-Dtail-Area" style="width: 180px; height: 200px;">
	                                            		<img id="contentImg6"  src="http://via.placeholder.com/1300x2000"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px;">
	                                            	</div>
	                                            </div>
	                                            <div id="contentImgArea7" style="float: left; width: 190px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                            	<div class="img-Dtail-Area" style="width: 180px; height: 200px;">
	                                            		<img id="contentImg7"  src="http://via.placeholder.com/1300x2000"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px;">
	                                            	</div>
	                                            </div>
	                                            <div id="contentImgArea8" style="float: left; width: 190px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                            	<div class="img-Dtail-Area" style="width: 180px; height: 200px;">
	                                            		<img id="contentImg8"  src="http://via.placeholder.com/1300x2000"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px;">
	                                            	</div>
	                                            </div>
                                            </div>
                                        </div>
                                        
                                        <div class="productImgArea" id="productImgArea">
                                        	<input type="file" id="pf_Img1" name="file1" accept="resources/product-Img/*" onchange="loadImg(this, 1);" />
                                        	<input type="file" id="pf_Img2" name="file2" accept="resources/product-Img/*" onchange="loadImg(this, 2);" />
                                        	<input type="file" id="pf_Img3" name="file3" accept="resources/product-Img/*" onchange="loadImg(this, 3);" />
                                        	<input type="file" id="pf_Img4" name="file4" accept="resources/product-Img/*" onchange="loadImg(this, 4);" />
                                        	<input type="file" id="pf_Img5" name="file5" accept="resources/product-Img/*" onchange="loadImg(this, 5);" />
                                        	<input type="file" id="pf_Img6" name="file6" accept="resources/product-Img/*" onchange="loadImg(this, 6);" />
                                        	<input type="file" id="pf_Dimg1" name="file7" accept="resources/product-Detail-Img/*" onchange="loadImg(this, 7);" />
                                        	<input type="file" id="pf_Dimg2" name="file8" accept="resources/product-Detail-Img/*" onchange="loadImg(this, 8);" />
                                        	<input type="file" id="pf_Dimg3" name="file9" accept="resources/product-Detail-Img/*" onchange="loadImg(this, 9);" />
                                        </div>

                                        
                                       
	                                        <div class="form-group row">
	                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">등록가격</label>
	                                            <div class="col-12 col-sm-8 col-lg-6">
	                                                <input id="p_Price" name="p_Price" type="text" min="0" data-parsley-min="6" placeholder="판매금액으로 표시됩니다." class="form-control" onkeyup="resultPrice()">
	                                            </div>
	                                        </div>
	                                        <div class="form-group row">
	                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">할인가격</label>
	                                            <div class="col-12 col-sm-8 col-lg-6">
	                                                <input id="p_Sail_Price" name="p_Sail_Price" type="text" min="0" data-parsley-max="6" placeholder="할인금액으로 표시됩니다. (선택사항)" class="form-control" onkeyup="resultPrice()">
	                                            </div>
	                                        </div>
	
	                                        <div class="form-group row">
	                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">최종판매가격</label>
	                                            <div class="col-12 col-sm-8 col-lg-6">
	                                                <input readonly="readonly" id=p_Last_Price name="p_Last_Price" type="text" min="0" max="100000000" placeholder="할인 적용후 금액으로 표시되며 실제판매되는 금액입니다. (등록가격-할인가격 = 최종가격)" class="form-control">
	                                            </div>
	                                        </div>
                                       
                                        
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">카테고리 - 대분류</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
												<select id="big-category"  class="btn btn-secondary dropdown-toggle" style="height: 38px;background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
													<option value="">카테고리</option>
													<option value="상의">상의</option>
													<option value="아우터">아우터</option>
													<option value="원피스">원피스</option>
													<option value="하의">하의</option>
													<option value="스커트">스커트</option>
													<option value="가방">가방</option>
													<option value="신발">신발</option>
													<option value="모자">모자</option>
													<option value="악세서리">악세서리</option>
													<option value="언더웨어">언더웨어</option>
													<option value="기타">기타</option>
												</select>
                                         
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">카테고리 - 소분류</label>
                                            <div class="col-sm-4 col-lg-3 mb-3 mb-sm-0">
													<select id="small-category-A"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="티셔츠">- 티셔츠</option>
														<option value="셔츠">- 셔츠</option>
														<option value="맨투맨/스웨트셔츠">- 맨투맨/스웨트셔츠</option>
														<option value="후드스웨트셔츠/후드집업">- 후드스웨트셔츠/후드집업</option>
														<option value="니트/스웨터/가디건">- 니트/스웨터/가디건</option>
														<option value="기타상의">- 기타상의</option>
													</select>
													<select id="small-category-B"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="블루종/MA-1">- 블루종/MA-1</option>
														<option value="레더/라이더스재킷">- 레더/라이더스재킷</option>
														<option value="트러커재킷">- 트러커재킷</option>
														<option value="수트/블레이저 재킷">- 수트/블레이저 재킷</option>
														<option value="나일론/코치/아노락">- 나일론/코치/아노락</option>
														<option value="겨울싱글코트">- 겨울싱글코트</option>
														<option value="겨울기타코트">- 겨울기타코트</option>
														<option value="헤비아우터">- 헤비아우터</option>
														<option value="기타아우터">- 기타아우터</option>
													</select>
													<select id="small-category-C"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="미니원피스">- 미니원피스</option>
														<option value="미디원피스">- 미디원피스</option>
														<option value="맥시원피스">- 맥시원피스</option>
														<option value="점프수트">- 점프수트</option>
													</select>
													<select id="small-category-D"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="데님팬츠">- 데님팬츠</option>
														<option value="코튼팬츠">- 코튼팬츠</option>
														<option value="수트팬츠/슬렉스">- 수트팬츠/슬렉스</option>
														<option value="트레이닝/조거팬츠">- 트레이닝/조거팬츠</option>
														<option value="숏팬츠">- 숏팬츠</option>
														<option value="레깅스">- 레깅스</option>
														<option value="기타">- 기타</option>
													</select>
													<select id="small-category-E"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="미니스커트">- 미니스커트</option>
														<option value="미디스커트">- 미디스커트</option>
														<option value="롱스커트">- 롱스커트</option>
													</select>
													<select id="small-category-F"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="백팩">- 백팩</option>
														<option value="메신저/크로스백">- 메신저/크로스백</option>
														<option value="클러치/파우치">- 클러치/파우치</option>
														<option value="브리프케이스">- 브리프케이스</option>
														<option value="웨이스트백">- 웨이스트백</option>
														<option value="기타가방">- 기타가방</option>
													</select>
													<select id="small-category-G"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="스니커즈">- 스니커즈</option>
														<option value="구두">- 구두</option>
														<option value="부츠">- 부츠</option>
														<option value="힐/펌프스">- 힐/펌프스</option>
														<option value="플랫">- 플랫</option>
														<option value="로퍼">- 로퍼</option>
														<option value="기타신발">- 기타신발</option>
													</select>
													<select id="small-category-H"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="캡/야구모자">- 캡/야구모자</option>
														<option value="헌팅/베레">- 헌팅/베레</option>
														<option value="비니">- 비니</option>
														<option value="버킷/사파리">- 버킷/사파리</option>
														<option value="기타모자">- 기타모자</option>
													</select>
													<select id="small-category-I"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="안경">- 안경</option>
														<option value="마스크">- 마스크</option>
														<option value="지갑">- 지갑</option>
														<option value="벨트">- 벨트</option>
														<option value="반지">- 반지</option>
														<option value="팔찌">- 팔찌</option>
														<option value="목걸이">- 목걸이</option>
														<option value="귀걸이">- 귀걸이</option>
														<option value="머플러">- 머플러</option>
														<option value="장갑">- 장갑</option>
														<option value="넥타이">- 넥타이</option>
														<option value="키링">- 키링</option>
														<option value="헤어악세서리">- 헤어악세서리</option>
														<option value="기타">- 기타</option>
													</select>
													<select id="small-category-J"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="양말">- 양말</option>
														<option value="속옷">- 속옷</option>
														<option value="스타킹">- 스타킹</option>
														<option value="홈웨어">- 홈웨어</option>
													</select>
													<select id="small-category-Z"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="기타전체">- 기타전체</option>
													</select>
													<select id="small-category-"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="A">- </option>
														<option value="B">- </option>
														<option value="C">- </option>
														<option value="D">- </option>
														<option value="E">- </option>
														<option value="F">- </option>
														<option value="G">- </option>
														<option value="H">- </option>
														<option value="I">- </option>
														<option value="J">- </option>
														<option value="K">- </option>
														<option value="">- </option>
													</select>
													<select id="small-category-"   class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="">카테고리</option>
														<option value="A">- </option>
														<option value="B">- </option>
														<option value="C">- </option>
														<option value="D">- </option>
														<option value="E">- </option>
														<option value="F">- </option>
														<option value="G">- </option>
														<option value="H">- </option>
														<option value="I">- </option>
														<option value="J">- </option>
														<option value="K">- </option>
														<option value="">- </option>
													</select>
                                            </div>

                                        </div>

                                        

                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품요약설명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <textarea id="p_Comment" name="p_Comment" class="form-control"></textarea>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right" >옵션설정</label>
                                            <div class="col-12 col-sm-8 col-lg-6" style="">
                                            
                                                <div class="col-xl-6 col-lg-12 col-md-12 col-sm-12 col-12 mb-5" style="max-width: 100%; ">
						                            <div class="tab-regular">
						                                <ul class="nav nav-tabs " id="myTab" role="tablist">
						                                    <li class="nav-item">
						                                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">옵션등록</a>
						                                    </li>
						                                </ul>
						                                <div class="tab-content" id="myTabContent" style="    width: 100%;">
						                                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
						                                        <div id="combinationArea" >
						                                        	<table style="border-bottom: 1px solid #dddde8; margin-bottom: 10px; width: 100%;">
						                                        		<thead>
								                                            <tr>
								                                                <th>옵션1</th>
								                                                <th>옵션2</th>
								                                                <th>재고</th>
								                                            </tr>
								                                        </thead>
						                                        		 <tbody>
								                                            <tr style="max-width: 100px;">
								                                                <td>
								                                                	<div class="input-group mb-3" >
										                                                <input id="Option1" type="text" class="form-control option1">
										                                                <div style="background: none; border: none; width: 50px;"></div>
										                                            </div>
								                                                </td>
								                                                <td>
									                                                <div class="input-group mb-3" >
											                                        	<input id="Option2" type="text" class="form-control option2">
											                                        	<div style="background: none; border: none; width: 50px;"></div>
											                                        </div>
								                                                </td>
								                                                <td>
									                                                <div class="input-group mb-3" >
											                                        	<input id="stock" type="number" min="0" class="form-control stock">
											                                        	<div style="background: none; border: none; width: 50px;"></div>
											                                        </div>
								                                                </td>
								                                            </tr>
								                                         </tbody>
						                                        	</table >
						                                        </div>
						                                        <a style="color: #FFFFFF;" class="btn btn-secondary" onclick="productOptionAdd()">옵션리스트에 등록</a>
						                                    </div>
						                                </div>
						                            </div>
				                       			</div>
					                        <!-- ============================================================== -->
					                        <!-- striped table -->
					                        <!-- ============================================================== -->
					                        <div class=" col-md-12 col-sm-12 col-12" style="width: 100%;">
					                            <div class="card">
					                                <h5 class="card-header">옵션 리스트</h5>
					                                <div class="card-body">
					                                    <table class="table table-striped">
					                                        <thead style="text-align: center;">
					                                            <tr>
		                                                          <th scope="col" style="width: 15%;">번호</th>
														          <th scope="col" style="width: 25%;">옵션1</th>
														          <th scope="col" style="width: 25%;">옵션2</th>
														          <th scope="col" style="width: 20%;">재고</th>
														          <th scope="col">비고</th>
					                                            </tr>
					                                        </thead>
					                                        <tbody  id="product-add-Option" style="text-align: center;">
					                                        </tbody>
					                                    </table>
					                                    	<hr>
					                                        <a style="color: #FFFFFF; float: right;" onclick="allCloseBtn()" class="btn btn-danger">옵션전체삭제</a>
					                                        <a style="color: #FFFFFF; float: right; margin-right: 10px;" onclick="selectcloseBtn()" class="btn btn-danger">삭제</a>
					                                </div>
					                            </div>
					                        </div>
				                        <!-- ============================================================== -->
				                        <!-- end striped table -->
				                        <!-- ============================================================== -->
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row text-right">
                                            <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                                <button type="submit" class="btn btn-space btn-primary">등록</button>
                                                <button class="btn btn-space btn-secondary">취소</button>
                                            </div>
                                            <input readonly="readonly" type="text" id="selectScategory" name="p_Scategory" style="border: none; background: none; color: #FFFFFF; z-index: -9; float: left;"/>
                                            <input readonly="readonly" type="text" id="selectBcategory" name="p_Bcategory" style="border: none; background: none; color: #FFFFFF; z-index: -9; float: left;"/>
                                		<input readonly="readonly" id="p_Brand_NO" name="p_Brand_NO" type="number" style="border: noen; background: none; z-index: -10;" value="${loginUser.brand_NO }"/>
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

    <script src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/parsley/parsley.js"></script>
    <script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
    
<!--    작성자 : 박주완
        작성일 : 2020-04-03
        내용: 옵션리스트 등록/삭제 스크립트 -->
    <script>
    var count = 0;
	    function productOptionAdd(){
	        var option1 = $('#Option1').val();
	        var option2 = $('#Option2').val();
	        var stock = $('#stock').val();
	        
	        
		    $('#product-add-Option').append('<tr>'+
		            '<th scope="row">'+count+'</th>'+
		            '<td id="Option_1_'+count+'" ><input name="Product_OptionVOList['+count+'].option_1" type="text" class="form-control" value="'+option1+'"/></td>'+
		            '<td id="Option_2" ><input name="Product_OptionVOList['+count+'].option_2" type="text" class="form-control" value="'+option2+'"/></td>'+
		            '<td id="op_Stock" ><input id="checkStock" name="Product_OptionVOList['+count+'].op_Stock" type="number" class="form-control" value="'+stock+'" /></td>'+
		            '<td></td>'+
		            '</tr>');
		    
		 	count++;   
	    }
		            
	    
	    
	    function selectcloseBtn(){
	          if(count < 0){	
	        	  count = 0;
	          }else{
					count--;
		     $('#Option_1_'+count+'').parents('tr').remove('tr');
	          }
	          
	    }
	    
	    function allcloseBtn(){
	          $('#Option_2').parents('tbody').empty('tbody');
	          count = 0;
	    }
	    
    </script>
    
<!--    작성자 : 박주완
        작성일 : 2020-04-06
        내용: 할인가격 자동 계산, 3자리수 콤마 스크립트 -->
    <script>
	    function resultPrice() {
	    	var price = document.getElementById("p_Price").value;	
	    	var sailPrice = document.getElementById("p_Sail_Price").value;
	    	price = price.replace(",","");
	    	sailPrice = sailPrice.replace(",","");
	    	document.getElementById("p_Last_Price").value = parseInt(price) - parseInt(sailPrice);
	    	var LastPrice = document.getElementById("p_Last_Price").value;
	    	
	    	price = price.replace(/[^0-9]/g,'');   // 입력값이 숫자가 아니면 공백
	    	price = price.replace(/,/g,'');          // ,값 공백처리
	    	sailPrice = sailPrice.replace(/[^0-9]/g,'');
	    	sailPrice = sailPrice.replace(/,/g,'');     
	    	LastPrice = LastPrice.replace(/[^0-9]/g,'');
	    	LastPrice = LastPrice.replace(/,/g,'');     
	    	$("#p_Price").val(price.replace(/\B(?=(\d{3})+(?!\d))/g, ",")); 		// 정규식을 이용해서 3자리 마다 , 추가 
	    	$("#p_Sail_Price").val(sailPrice.replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	    	$("#p_Last_Price").val(LastPrice.replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	    }

    </script>

    </script>
    
    <script>
    $('#form').parsley();
    </script>

<!--    작성자 : 박주완
        작성일 : 2020-04-03
        내용: 이미지 클릭시 이미지 파일 업로드 스크립트 -->
	<script>
	//사진 게시판 미리보기 기능 지원 스크립트
	$(function(){
	   $('#productImgArea').hide();
	   
	      
	   $('#titleImgArea').click(() => {
	      $('#pf_Img1').click();
	   });
	      
	   $('#contentImgArea1').click(() => {
	      $('#pf_Img2').click();
	   });
	   
	   $('#contentImgArea2').click(() => {
	      $('#pf_Img3').click();
	   });

	   $('#contentImgArea3').click(() => {
	      $('#pf_Img4').click(); 
	   });
	    
	   $('#contentImgArea4').click(() => {
	      $('#pf_Img5').click();
	   });
	    
	   $('#contentImgArea5').click(() => {
	      $('#pf_Img6').click();
	   });
	   
	   $('#contentImgArea6').click(() => {
		  $('#pf_Dimg1').click();
	   });
	   
	   $('#contentImgArea7').click(() => {
		  $('#pf_Dimg2').click();
	   });
	   
	   $('#contentImgArea8').click(() => {
		  $('#pf_Dimg3').click();
	   });
	   
	});

	function loadImg(value, num){
	   
	   if(value.files && value.files[0])  {
	      
	      var reader = new FileReader();
	      
	      reader.onload = function(e){
	         
	         switch(num) {
	         case 1 : $('#titleImg').attr('src', e.target.result);
	            break;
	         case 2 : $('#contentImg1').attr('src', e.target.result);
	            break;
	         case 3 : $('#contentImg2').attr('src', e.target.result);
	            break;
	         case 4 : $('#contentImg3').attr('src', e.target.result);
	            break;
	         case 5 : $('#contentImg4').attr('src', e.target.result);
	            break;
	         case 6 : $('#contentImg5').attr('src', e.target.result);
	            break;
	         case 7 : $('#contentImg6').attr('src', e.target.result);
	            break;
	         case 8 : $('#contentImg7').attr('src', e.target.result);
	            break;
	         case 9 : $('#contentImg8').attr('src', e.target.result);
	            break;   
	         }
	      }
	      reader.readAsDataURL(value.files[0]);
	   }
	}
	</script>

<!--    작성자 : 박주완
        작성일 : 2020-03-19
        내용: 카테고리 대분류 선택별 소분류 출력 -->
    <script>
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            var forms = document.getElementsByClassName('needs-validation');
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
    
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == '상의') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-A').show();
        } else {
            jQuery('#small-category-A').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == '아우터') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-B').show();
        } else {
            jQuery('#small-category-B').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == '원피스') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-C').show();
        } else {
            jQuery('#small-category-C').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == '하의') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-D').show();
        } else {
            jQuery('#small-category-D').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == '스커트') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-E').show();
        } else {
            jQuery('#small-category-E').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == '가방') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-F').show();
        } else {
            jQuery('#small-category-F').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == '신발') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-G').show();
        } else {
            jQuery('#small-category-G').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == '모자') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-H').show();
        } else {
            jQuery('#small-category-H').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == '악세서리') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-I').show();
        } else {
            jQuery('#small-category-I').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == '언더웨어') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-J').show();
        } else {
            jQuery('#small-category-J').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'K') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-K').show();
        } else {
            jQuery('#small-category-K').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'L') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-L').show();
        } else {
            jQuery('#small-category-L').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'N') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-N').show();
        } else {
            jQuery('#small-category-N').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == '기타') {
        	$(".p_Scategory option:eq(0)").prop("selected", true);
            jQuery('#small-category-Z').show();
        } else {
            jQuery('#small-category-Z').hide();
        }
    });
    
    
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
            jQuery('#selectBcategory').val(state);
    });
    
    jQuery('#small-category-A').change(function() {
        var state = jQuery('#small-category-A option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-B').change(function() {
        var state = jQuery('#small-category-B option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-C').change(function() {
        var state = jQuery('#small-category-C option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-D').change(function() {
        var state = jQuery('#small-category-D option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-E').change(function() {
        var state = jQuery('#small-category-E option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-F').change(function() {
        var state = jQuery('#small-category-F option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-G').change(function() {
        var state = jQuery('#small-category-G option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-H').change(function() {
        var state = jQuery('#small-category-H option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-I').change(function() {
        var state = jQuery('#small-category-I option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-J').change(function() {
        var state = jQuery('#small-category-J option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-K').change(function() {
        var state = jQuery('#small-category-K option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-L').change(function() {
        var state = jQuery('#small-category-L option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-N').change(function() {
        var state = jQuery('#small-category-N option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-O').change(function() {
        var state = jQuery('#small-category-O option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-P').change(function() {
        var state = jQuery('#small-category-P option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-Q').change(function() {
        var state = jQuery('#small-category-Q option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-R').change(function() {
        var state = jQuery('#small-category-R option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    jQuery('#small-category-Z').change(function() {
        var state = jQuery('#small-category-Z option:selected').val();
            jQuery('#selectScategory').val(state);
    });
    
    
    
    </script>

<!--    작성자 : 박주완
        작성일 : 2020-04-03
        내용: 상품등록 유효성 검사 스크립트 -->   
    <script>
    function checks(){
	    //상품명 공백 확인 
	  	if($("#p_Name").val() == ""){
		  alert("상품명을 입력해 주세요."); 
		  $("#p_Name").focus(); 
		  return false; 
		}
 	    //상품 대표 이미지 공백 확인 
	  	if(document.getElementById('titleImg').src == "http://via.placeholder.com/160x200"){
		  alert("상품 대표 이미지를 첨부해 주세요."); 
		  $("#titleImg").focus(); 
		  return false; 
		}
	  	//상품 대표 이미지 공백 확인 
	  	if(document.getElementById('contentImg6').src == "http://via.placeholder.com/160x200"){
		  alert("상품 설명 이미지를 1개 이상 첨부해 주세요."); 
		  $("#contentImg6").focus(); 
		  return false; 
		}
 	    
	  	
	    //등록가격 공백 확인 
	  	if($("#p_Price").val() == ""){
		  alert("등록가격을 입력해 주세요."); 
		  $("#p_Price").focus(); 
		  return false; 
		}
		
	    //등록가격 공백 확인 
	  	if($("#p_Sail_Price").val() == ""){
		  alert("할인가격을 입력해 주세요. (미할인시 0 입력)"); 
		  $("#p_Sail_Price").focus(); 
		  return false; 
		}
	    
	    //최종판매가격 공백 확인 
	  	if($("#p_Last_Price").val() < "0"){
		  alert("등록가격,할인가격을 확인해 주세요."); 
		  $("#p_Last_Price").focus(); 
		  return false; 
		}
	
	    //카테고리 대분류 공백 확인 
	  	if($("#big-category").val() == ""){
		  alert("카테고리 대분류를 선택해 주세요."); 
		  $("#big-category").focus(); 
		  return false; 
		}
	    
	    
	    //카테고리 소분류 공백 확인 	    
	  	if($("#big-category").val() == "A"){
		  	if($('#small-category-A').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "B"){
		  	if($('#small-category-B').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "C"){
		  	if($('#small-category-C').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "D"){
		  	if($('#small-category-D').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "E"){
		  	if($('#small-category-E').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "F"){
		  	if($('#small-category-F').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "G"){
		  	if($('#small-category-G').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "H"){
		  	if($('#small-category-H').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "I"){
		  	if($('#small-category-I').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "J"){
		  	if($('#small-category-J').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "L"){
		  	if($('#small-category-L').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "N"){
		  	if($('#small-category-N').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "M"){
		  	if($('#small-category-M').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "O"){
		  	if($('#small-category-O').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "P"){
		  	if($('#small-category-P').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "Z"){
		  	if($('#small-category-Z').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	
	  	

	
	    //상품명 공백 확인 
	  	if($("#p_Name").val() == ""){
		  alert("상품명을 입력해 주세요."); 
		  $("#p_Name").focus(); 
		  return false; 
		}
	
	    //제품요약 공백 확인 
	  	if($("#p_Comment").val() == ""){
		  alert("제품설명을 입력해 주세요."); 
		  $("#p_Comment").focus(); 
		  return false; 
		}
	
/* 	    //옵션1 공백 확인 
	  	if($("#Option_1").val() == ""){
		  alert("옵션1을 등록해 주세요."); 
		  $("#Option_1").focus(); 
		  return false; 
		}
	
	    //옵션2 공백 확인 
	  	if($("#Option_2").val() == ""){
		  alert("옵션2를 등록해 주세요."); 
		  $("#Option_2").focus(); 
		  return false; 
		} */
	
	    //재고 공백 확인 
	    
	  	if($("#checkStock").val() == null){
	  		alert("등록재고를 입력해 주세요."); 
			  $("#checkStock").focus(); 
			  return false; 
		}else if($("#checkStock").val() == ""){
			alert("등록재고를 입력해 주세요."); 
			  $("#checkStock").focus(); 
			  return false; 
		}
    }
    </script>

    
</body>
 
</html>