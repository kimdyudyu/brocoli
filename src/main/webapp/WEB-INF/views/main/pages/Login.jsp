<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
<title>로그인 창</title>

		<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-Cart.jsp" %>


</head>
<body>
	<!-- 수정자 : 박주완
		수정일 : 2020-03-30
		내용 : CSS수정 -->
	<div id="login" class="container" style="text-align: center; width: 100%; height: 80%; padding-top: 5%;">
	<!--  <form> -->

		<div id="logo" class="flex-w flex-tr" style="margin-bottom: 55px;">
			<p style="font-size: 55px; width: 100%; margin: 0 auto; color: #222; height: 60px;"><strong>B R O C O L I</strong></p>
		</div>
		<div style="margin-bottom: 25px;">
			<input type="text" class="form-control form-control"
				style="border-radius: 5px; width: 320px; margin: 0 auto; margin-bottom: 10px; height: 50px;"
				placeholder="아이디 " id="mId" name="mId" required>
			<input type="password"
				class="form-control form-control"
				style="border-radius: 5px; width: 320px; margin: 0 auto; height: 50px;"
				placeholder="비밀번호 " id="pwd" name="pwd" required>
		</div>		
		<div>
			<button type="button" class="btn btn-primary btn-lg btn-block" onclick="Login();"
				style="background: #222; width: 320px; border: 1px solid #222; margin: 0 auto;">로그인</button>
			<br>
			<c:url var="JoinView" value="joinView.mn"/>
			<c:url var="FindId" value="findId.mn"/>
			<c:url var="FindPwd" value="findPwd.mn"/>
			<a href="${JoinView }">회원가입</a> &nbsp;&nbsp; 
			<a href="${FindId }">아이디 찾기</a>&nbsp;&nbsp; 
			<a href="${FindPwd }">비밀번호 찾기</a>
		</div>

	<!-- </form> -->
	</div>
	<%@ include file="All-Footer.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %>

	<script>
	function Login(){
		var mId = $("#mId").val();
		var pwd = $("#pwd").val();
		
		$.ajax({
	 		url:"login",
	 		data:{mId : mId,pwd:pwd},
	 		type:"post",
	 		success:function(data){
	 			console.log("데이타:::"+data);
	 			if(data == "ok"){
	 				
	 				document.location.href="index.jsp";
	 			}else{
	 				
	 				$("#mId").focus();
	 				alert("아이디와 비밀번호를 다시 한 번 확인해주세요.");
	 			}
	 			
	 		},error:function(jqxhr, textStatus, errorThrown){
				console.log("ajax 처리실패");
				
				// 에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
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
   <script>
      $('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
         e.preventDefault();
      });

      $('.js-addwish-b2').each(function(){
         var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-b2');
            $(this).off('click');
         });
      });

      $('.js-addwish-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-detail');
            $(this).off('click');
         });
      });

      /*---------------------------------------------*/

      $('.js-addcart-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to cart !", "success");
         });
      });
   
   </script>
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