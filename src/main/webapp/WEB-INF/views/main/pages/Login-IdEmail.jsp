<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
<title>아이디 이메일 인증</title>


	<%-- <%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-Cart.jsp" %> --%>
	
</head>
<body>

	<!-- 수정자 : 박주완
		수정일 : 2020-03-30
		내용 : CSS수정 -->
	<div id="login" class="container" style="text-align: center; width: 100%; height: 80%; padding-top: 5%;">

		<div id="logo" class="flex-w flex-tr" style="margin-bottom: 40px;">
			<p style="font-size: 55px; width: 100%; margin: 0 auto; color: #222; height: 60px;"><strong>B R O C O L I</strong></p>
		</div>
		<div style="margin-bottom: 25px;">
			<h2 style="margin-bottom: 25px; color: #222; font-size: 30px;"><strong>이메일 인증하기</strong></h2>
			<input type="text" class="form-control form-control" style="border-radius: 5px; width: 320px; margin: 0 auto; height: 50px;"
				placeholder="인증번호 입력 " id="keymail" name="keymail">
		</div>		
		<div>
			<button class="btn btn-primary btn-lg btn-block" onclick="send();"
				style="background: #222; width: 320px; border: 1px solid #222; margin: 0 auto;">인증 하기</button>
		</div>

	</div>

<%-- <%@ include file="All-Footer.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %> --%>
				
	<script>
	
	
	
	function send(){
		var keymail = $("#keymail").val();

		
		if(keymail == "${keys}"){
			var parent = window.opener;
			 
	       
	 
	        parent.document.getElementById('mailDuplicateCheck3').value = 1;
			alert("인증 완료되었습니다.");
			self.close();
		}else{
			alert("잘못된 인증번호입니다.");
		}
	}
	</script>
<!--===============================================================================================-->   
   <!-- <script src="/brocoli/resources/mainResources/vendor/jquery/jquery-3.2.1.min.js"></script>
===============================================================================================
   <script src="/brocoli/resources/mainResources/vendor/animsition/js/animsition.min.js"></script>
===============================================================================================
   <script src="/brocoli/resources/mainResources/vendor/bootstrap/js/popper.js"></script>
   <script src="/brocoli/resources/mainResources/vendor/bootstrap/js/bootstrap.min.js"></script>
===============================================================================================
   <script src="/brocoli/resources/mainResources/vendor/select2/select2.min.js"></script>
   <script>
      $(".js-select2").each(function(){
         $(this).select2({
            minimumResultsForSearch: 20,
            dropdownParent: $(this).next('.dropDownSelect2')
         });
      })
   </script>
===============================================================================================
   <script src="/brocoli/resources/mainResources/vendor/daterangepicker/moment.min.js"></script>
   <script src="/brocoli/resources/mainResources/vendor/daterangepicker/daterangepicker.js"></script>
===============================================================================================
   <script src="/brocoli/resources/mainResources/vendor/slick/slick.min.js"></script>
   <script src="/brocoli/resources/mainResources/js/slick-custom.js"></script>
===============================================================================================
   <script src="/brocoli/resources/mainResources/vendor/parallax100/parallax100.js"></script>
   <script>
        $('.parallax100').parallax100();
   </script>
===============================================================================================
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
===============================================================================================
   <script src="/brocoli/resources/mainResources/vendor/isotope/isotope.pkgd.min.js"></script>
===============================================================================================
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
===============================================================================================
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
===============================================================================================
   <script src="/brocoli/resources/mainResources/js/main.js"></script> -->
</body>
</html>