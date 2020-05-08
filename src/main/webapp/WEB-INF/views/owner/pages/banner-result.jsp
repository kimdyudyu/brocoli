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
    <%@ page import="java.util.Date" %>
	<%@ page import="java.text.SimpleDateFormat" %>

    
    <%@ include file="header.jsp" %>
	

    <title>오너 : 광고결과</title>
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
                            <h2 class="pageheader-title">결과확인</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">광고</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">결과확인</a></li>
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
                                <h5 class="mb-0">결과확인</h5>
                                <p> - 낙찰시 담당 매니저를 통해 배너 이미지 업로드 부탁드립니다.<br>
                                - 낙찰된 광고는 매월 1일~말일 까지 개재됩니다. <br>
                                - Print, Excel, CSV, PDF 버튼 클릭시 저장됩니다.</p>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-striped table-bordered second" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>배너번호</th>
                                            	<th>신청일시</th>
                                                <th>전월 낙찰가</th>
                                                <th>입찰금액</th>
                                                <th>경매결과</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           	<tr>
                                                <td>NO.1
                                                </td>
                                                <td>
                                                	<span id="banner1_date"></span>
                                                </td>
                                                <td>
                                                	<span id="banner1_lastPrice"></span> 원
                                                </td>
                                                <td>
                                                	<input id="banner1_Price" type="text" maxlength="11" style="border: none; background: none;">
		                                            <input id="ac_No1" type="text" style="display: none;" readonly="readonly">
                                                </td>
                                                <td>
                                                	<div id="banner1_befor" style="display: none;"><span class="badge-dot badge-primary mr-1"></span>결과대기중</div>
                                                	<div id="banner1_Ok" style="display: none;"><span class="badge-dot badge-success mr-1"></span>낙찰</div>
                                                	<div id="banner1_fail" style="display: none;"><span class="badge-dot badge-danger mr-1"></span>패찰</div>
                                                	<div id="banner1_No"><span class="badge-dot badge-brand"></span>미입찰</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>NO.2
                                                </td>
                                                <td>
                                                	<span id="banner2_date"></span>
                                                </td>
                                                <td>
                                                	<span id="banner2_lastPrice"></span> 원
                                                </td>
                                                <td>
                                                	<input id="banner2_Price" type="text" maxlength="11" style="border: none; background: none;">
		                                            <input id="ac_No2" type="text" style="display: none;" readonly="readonly">
                                                </td>
                                                <td>
                                                	<div id="banner2_befor" style="display: none;"><span class="badge-dot badge-primary mr-1"></span>결과대기중</div>
                                                	<div id="banner2_Ok" style="display: none;"><span class="badge-dot badge-success mr-1"></span>낙찰</div>
                                                	<div id="banner2_fail" style="display: none;"><span class="badge-dot badge-danger mr-1"></span>패찰</div>
                                                	<div id="banner2_No"><span class="badge-dot badge-brand"></span>미입찰</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>NO.3
                                                </td>
                                                <td>
                                                	<span id="banner3_date"></span>
                                                </td>
                                                <td>
                                                	<span id="banner3_lastPrice"></span> 원
                                                </td>
                                                <td>
                                                	<input id="banner3_Price" type="text" maxlength="11" style="border: none; background: none;">
		                                            <input id="ac_No3" type="text" style="display: none;" readonly="readonly">
                                                </td>
                                                <td>
                                                	<div id="banner3_befor" style="display: none;"><span class="badge-dot badge-primary mr-1"></span>결과대기중</div>
                                                	<div id="banner3_Ok" style="display: none;"><span class="badge-dot badge-success mr-1"></span>낙찰</div>
                                                	<div id="banner3_fail" style="display: none;"><span class="badge-dot badge-danger mr-1"></span>패찰</div>
                                                	<div id="banner3_No"><span class="badge-dot badge-brand"></span>미입찰</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>NO.4
                                                </td>
                                                <td>
                                                	<span id="banner4_date"></span>
                                                </td>
                                                <td>
                                                	<span id="banner4_lastPrice"></span> 원
                                                </td>
                                                <td>
                                                	<input id="banner4_Price" type="text" maxlength="11" style="border: none; background: none;">
		                                            <input id="ac_No4" type="text" style="display: none;" readonly="readonly">
                                                </td>
                                                <td>
                                                	<div id="banner4_befor" style="display: none;"><span class="badge-dot badge-primary mr-1"></span>결과대기중</div>
                                                	<div id="banner4_Ok" style="display: none;"><span class="badge-dot badge-success mr-1"></span>낙찰</div>
                                                	<div id="banner4_fail" style="display: none;"><span class="badge-dot badge-danger mr-1"></span>패찰</div>
                                                	<div id="banner4_No"><span class="badge-dot badge-brand"></span>미입찰</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>NO.5
                                                </td>
                                                <td>
                                                	<span id="banner5_date"></span>
                                                </td>
                                                <td>
                                                	<span id="banner5_lastPrice"></span> 원
                                                </td>
                                                <td>
                                                	<input id="banner5_Price" type="text" maxlength="11" style="border: none; background: none;">
		                                            <input id="ac_No5" type="text" style="display: none;" readonly="readonly">
                                                </td>
                                                <td>
                                                	<div id="banner5_befor" style="display: none;"><span class="badge-dot badge-primary mr-1"></span>결과대기중</div>
                                                	<div id="banner5_Ok" style="display: none;"><span class="badge-dot badge-success mr-1"></span>낙찰</div>
                                                	<div id="banner5_fail" style="display: none;"><span class="badge-dot badge-danger mr-1"></span>패찰</div>
                                                	<div id="banner5_No"><span class="badge-dot badge-brand"></span>미입찰</div>
                                                </td>
                                            </tr>
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>배너번호</th>
                                            	<th>신청일시</th>
                                                <th>전월 낙찰가</th>
                                                <th>입찰금액</th>
                                                <th>경매결과</th>
                                            </tr>
                                        </tfoot>
                                    </table>
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
								$('#banner1_date').text(data.list[j].ac_Date);
								if(data.list[j].ac_Status != null){
									if(data.list[j].ac_Status == 1){
										$('#banner1_befor').css("display", "block");
										$('#banner1_Ok').css("display", "none");
										$('#banner1_fail').css("display", "none"); 
										$('#banner1_No').css("display", "none");  
									}
									if(data.list[j].ac_Status == 2){
										$('#banner1_Ok').css("display", "none");
										$('#banner1_fail').css("display", "block"); 
										$('#banner1_No').css("display", "none");  
									}
									if(data.list[j].ac_Status == 3){
										$('#banner1_Ok').css("display", "block");
										$('#banner1_fail').css("display", "none"); 
										$('#banner1_No').css("display", "none");  
									}
								}
							}
							if(data.list[j].ac_Banner_NO == 2){
								var price2 = data.list[j].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner2_Price').val(price2);
								$('#banner2_comment').val(data.list[j].ac_Comment);
								$('#ac_No2').val(data.list[j].ac_No);
								$('#banner2_date').text(data.list[j].ac_Date);
								if(data.list[j].ac_Status != null){
									if(data.list[j].ac_Status == 1){
										$('#banner2_befor').css("display", "block");
										$('#banner2_Ok').css("display", "none");
										$('#banner2_fail').css("display", "none"); 
										$('#banner2_No').css("display", "none");  
									}
									if(data.list[j].ac_Status == 2){
										$('#banner2_Ok').css("display", "none");
										$('#banner2_fail').css("display", "block"); 
										$('#banner2_No').css("display", "none");  
									}
									if(data.list[j].ac_Status == 3){
										$('#banner2_Ok').css("display", "block");
										$('#banner2_fail').css("display", "none"); 
										$('#banner2_No').css("display", "none");  
									}
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
								$('#banner3_date').text(data.list[j].ac_Date);
								if(data.list[j].ac_Status != null){
									if(data.list[j].ac_Status == 1){
										$('#banner3_befor').css("display", "block");
										$('#banner3_Ok').css("display", "none");
										$('#banner3_fail').css("display", "none"); 
										$('#banner3_No').css("display", "none");  
									}
									if(data.list[j].ac_Status == 2){
										$('#banner3_Ok').css("display", "none");
										$('#banner3_fail').css("display", "block"); 
										$('#banner3_No').css("display", "none");  
									}
									if(data.list[j].ac_Status == 3){
										$('#banner3_Ok').css("display", "block");
										$('#banner3_fail').css("display", "none"); 
										$('#banner3_No').css("display", "none");  
									}
								}
							}
							if(data.list[j].ac_Banner_NO == 4){
								var price4 = data.list[j].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner4_Price').val(price4);
								$('#banner4_comment').val(data.list[j].ac_Comment);
								$('#ac_No4').val(data.list[j].ac_No);
								$('#banner4_date').text(data.list[j].ac_Date);
								if(data.list[j].ac_Status != null){
									if(data.list[j].ac_Status == 1){
										$('#banner4_befor').css("display", "block");
										$('#banner4_Ok').css("display", "none");
										$('#banner4_fail').css("display", "none"); 
										$('#banner4_No').css("display", "none");  
									}
									if(data.list[j].ac_Status == 2){
										$('#banner4_Ok').css("display", "none");
										$('#banner4_fail').css("display", "block"); 
										$('#banner4_No').css("display", "none");  
									}
									if(data.list[j].ac_Status == 3){
										$('#banner4_Ok').css("display", "block");
										$('#banner4_fail').css("display", "none"); 
										$('#banner4_No').css("display", "none");  
									}
								}
							}
							if(data.list[j].ac_Banner_NO == 5){
								var price5 = data.list[j].ac_Price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								$('#banner5_Price').val(price5);
								$('#banner5_comment').val(data.list[j].ac_Comment);
								$('#ac_No5').val(data.list[j].ac_No);
								$('#banner5_date').text(data.list[j].ac_Date);
								if(data.list[j].ac_Status != null){
									if(data.list[j].ac_Status == 1){
										$('#banner5_befor').css("display", "block");
										$('#banner5_Ok').css("display", "none");
										$('#banner5_fail').css("display", "none"); 
										$('#banner5_No').css("display", "none");  
									}
									if(data.list[j].ac_Status == 2){
										$('#banner5_Ok').css("display", "none");
										$('#banner5_fail').css("display", "block"); 
										$('#banner5_No').css("display", "none");  
									}
									if(data.list[j].ac_Status == 3){
										$('#banner5_Ok').css("display", "block");
										$('#banner5_fail').css("display", "none"); 
										$('#banner5_No').css("display", "none");  
									}
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