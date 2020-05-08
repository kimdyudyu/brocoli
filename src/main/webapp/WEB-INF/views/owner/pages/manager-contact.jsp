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
        
    <title>오너 : 매니저 컨택트</title>
    
    
</head>

<body style="height: 100%; min-height: 100%;">
    <div class="dashboard-main-wrapper">
        <div class="dashboard-wrapper">
            <div class="influence-finder">
                <div class="container-fluid dashboard-content">
                    <div class="row">
                        <div class="col-xl-9 col-lg-8 col-md-8 col-sm-12 col-12" style="height: 86vh; margin-bottom: 10px;">
                            <div class="card" style="margin-bottom: 1px; height: auto; min-height: 7%;">
                                <div class="card-body" style="height: auto; padding: 10px;">
                                    <div class="row align-items-center">
                                        <div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12" style="height: auto;">
                                            <div class="user-avatar float-xl-left pr-4 float-none" style="margin: 0;">
                                                <img id="managerLogo" style="height: 45px; width: 45px;" src="http://via.placeholder.com/45x45" alt="User Avatar" class="rounded-circle user-avatar-xl">
                                            </div>
                                            <div class="pl-xl-3">
                                                <div class="m-b-0">							
                                                    <div class="user-avatar-name d-inline-block" style="margin-bottom: 0px;">
                                                        <h2 class="font-24 m-b-10" style="margin-top: 8px; width: auto;"><strong id="managerName">담당 매니저가 배정되지 않았습니다.</strong></h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card" style="height: 90%; margin-bottom: 1px;">
                                <div id="chatingArea" class="card-body" style="overflow-y: scroll; background-color: #b5cbe2; ">
                              <!--  	 실제 메시지 영역 시작 -->
                                	
                               <!--  	메시지 끝 -->
                                </div>
	                            <div class="card" style="height: 85px; float: bottom; margin: 0px;">
	                                <div class="card-body" style="padding: 10px; width: 100%;">
	                                	<textarea id="textArea" rows="" cols="" style="resize: none; width:calc( 100% - 140px ); height: 100%; border-radius: 4px; float: left;"></textarea>
	                                	<div style="width: 140px; float: right; padding: 10px;">
			                                <button onclick="sendMassege();" class="btn btn-dark" style="width: auto; height: auto; float: right;"><strong>전송</strong></button>
                                			<img id="contentImg" src="/brocoli/resources/ownerResources/images/ImgUpload_Icon.png"  style="height: 41px; width: 41px; float: left;">
		                                	<input id="ImgFile" name="file" type="file" onchange="loadImg(this, 1);" style="width:auto; height: auto; float: right; display: none;">
	                                	</div>
	                                </div>
	                            </div>
                            </div>
                            
                         </div>
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-12 col-12">
                                <div class="card"  style="margin-bottom: 0px;">
                                    <div class="card-body" style="height: 85px;">
										<div class="page-header">
					                        <h3 class="mb-2">매니저컨택</h3>
					                        <div class="page-breadcrumb">
					                           <nav aria-label="breadcrumb">
					                              <ol class="breadcrumb" style="padding: 0; border: none;">
					                                 <li class="breadcrumb-item"><a href="#"
					                                    class="breadcrumb-link">메뉴</a></li>
					                                 <li class="breadcrumb-item active" aria-current="page">매니저 컨택</li>
					                           </nav>
					                        </div>
					                     </div>
                                    </div>
                                    <div id="userListArea" class="card-body border-top" style="height: 207px; max-height: 207px;">
                                    	<h3 class="font-16"><strong id="loginUserCount">참여자</strong></h3>
                                    </div>
                                    <div class="card-body border-top">
                                        <h3 class="font-16"><strong>업로드된 파일</strong></h3>
                                        <div id="chatImgArea" style="overflow-y:scroll; height: 250px; ">
                                        </div>
                                    </div>
                                    <!-- <div class="card-body border-top">
                                        <h3 class="font-16"><strong>채팅설정</strong></h3>
                                        <select class="form-control">
                                            <option selected>Select the Age</option>
                                            <option value="20-30">20-30</option>
                                            <option value="30-40">30-40</option>
                                            <option value="40-50">40-50</option>
                                        </select>
                                    </div>
                                    <div class="card-body border-top">
                                        <a href="#" class="btn btn-secondary btn-lg btn-block">Submit</a>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</div>
