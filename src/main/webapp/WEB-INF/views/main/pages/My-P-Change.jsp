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
  
<title>비밀번호 변경</title>

	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>


</head>
<body>
	<!-- 수정자 : 박주완
		수정일 : 2020-03-30
		내용 : CSS수정 -->
	 <form action="password_change.mn" id="frm1" method="post">
	  <div id="pwdchange" class="container" style="text-align: center; width: 100%; height: 80%; padding-top: 5%;">

		<div id="logo" class="flex-w flex-tr" style="margin-bottom: 55px;">
			<p style="font-size: 55px; width: 100%; margin: 0 auto; color: #222; height: 60px;"><strong>비밀번호 변경</strong></p>
		</div>
		<div>
			<input type="password" name="p_change1" id="pwd1"
				class="form-control form-control "
				style="border-radius: 5px; width: 320px; margin: 0 auto; margin-bottom: 10px; height: 50px;"
				placeholder="변경할 비밀번호 " required>
			<input type="hidden" name="pwdDuplicateCheck3" id="pwdDuplicateCheck3" value="0" />	
		</div>	
		<div>
			<input type="password" name="p_change2" id="pwd2"
				class="form-control form-control" 
				style="border-radius: 5px; width: 320px; margin: 0 auto; height: 50px;"
				placeholder="비밀번호  확인" required>	
				<input type="hidden" name="pwdDuplicateCheck2" id="pwdDuplicateCheck2" value="0" />
		</div>
		</div>
		
		<br>
		
		<div class="alert alert-success" id="alert-success" style=" width: 211px; position: relative; left: 42.5%;">비밀번호가 일치합니다.</div>
		<div class="alert alert-danger" id="alert-danger" style=" width: 280px; position: relative; left: 39.5%;">비밀번호가 일치하지 않습니다.</div>

	
		<div style="padding-bottom: 72px; margin-left: 559px;">
			<button class="btn btn-primary btn-lg " 
				style="background: #222; width: 150px; border: 1px solid #222; margin: 0 auto;" onclick="return validate2();">
				변경하기</button>
				
			<button class="btn btn-primary btn-lg "
				style="background: #222; width: 150px; border: 1px solid #222; margin: 0 auto; display:inline;" onclick="test1();">
				돌아가기</button>	
			<br>
			
		</div>
	</form>

    <script>
    
    function validate2(){
	 	   
	 	   var rgEx = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
	       
	       var pwd1 = $("#pwd1").val();
	 		
	 	
	 		var num = pwd1.search(/[0-9]/g);
	 		 var eng = pwd1.search(/[a-z]/ig);
	 		 var spe = pwd1.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	 		 
	 		 if(pwd1.length < 8 || pwd1.length > 20){
	 			 $("#pwdDuplicateCheck3").val(0);
	 			 $("#pwd1").focus();
	 			  alert("비밀번호를 8자리 ~ 20자리 이내로 입력해주세요.");
	 			  return false;
	 			 }else if(pwd1.search(/\s/) != -1){
	 				 $("#pwdDuplicateCheck3").val(0);
	 				 $("#pwd1").focus();
	 			  alert("비밀번호는 공백 없이 입력해주세요.");
	 			  return false;
	 			 }else if(num < 0 || eng < 0 || spe < 0 ){
	 				 $("#pwdDuplicateCheck3").val(0);
	 				 $("#pwd1").focus();
	 			  alert("비밀번호에 영문, 숫자, 특수문자를 혼합하여 입력해주세요.");
	 			  return false;
	 			 }else {
	 				 $("#pwdDuplicateCheck3").val(1);
	 			    
	 			 } 
	       
	 			
	 			}
	 		 
	 		// 가입하기 클릭시 최종 점검
	 		if($("#pwdDuplicateCheck2").val()==1 && $("#pwdDuplicateCheck3").val()==1){
	 			return true;
	 		}else{
	 			if(($("#pwdDuplicateCheck2").val()!=1 || $("#pwdDuplicateCheck3").val()!=1){
	 				$("#pwd1").focus();
	 				alert("비밀번호를 다시 한번 확인해주세요.");
	 			
	 		      }
	 			
	 			
	 			return false;
	 		}
	 		
	 		$(function(){
	 			$("#pwd2").on("keyup",function(){
	 				var pwd1 = $("#pwd1").val();
	 				var pwd2 = $(this).val();
	 				
	 				
	 				if(pwd1.length > pwd2.length){
	 					$(".guide").hide();
	 					$("#pwdDuplicateCheck2").val(0);
	 					return;
	 					
	 				}
	 				if(pwd1 != pwd2){
	 					$(".ok").hide();
	 					$(".error").show();
	 					$("#pwdDuplicateCheck2").val(0);
	 				}else{
	 				
	 					$(".error").hide();
	 					$(".ok").show();
	 					$("#pwdDuplicateCheck2").val(1);
	 				}
	 				
	 				
	 				
	 			});
	 		});
	 		
    </script>

   
	
	<script type="text/javascript">
	
	function test1(){
		$("#frm1").attr("action","myInfo.mn").submit();
	}
	
	$(function(){ 
		$("#alert-success").hide(); 
		$("#alert-danger").hide();
		$("input").keyup(function(){ 
			var pwd1=$("#pwd1").val(); 
			var pwd2=$("#pwd2").val(); 
			
			if(pwd1 != "" || pwd2 != ""){ 
				if(pwd1 == pwd2){ $("#alert-success").show(); 
				$("#alert-danger").hide(); 
				$("#submit").removeAttr("disabled"); 
				
				}else{ 
					$("#alert-success").hide(); 
					$("#alert-danger").show(); 
					$("#submit").attr("disabled", "disabled"); 
					} 
				} 
			}); 
		}); 
	

	</script>

	<%@ include file="All-Footer.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %>

				
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