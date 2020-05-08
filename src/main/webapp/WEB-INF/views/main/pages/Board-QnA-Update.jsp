<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>QNA 수정</title>
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
		height: 140%;  	
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
	<h2 style="color: #22; padding:4%; text-align: center; font-weight: bold;">공지사항 ${ q.q_No }번 글 수정</h2><Br>
    <form action="qUpdate.mn" method="post" enctype="multipart/form-data">
    
		<input type="hidden" name="q_No" value="${ q.q_No }">
		<input type="hidden" name="q_Img1" value="${ q.q_Img1 }">
		<input type="hidden" name="q_Img1_ReName" value="${ q.q_Img1_ReName }"> 
		
	<table align="center" id="tableArea" class="table">
			<tr>
				<td width="100">글 번 호</td>
				<td>${ q.q_No }</td>
			</tr>
			
			<tr>
				<td>구 분</td>
					<td>
					<select name="q_Kind">
						<option value="배송">배송</option>
						<option value="사이즈">사이즈</option>
						<option value="기타문의">기타문의</option>
					</select>
				</td>
			</tr>

			<tr>
				<td>제  목</td>
				<td><input type="text" class="form-control" id="qtitle" name="q_Title" value="${ q.q_Title }"></td>
			</tr>
			<tr>
				<td>작 성 자</td>
				<td><input type="text" readonly name="q_Writer" value="${ loginUser.mName }"></td>
				<td><input type="hidden" readonly name="q_Mno" value="${ loginUser.mNO }"></td>
			</tr>
			<tr>
				<td>작 성 일</td>
				<td>${ q.q_Date }</td>
			</tr>
			<tr>
				<td>첨부 파일</td>
				<td>
					<div class="productImgArea" id="productImgArea">
	                	<input type="file" id="pf_Img1" name="reloadFile1" accept="resources/buploadFiles/" onchange="loadImg(this, 1);" />
	                    <input type="file" id="pf_Img2" name="reloadFile2" accept="resources/buploadFiles/" onchange="loadImg(this, 2);" />
					</div>
					
					<div id="titleImgArea" style=" float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                	<c:if test="${ !empty q.q_Img1 }">
	                	<img src="/brocoli/resources/QnA-Img/${q.q_Img1_ReName}" alt="user" class="rounded" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
	                	</c:if>
	              	</div>
	           
	                <div id="contentImgArea1"  style="float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                	<c:if test="${ !empty q.q_Img2 }">
	                	<img src="/brocoli/resources/QnA-Img/${q.q_Img2_ReName}" alt="user" class="rounded" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
	                	</c:if>
	             	</div>
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea class="form-control" rows="5" id="comment"
					 style="height: 250px; resize: none" name="q_Content">${ q.q_Content }</textarea></td>
			</tr>				
		</table>


		<div align="center">
			<input type="submit" class="btn btn-primary" style="background: #222; width: 200px; border: 1px solid #222;"
			value="수정 완료">
		</div>
	</form>
		</div>
<%@ include file="All-Footer.jsp" %>

<script>

$(function(){
  $('#productImgArea').hide();
  
     
  $('#titleImgArea').click(() => {
     $('#pf_Img1').click();
  });
     
  $('#contentImgArea1').click(() => {
     $('#pf_Img2').click();
  });
});

function loadImg(value, num){
  
  if(value.files && value.files[0])  {
     
     var reader = new FileReader();
     
     reader.onload = function(e){
        
        switch(num) {
        case 1 : $('#titleImgArea img').attr('src', e.target.result);
        	console.log(e.target.result);
           break;
        case 2 : $('#contentImgArea1 img').attr('src', e.target.result);
           break;
           
        }
     }
     reader.readAsDataURL(value.files[0]);
  }
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

</body>
</html>