<!--    작성자 : 박주완
        작성일 : 2020-04-28
        내용: 전송버튼 클릭시 Contact 테이블 insert -->	
	<script>
	function sendMassege(){
		var imgfile0 = $('#ImgFile').prop('files')[0];
		console.log("imgfile : "  + imgfile0);
		if(imgfile0 == null){
			sendMassegeNoImg();
		}
		if(imgfile0 != null){
			sendMassegeImg();
		}
	}
	
	function sendMassegeImg(){
		var contentText = $('#textArea').val();
		var mNo = ${loginUser.mNO};
		var bNO = ${loginUser.brand_NO};
		var mName = '${loginUser.mName}';
		var imgfile =  $('#ImgFile').prop('files')[0];
		console.log("가져온 메시지 : " + contentText);
		
		var contactData = new FormData();
		contactData.append('con_Content',contentText);
		contactData.append('con_Mno',mNo);
		contactData.append('con_Bno',bNO);
		contactData.append('con_Writer',mName);
		contactData.append('file',imgfile);
		
		$.ajax({
			url : "contactInsertImg.ow",
			type : 'post',
			dataType : "json",
			data : contactData,
			processData : false,
			contentType : false,
			success : function(data){
				$("#contentImg").attr("src","/brocoli/resources/ownerResources/images/ImgUpload_Icon.png");
				$("#textArea").val("");
				$("#chatingArea").scrollTop($("#chatingArea").height()*2);	//로드후 스크롤 제일 아래로
				console.log("메시지 insert 성공.");
			},error : function(jqxhr, textStatus, errorThrown) {
				console.log("옥션 insert ajax 처리실패");

				//에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
		})
	}
	
	function sendMassegeNoImg(){
		var contentText = $('#textArea').val();
		var mNo = ${loginUser.mNO};
		var bNO = ${loginUser.brand_NO};
		var mName = '${loginUser.mName}';
		console.log("가져온 메시지 : " + contentText);
		var contactData = new FormData();
		contactData.append('con_Content',contentText);
		contactData.append('con_Mno',mNo);
		contactData.append('con_Bno',bNO);
		contactData.append('con_Writer',mName);
		
		$.ajax({
			url : "contactInsert.ow",
			type : 'post',
			dataType : "json",
			data : contactData,
			processData : false,
			contentType : false,
			success : function(data){
				$("#contentImg").attr("src","/brocoli/resources/ownerResources/images/ImgUpload_Icon.png");
				$("#textArea").val("");
				$("#chatingArea").scrollTop($("#chatingArea").height()*2);	//로드후 스크롤 제일 아래로
				console.log("메시지 insert 성공.");
			},error : function(jqxhr, textStatus, errorThrown) {
				console.log("옥션 insert ajax 처리실패");

				//에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
		})
	}
	</script>
	
<!--    작성자 : 박주완
        작성일 : 2020-04-28
        내용: 이미지 클릭시 이미지 파일 업로드 스크립트 -->
	<script>
	//사진 게시판 미리보기 기능 지원 스크립트
	$(function(){
	      
	   $('#contentImg').click(() => {
	      $('#ImgFile').click();
	   });
	      
	   
	});

	function loadImg(value, num){
	   
	   if(value.files && value.files[0])  {
	      
	      var reader = new FileReader();
	      
	      reader.onload = function(e){
	         
	         switch(num) {
	         case 1 : $('#contentImg').attr('src', e.target.result);
	            break;
	         }
	      }
	      reader.readAsDataURL(value.files[0]);
	   }
	}
	</script>
		
<!--    작성자 : 박주완
    작성일 : 2020-04-28
    내용: 컨택트 데이터 select 인터벌 -->	
	<script>
	
	var scrollValue = "";
	var count = 0;
	$('#chatingArea').scroll(function () {
		scrollValue = $("#chatingArea").scrollTop();
		console.log("스크롤위치값 : " + scrollValue);
	});
	$( document ).ready(function() {
		console.log("Interval 실행..");
		
		var Interval =  setInterval(function(){
				var bNO = "${loginUser.brand_NO}";
				var mNO = "${loginUser.mNO}"; 
				var chating = "";
				var chatImg = "";
				
				count++;
				if(count == 350){
					console.log("채팅 reload 종료.");
					alert('채팅 시간이 초과되었습니다 채팅을 계속하시려면 새로고침 해주세요.');
					clearInterval(Interval);
				}
				$.ajax({
					url : "contactListSelect.ow",
					data : {con_Bno:bNO,con_Mno:mNO},
					dataType:"json",
					success : function(data){
						for(var i = 0; i < data.length; i++) {
							var title = data[i].con_Title;
							if(title == null){
								title = "";
							}
							var content = data[i].con_Content;
							if(content.length < 5){
								if(content == title){
									title = "";
								}
							}
							if(content.length > 5){
								subContent = content.substr(0,4);
								if(subContent == title){
									title = "";
								}
							}
							
							
							if(data[i].con_Mno == mNO){
								if(data[i].con_Img_ReName != null){
									chating += "<div style='width: 100%; height: auto; min-height: 80px; margin-bottom: 15px; overflow: hidden;'>"
									chating += "<img src='/brocoli/resources/brandLogo/"+data[i].blist.b_Logo_ReName+"' style='width: 35px; height: 35px; border-radius: 50%!important; float: right; margin-left: 3px; margin-right: 3px;' >"
									chating += "<div style='float: right; width: calc( 100% - 42px );'>"
									chating += "<div style='margin-left: 5px; margin-right: 5px; width: 100%; height: 25px;'>"
									chating += "<span style='margin: 1px; margin-left:8px; margin-right:10px; float: right;'><strong>"+data[i].con_Writer+"</strong></span>"
									chating += "</div>"	
									chating += "<div style='width: 100%; height: 160px;'>"
									chating += "<img src='/brocoli/resources/contact-Img/"+data[i].con_Img_ReName+"' class='img-fluid mr-2' style='width: auto; height: 150px; float: right;'>"
									chating += "</div>"
									chating += "<div style='width: 100%; height:auto; padding: 0;'>"						
									chating += "<div style='background-color: #fff; border-radius: 5px; padding: 8px; box-shadow: 5px 5px 10px -5px black; height: auto; width: auto; max-width: 80%; min-height: 15px; margin-left: 5px; margin-right: 5px; float: right;'>"						
									chating += ""+title+""+content+""							
									chating += "</div>"						
									chating += "</div>"
									if(data[i].con_View_Check == 'Y'){
										chating += "<div style='float: right; margin: 5px;'>"+data[i].con_Date+" 읽음</div>"						
									}else{
										chating += "<div style='float: right; margin: 5px;'>"+data[i].con_Date+" 읽지않음</div>"
									}
									chating += "</div>"						
									chating += "</div>"	
								}
								if(data[i].con_Img_ReName == null){
									chating += "<div style='width: 100%; height: auto; min-height: 80px; margin-bottom: 15px; overflow: hidden;'>"
										chating += "<img src='/brocoli/resources/brandLogo/"+data[i].blist.b_Logo_ReName+"' style='width: 35px; height: 35px; border-radius: 50%!important; float: right; margin-left: 3px; margin-right: 3px;' >"
										chating += "<div style='float: right; width: calc( 100% - 42px );'>"
										chating += "<div style='margin-left: 5px; margin-right: 5px; width: 100%; height: 25px;'>"
										chating += "<span style='margin: 1px; margin-left:8px; margin-right:10px; float: right;'><strong>"+data[i].con_Writer+"</strong></span>"
										chating += "</div>"	
										chating += "<div style='width: 100%; height:auto; padding: 0;'>"						
										chating += "<div style='background-color: #fff; border-radius: 5px; padding: 8px; box-shadow: 5px 5px 10px -5px black; height: auto; width: auto; max-width: 80%; min-height: 15px; margin-left: 5px; margin-right: 5px; float: right;'>"						
										chating += ""+title+""+content+""							
										chating += "</div>"						
										chating += "</div>"
										if(data[i].con_View_Check == 'Y'){
											chating += "<div style='float: right; margin: 5px;'>"+data[i].con_Date+" 읽음</div>"						
										}else{
											chating += "<div style='float: right; margin: 5px;'>"+data[i].con_Date+" 읽지않음</div>"
										}
										chating += "</div>"						
										chating += "</div>"		
								}
							}
							if(data[i].con_Mno != mNO){
								if(data[i].con_Img_ReName != null){
									chating += "<div style='width: 100%; height: auto; min-height: 80px; margin-bottom: 15px; overflow: hidden;'>"                                                                                                                                                   
									chating += "<img src='/brocoli/resources/brandLogo/"+data[i].blist.b_Logo_ReName+"' style='width: 35px; height: 35px; border-radius: 50%!important; float: left; margin-left: 3px; margin-right: 3px;' >"                                                    
									chating += "<div style='float: left; width: calc( 100% - 42px );'>"                                                                                                                                                                                             
									chating += "<div style='margin-left: 5px; margin-right: 5px; width: 100%; height: 25px;'>"                                                                                                                                                                       
									chating += "<span style='margin: 1px; margin-left:8px; margin-right:10px; float: left;'><strong>"+data[i].con_Writer+"</strong></span>"                                                                                                                                        
									chating += "</div>"	
									chating += "<div style='width: 100%; height: 160px;'>"
									chating += "<img src='/brocoli/resources/contact-Img/"+data[i].con_Img_ReName+"' class='img-fluid mr-2' style='width: auto; height: 150px; float: left;'>"
									chating += "</div>"
									chating += "<div style='width: 100%; height:auto; padding: 0;'>"						                                                                                                                                                                         
									chating += "<div style='background-color: #fff; border-radius: 5px; padding: 8px; box-shadow: 5px 5px 10px -5px black; height: auto; width: auto; max-width: 80%; min-height: 15px; margin-left: 5px; margin-right: 5px; float: left;'>"						 
									chating += ""+title+""+content+""							                                                                                                                                                                                                                             
									chating += "</div>"						                                                                                                                                                                                                                         
									chating += "</div>"						                                                                                                                                                                                                                         
									if(data[i].con_View_Check == 'Y'){
										chating += "<div style='float: left; margin: 5px;'>"+data[i].con_Date+"<span id='viewCheack"+data[i].con_NO+"'> 읽음</span></div>"						
									}else{
										chating += "<div style='float: left; margin: 5px;'>"+data[i].con_Date+"<span id='viewCheack"+data[i].con_NO+"'> 읽지않음</span></div>"
										updateViewCheck(data[i].con_NO);
									}			
									chating += "</div>"						                                                                                                                                                                                                                         
									chating += "</div>"
								}
								if(data[i].con_Img_ReName == null){
									chating += "<div style='width: 100%; height: auto; min-height: 80px; margin-bottom: 15px; overflow: hidden;'>"                                                                                                                                                   
										chating += "<img src='/brocoli/resources/brandLogo/"+data[i].blist.b_Logo_ReName+"' style='width: 35px; height: 35px; border-radius: 50%!important; float: left; margin-left: 3px; margin-right: 3px;' >"                                                    
										chating += "<div style='float: left; width: calc( 100% - 42px );'>"                                                                                                                                                                                             
										chating += "<div style='margin-left: 5px; margin-right: 5px; width: 100%; height: 25px;'>"                                                                                                                                                                       
										chating += "<span style='margin: 1px; margin-left:8px; margin-right:10px; float: left;'><strong>"+data[i].con_Writer+"</strong></span>"                                                                                                                                        
										chating += "</div>"	
										chating += "<div style='width: 100%; height:auto; padding: 0;'>"						                                                                                                                                                                         
										chating += "<div style='background-color: #fff; border-radius: 5px; padding: 8px; box-shadow: 5px 5px 10px -5px black; height: auto; width: auto; max-width: 80%; min-height: 15px; margin-left: 5px; margin-right: 5px; float: left;'>"						 
										chating += ""+title+""+content+""						                                                                                                                                                                                                                             
										chating += "</div>"						                                                                                                                                                                                                                         
										chating += "</div>"						                                                                                                                                                                                                                         
										if(data[i].con_View_Check == 'Y'){
											chating += "<div style='float: left; margin: 5px;'>"+data[i].con_Date+"<span id='viewCheack"+data[i].con_NO+"'> 읽음</span></div>"						
										}else{
											chating += "<div style='float: left; margin: 5px;'>"+data[i].con_Date+"<span id='viewCheack"+data[i].con_NO+"'> 읽지않음</span></div>"
											updateViewCheck(data[i].con_NO);
										}					                                                                                                                                                             
										chating += "</div>"						                                                                                                                                                                                                                         
										chating += "</div>"						                                                                                                                                                                                                                         
								}
							}
							if(data[i].con_Img_ReName != null){
								chatImg += "<img src='/brocoli/resources/contact-Img/"+data[i].con_Img_ReName+"' class='img-fluid mr-3' style='width: 85px; height: 100xp; margin-bottom: 5px;'>"
							}
						}
						
						$('#chatingArea').html(chating);
						$('#chatImgArea').html(chatImg);
						$("#chatingArea").scrollTop($("#chatingArea").scrollValue);	//로드후 스크롤 기존위치로
					},error : function(jqxhr, textStatus, errorThrown) {
						console.log("매니저컨택트 list Select ajax 처리실패");
	
						//에러로그
						console.log(jqxhr);
						console.log(textStatus);
						console.log(errorThrown);
					}
				})
				
			}, 3600000);
		});
	
	$( document ).ready(function() {
		var bNO = "${loginUser.brand_NO}";
		var mNO = "${loginUser.mNO}"; 
		var chating = "";
		var chatImg = "";
		$.ajax({
			url : "contactListSelect.ow",
			data : {con_Bno:bNO,con_Mno:mNO},
			dataType:"json",
			success : function(data){
				for(var i = 0; i < data.length; i++) {
					var title = data[i].con_Title;
					var content = data[i].con_Content;
					if(title == null){
						title = "";
					}
					if(content.length < 5){
						if(content == title){
							title = "";
						}
					}
					if(content.length > 5){
						subContent = content.substr(0,4);
						if(subContent == title){
							title = "";
						}
					}
					
					if(data[i].con_Mno == mNO){
						if(data[i].con_Img_ReName != null){
							chating += "<div style='width: 100%; height: auto; min-height: 80px; margin-bottom: 15px; overflow: hidden;'>"
							chating += "<img src='/brocoli/resources/brandLogo/"+data[i].blist.b_Logo_ReName+"' style='width: 35px; height: 35px; border-radius: 50%!important; float: right; margin-left: 3px; margin-right: 3px;' >"
							chating += "<div style='float: right; width: calc( 100% - 42px );'>"
							chating += "<div style='margin-left: 5px; margin-right: 5px; width: 100%; height: 25px;'>"
							chating += "<span style='margin: 1px; margin-left:8px; margin-right:10px; float: right;'><strong>"+data[i].con_Writer+"</strong></span>"
							chating += "</div>"	
							chating += "<div style='width: 100%; height: 160px;'>"
							chating += "<img src='/brocoli/resources/contact-Img/"+data[i].con_Img_ReName+"' class='img-fluid mr-2' style='width: auto; height: 150px; float: right;'>"
							chating += "</div>"
							chating += "<div style='width: 100%; height:auto; padding: 0;'>"						
							chating += "<div style='background-color: #fff; border-radius: 5px; padding: 8px; box-shadow: 5px 5px 10px -5px black; height: auto; width: auto; max-width: 80%; min-height: 15px; margin-left: 5px; margin-right: 5px; float: right;'>"						
							chating += ""+title+""+content+""						
							chating += "</div>"						
							chating += "</div>"
							if(data[i].con_View_Check == 'Y'){
								chating += "<div style='float: right; margin: 5px;'>"+data[i].con_Date+" 읽음</div>"						
							}else{
								chating += "<div style='float: right; margin: 5px;'>"+data[i].con_Date+" 읽지않음</div>"
							}
							chating += "</div>"						
							chating += "</div>"	
						}
						if(data[i].con_Img_ReName == null){
							chating += "<div style='width: 100%; height: auto; min-height: 80px; margin-bottom: 15px; overflow: hidden;'>"
								chating += "<img src='/brocoli/resources/brandLogo/"+data[i].blist.b_Logo_ReName+"' style='width: 35px; height: 35px; border-radius: 50%!important; float: right; margin-left: 3px; margin-right: 3px;' >"
								chating += "<div style='float: right; width: calc( 100% - 42px );'>"
								chating += "<div style='margin-left: 5px; margin-right: 5px; width: 100%; height: 25px;'>"
								chating += "<span style='margin: 1px; margin-left:8px; margin-right:10px; float: right;'><strong>"+data[i].con_Writer+"</strong></span>"
								chating += "</div>"	
								chating += "<div style='width: 100%; height:auto; padding: 0;'>"						
								chating += "<div style='background-color: #fff; border-radius: 5px; padding: 8px; box-shadow: 5px 5px 10px -5px black; height: auto; width: auto; max-width: 80%; min-height: 15px; margin-left: 5px; margin-right: 5px; float: right;'>"						
								chating += ""+title+""+content+""							
								chating += "</div>"						
								chating += "</div>"
								if(data[i].con_View_Check == 'Y'){
									chating += "<div style='float: right; margin: 5px;'>"+data[i].con_Date+" 읽음</div>"						
								}else{
									chating += "<div style='float: right; margin: 5px;'>"+data[i].con_Date+" 읽지않음</div>"
								}
								chating += "</div>"						
								chating += "</div>"		
						}
					}
					if(data[i].con_Mno != mNO){
						if(data[i].con_Img_ReName != null){
							chating += "<div style='width: 100%; height: auto; min-height: 80px; margin-bottom: 15px; overflow: hidden;'>"                                                                                                                                                   
							chating += "<img src='/brocoli/resources/brandLogo/"+data[i].blist.b_Logo_ReName+"' style='width: 35px; height: 35px; border-radius: 50%!important; float: left; margin-left: 3px; margin-right: 3px;' >"                                                    
							chating += "<div style='float: left; width: calc( 100% - 42px );'>"                                                                                                                                                                                             
							chating += "<div style='margin-left: 5px; margin-right: 5px; width: 100%; height: 25px;'>"                                                                                                                                                                       
							chating += "<span style='margin: 1px; margin-left:8px; margin-right:10px; float: left;'><strong>"+data[i].con_Writer+"</strong></span>"                                                                                                                                        
							chating += "</div>"	
							chating += "<div style='width: 100%; height: 160px;'>"
							chating += "<img src='/brocoli/resources/contact-Img/"+data[i].con_Img_ReName+"' class='img-fluid mr-2' style='width: auto; height: 150px; float: left;'>"
							chating += "</div>"
							chating += "<div style='width: 100%; height:auto; padding: 0;'>"						                                                                                                                                                                         
							chating += "<div style='background-color: #fff; border-radius: 5px; padding: 8px; box-shadow: 5px 5px 10px -5px black; height: auto; width: auto; max-width: 80%; min-height: 15px; margin-left: 5px; margin-right: 5px; float: left;'>"						 
							chating += ""+title+""+content+""							                                                                                                                                                                                                                             
							chating += "</div>"						                                                                                                                                                                                                                         
							chating += "</div>"						                                                                                                                                                                                                                         
							if(data[i].con_View_Check == 'Y'){
								chating += "<div style='float: left; margin: 5px;'>"+data[i].con_Date+" 읽음</div>"						
							}else{
								chating += "<div style='float: left; margin: 5px;'>"+data[i].con_Date+" 읽지않음</div>"
							}					                                                                                                                                                             
							chating += "</div>"						                                                                                                                                                                                                                         
							chating += "</div>"
						}
						if(data[i].con_Img_ReName == null){
							chating += "<div style='width: 100%; height: auto; min-height: 80px; margin-bottom: 15px; overflow: hidden;'>"                                                                                                                                                   
								chating += "<img src='/brocoli/resources/brandLogo/"+data[i].blist.b_Logo_ReName+"' style='width: 35px; height: 35px; border-radius: 50%!important; float: left; margin-left: 3px; margin-right: 3px;' >"                                                    
								chating += "<div style='float: left; width: calc( 100% - 42px );'>"                                                                                                                                                                                             
								chating += "<div style='margin-left: 5px; margin-right: 5px; width: 100%; height: 25px;'>"                                                                                                                                                                       
								chating += "<span style='margin: 1px; margin-left:8px; margin-right:10px; float: left;'><strong>"+data[i].con_Writer+"</strong></span>"                                                                                                                                        
								chating += "</div>"	
								chating += "<div style='width: 100%; height:auto; padding: 0;'>"						                                                                                                                                                                         
								chating += "<div style='background-color: #fff; border-radius: 5px; padding: 8px; box-shadow: 5px 5px 10px -5px black; height: auto; width: auto; max-width: 80%; min-height: 15px; margin-left: 5px; margin-right: 5px; float: left;'>"						 
								chating += ""+title+""+content+""						                                                                                                                                                                                                                             
								chating += "</div>"						                                                                                                                                                                                                                         
								chating += "</div>"						                                                                                                                                                                                                                         
								if(data[i].con_View_Check == 'Y'){
									chating += "<div style='float: left; margin: 5px;'>"+data[i].con_Date+" 읽음</div>"						
								}else{
									chating += "<div style='float: left; margin: 5px;'>"+data[i].con_Date+" 읽지않음</div>"
								}					                                                                                                                                                             
								chating += "</div>"						                                                                                                                                                                                                                         
								chating += "</div>"						                                                                                                                                                                                                                         
						}
					}
					if(data[i].con_Img_ReName != null){
						chatImg += "<img src='/brocoli/resources/contact-Img/"+data[i].con_Img_ReName+"' class='img-fluid mr-3' style='width: 85px; height: 100xp; margin-bottom: 5px;'>"
					}
				}
				
				$('#chatingArea').html(chating);
				$('#chatImgArea').html(chatImg);
				
				$("#chatingArea").scrollTop($('#chatingArea').height()*2);	//로드후 스크롤 제일 아래로
			},error : function(jqxhr, textStatus, errorThrown) {
				console.log("매니저컨택트 list Select ajax 처리실패");

				//에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
		})
	});
	
	
	function updateViewCheck(con_NO) {

		$.ajax({
			url : "contactViewCheckUpdate.ow",
			type: "post",
			data : {con_NO:con_NO},
			dataType : "json",
			success : function(data){
				console.log("메시지 읽음확인.")
				$('#viewCheack'+con_NO+'').text(" 읽음");
			},error : function(jqxhr, textStatus, errorThrown) {
				console.log("매니저컨택트 list Select ajax 처리실패");

				//에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
		})
	};
	
	</script>
	<!--    작성자 : 박주완
	    	작성일 : 2020-04-28
	    	내용: 컨택트 데이터 중에 대화에 참여중인 멤버 select -->	
	<script>
		$( document ).ready(function(){
			var bNO = "${loginUser.brand_NO}";
			var UserList = ""; 
			$.ajax({
				url : "contactUserSelect.ow",
				data : {brand_NO:bNO},
				dataType:"json",
				success : function(data){
					if(data != null){
						for(var i = 0; i < data.length; i++) {
							if(data[i].mGrant == 1){
								UserList += "<div style='margin-bottom: 5px;'>"
								UserList += "<img src='/brocoli/resources/brandLogo/"+data[i].blist.b_Logo_ReName+"' style='width: 25px; height: 25px; border-radius: 50%!important; margin-right: 5px;'>"
								UserList += "<label >"+data[i].mName+" - 매니저</label>"
								UserList += "</div>"
								$('#managerLogo').attr("src","/brocoli/resources/brandLogo/"+data[i].blist.b_Logo_ReName+"");
								$('#managerName').text(""+data[i].mName+"");
							}
							if(data[i].mGrant == 2){
								UserList += "<div style='margin-bottom: 5px;'>"
								UserList += "<img src='/brocoli/resources/brandLogo/"+data[i].blist.b_Logo_ReName+"' style='width: 25px; height: 25px; border-radius: 50%!important; margin-right: 5px;'>"
								UserList += "<label >"+data[i].mName+" - "+data[i].brand+"</label>"
								UserList += "</div>"
							}
						}
						$('#userListArea').html(UserList);
						$('#loginUserCount').text("참여자 - "+data.length+" 명");
						
					}
				},error : function(jqxhr, textStatus, errorThrown) {
					console.log("매니저컨택트 채팅참여자 Select ajax 처리실패");

					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			})
		});
	
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