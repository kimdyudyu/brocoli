<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.brocoli.member.model.vo.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>QnA디테일</title>
<meta charset="UTF-8">

 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
<%@ include file="All-Cart.jsp" %>
	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %>

<style>
	#all{
		/* border:1px solid red; */
		margin: auto;
		width: 70%;
		height: 170%;  	
  		}
  		
  	.tableArea {
	    border:1px solid white;
	    width:650px;
	    height:350px;
	    margin-left:auto;
	    margin-right:auto;
   		}
</style>
</head>
<body>
<div id="all">
<br>
	<h2 style=" color: #22; padding:4%; text-align: center; font-weight: bold;">QnA ${ q.q_No }번 글 세부보기</h2><Br>
	
	<table align="center" id="tableArea" class="table" enctype="multipart/form-data">
			<tr>
				<td width="100">글 번 호</td>
				<td>${ q.q_No }</td>
			</tr>
			<tr>
				<td>구 분</td>
				<td>${ q.q_Kind }</td>
			</tr>
			<tr>
				<td>제 목</td>
				<td>${ q.q_Title }</td>
			</tr>
			<tr>
				<td>작 성 자</td>
				<td>${ q.q_Writer }</td>
			</tr>
			<tr>
				<td>작 성 일</td>
				<td>${ q.q_Date }</td>
			</tr>
			<tr>
				<td>답변여부</td>
				<%-- <td><input type="hidden" value="${ q.q_View_Check }"></td>  --%>
				
					<c:if test="${ q.q_View_Check == 'Y' }">
						<td>읽음</td>
					</c:if>
					
					<c:if test="${ q.q_View_Check == 'N' }">
						<td> 안읽음</td>
					</c:if>		
			</tr>
			
			<tr>
				<td>첨부 파일</td>
				
				<td>				
				<div id="titleImgArea" style=" float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
                	<img src="/brocoli/resources/QnA-Img/${q.q_Img1_ReName}" alt="user" class="rounded" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
              	</div>
              	
                <div id="contentImgArea1"  style="float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
                	<img src="/brocoli/resources/QnA-Img/${q.q_Img2_ReName}" alt="user" class="rounded"style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
             	</div>
				</td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td><div style="height: 250px;">${ q.q_Content }</div></td>
			</tr>				
		</table>
		<hr>
		<!-- 댓글 -->
		<div style="display: flex;">
		<c:if test="${ !empty sessionScope.loginUser && loginUser.mGrant eq 1}">
				<textarea id="rContent" class="form-control" rows="2" cols="80" style="resize: none; width: 900px; 
    			margin-left: 110px;"></textarea>
				&nbsp;&nbsp;&nbsp;			
				<button class="btn btn-primary" style="background: #222; width: 100px; border: 1px solid #222;" id="rSubmit">등록</button>
		</c:if>
		</div>
		<br>

		<!-- <div style="display: flex; height: 150px;"> -->
			<table align="center" width="1000" id="rtb" class="table">
				<thead>
					<tr>
						<td colspan="3"><b id="rCount"></b></td>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
			<br>
		<!-- </div> -->

		<div align="center">
		
		<c:url var="QnAlist" value="QnAlist.mn">
				<c:param name="currentPage" value="${ currentPage }"/>
			</c:url>
			<c:url var="qUpdateView" value="qUpdateView.mn">
				<c:param name="q_No" value="${ q.q_No }"/>
			</c:url>
			<c:url var="qDelete" value="qDelete.mn">
				<c:param name="q_No" value="${ q.q_No }"/>
		</c:url>
				
			<button class="btn btn-primary" style="background: #222; width: 200px; border: 1px solid #222;"
			onclick="location.href='QnAlist.mn';">확인</button>
		<c:if test="${ loginUser.mId eq q.q_MID }">
			<button class="btn btn-primary" style="background: #222; width: 200px; border: 1px solid #222;"
				onclick="location.href='${ qUpdateView }';">수정</button>
				
			<button class="btn btn-primary" style="background: #222; width: 200px; border: 1px solid #222;"
				onclick="location.href='${ qDelete }';">삭제</button>
		</c:if>	
		</div>
		<br><br>
</div>

<%@ include file="All-Footer.jsp" %>
	<script>
	$(function(){
		getReplyList();
		
		// setInterval
		setInterval(function(){
			getReplyList();
		},3000);
		
		// 댓글등록
		$("#rSubmit").on("click",function(){
				var qr_Comment = $("#rContent").val();
				var qr_Qno = ${q.q_No};
				var qr_Mname = "<%=((Member)session.getAttribute("loginUser")).getmName()%>";
				
				$.ajax({
						url:"addReply.mn",
						data:{qr_Comment:qr_Comment,qr_Qno:qr_Qno,qr_Mname:qr_Mname},
						type:"get",
						success:function(data){
								if(data == "success"){
									  getReplyList(); // 등록 성공시 다시 댓글 리스틀 불러오기
									  
									  $("#rContent").val("");
								}
						},error:function(){
							console.log("등록 실패");
						}
				});
		});
});

		function getReplyList() {
			var bId = ${q.q_No};

			$.ajax({
						url : "rList.mn",
						data : {bId : bId},
						dataType : "json",
						success : function(data) {
							console.log(data);
							$tableBody = $("#rtb tbody");
							$tableBody.html("");

							var $tr;
							var $qr_Mname;
							var $qr_Comment;
							var $qr_Date;

							$("#rCount").text("댓글(" + data.length + ")");

							if (data.length > 0) {
								for ( var i in data) {
									$tr = $("<tr>");
									$qr_Mname = $("<td width='100'>").text(data[i].qr_Mname);
									$qr_Comment = $("<td>").text(data[i].qr_Comment);
									$qr_Date = $("<td width='100'>").text(data[i].qr_Date);

									$tr.append($qr_Mname);
									$tr.append($qr_Comment);
									$tr.append($qr_Date);
									$tableBody.append($tr);
								}
							} else {
								$tr = $("<tr>");
								$rContent = $("<td colspan='3'>").text(
										"등록된 댓글이 없습니다.");

								$tr.append($rContent);
								$tableBody.append($tr);
							}
						}
					});
		}
	</script>
	<!--===============================================================================================-->	
	<script src="/brocoli/resources/mainResources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/bootstrap/js/popper.js"></script>
	<script src="/brocoli/resources/mainResources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/daterangepicker/moment.min.js"></script>
	<script src="/brocoli/resources/mainResources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/slick/slick.min.js"></script>
	<script src="/brocoli/resources/mainResources/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/sweetalert/sweetalert.min.js"></script>
<!-- 	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').jsp();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').jsp();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').jsp();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	</script> -->
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/js/main.js"></script>
</body>
</html>