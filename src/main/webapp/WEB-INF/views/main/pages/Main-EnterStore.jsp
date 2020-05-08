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

<title>입점 문의</title>

	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-Cart.jsp" %>
	


	
<style>
	#all{
		  /* border:1px solid red; */
          margin: auto;
          width: 50%;
          height: 100%;
          margin-top: 30px;
	}
	
	.form-group{
	    border: 1px solid #999;
   		border-radius: 10px;
   		padding: 16px
    }
    
    #ck{
    	height: 26px;
    	width: 17px;
    }
    span.guide{display:none; font-size: 12px; top: 12px; right: 10px;}
	span.ok{color:green;}
	span.error{color:red;}
	span.error2{color:red;}
</style>
</head>
<body>

<form action="sEnter.mn">
	<div id="all">
			<h2 style="background: #222; color: white; padding:4%; text-align: center" >BROCOLI 입점 문의</h2><Br>
			<hr>
			<p>
			안녕하세요.<br>
			BOCOLI에 입점 문의주신 것에 깊은 감사 드립니다. <br>
			하단의 시트를 기재 후 제출하여 주시면 담당자 배정 후 연락드리도록 하겠습니다.			
			</p>
			<hr>
		
  		<div class="form-group">
      		<label>사업자 번호 : </label>
    		<input type="text" class="form-control" id="ent_Business_NO" name="ent_Business_NO" style="width:90%;" required>
    		<input type="hidden" name="enoDuplicateCheck2" id="enoDuplicateCheck2" value="0" />
    		
   		</div>
   		 		
   		<div class="form-group">
      		<label>취급 브랜드 명: </label>
    		<input type="text" class="form-control" id="ent_Bname" name="ent_Bname" style="width:90%;" >
    				<span class="guide error2">중복되는 브랜드가 이미 존재합니다.</span>
    		<input type="hidden" name="bnameDuplicateCheck2" id="bnameDuplicateCheck2" value="0" />
   		</div>
   		
   		<div class="form-group">
      		<label>사이트 URL(http://포함) : </label>
    		<input type="url" class="form-control" id="ent_Url" name="ent_Url" style="width:90%;">
   		</div>
   		
   		<div class="form-group">
      		<label>담당자 ID : </label>
    		<input type="text" class="form-control" id="ent_ID" name="ent_ID" style="width:90%;" >
    		<span class="guide error">ID를 다시 확인해주세요.</span>
    		<input type="hidden" name="bidDuplicateCheck2" id="bidDuplicateCheck2" value="0" />
   		</div>
   		
   		<div class="form-group">
      		<label for="year">핸드폰 번호 : </label>
    		<input type="tel" class="form-control" id="ent_Phone" name="ent_Phone" style="width:90%;" required>
   		</div>
   		
   		<div class="form-group">
      		<label for="gender">담당자 이메일 : </label>
    		<input type="email" class="form-control" id="ent_Mail" name="ent_Mail" style="width:90%;">
   		</div>
   		<!-- <div id="cate" class="form-group">
   			<label for="sad">카테고리 분류 : </label>
   			
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="cate" id="ck" value="">&nbsp; Clothing (국내 브랜드 의류 전반) (http://www.BROCOLI.com/clothing)
   			</div>
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="cate" id="ck" value="">&nbsp; Shoes (자체생산/정식수입/병행수입 슈즈) (http://www.BROCOLI.com/shoes)
   			</div>
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="cate" id="ck" value="">&nbsp; Accessories (가방/귀금속 등 액세서리를 다룹니다) (http://www.BROCOLI.com/acc)
   			</div>
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="cate" id="ck" value="">&nbsp; Lifestyle (생활 소품, 가전 제품 및 헬스 케어 용품) (http://www.BROCOLI.com/life)
   			</div>
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="cate" id="ck" value="">&nbsp; Select Shop (해외 정식수입 브랜드/캐쥬얼, 명품병행 수입 의류) (http://www.BROCOLI.com/selectshop)
   			</div>   			
   			
   		</div> -->
   		
   		<div class="form-group">
      		<label for="year">브랜드 소개 : </label>
    		<textarea class="form-control" id="ent_Comment" name="ent_Comment" style="width:90%; resize:none; " rows="10" ></textarea>
   		</div>
   		<br><br>
   		<div style="margin-left: 30%">
   		<button type="submit" onclick="return validate();" class="btn btn-primary" style="background: #222; width: 300px; border: 1px solid #222;">가   입</button>
   		</div>
   		
	</div>
	<br>
</form>
		
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
    function validate(){
    	var bId = $("#bidDuplicateCheck2");
    	var bName = $("#bnameDuplicateCheck2");
    	var ent_no = $("#ent_Business_NO").val();
    	if(ent_no == null || ent_no ==""){
    		$("#ent_Business_NO").focus();
    		alert("사업자 번호를 입력해주세요.");
    		return false;
    	}else if($("#ent_Bname").val() == null ||$("#ent_Bname").val() =="" ){
    		$("#ent_Bname").focus();
    		alert("브랜드명을 입력해주세요.");
    		return false;
    	}
    	/* var value = ent_no;
    	 var valueMap = value.replace(/-/gi, '').split('').map(function(item) {
    	        return parseInt(item, 10);
    	    });

    	    if (valueMap.length == 10) {
    	        var multiply = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5);
    	        var checkSum = 0;

    	        for (var i = 0; i < multiply.length; ++i) {
    	            checkSum += multiply[i] * valueMap[i];
    	        }

    	        checkSum += parseInt((multiply[8] * valueMap[8]) / 10, 10);
    	        if( Math.floor(valueMap[9]) == ( (10 - (checkSum % 10)) % 10)){
    	        	$("#enoDuplicateCheck2").val(1);
    	        }else{
    	        	$("#enoDuplicateCheck2").val(0);
    	        };
    	    }else{
    	    	$("#ent_Business_NO").focus();
    	    alert("사업자번호를 확인해주세요.");	
    	    return false;
    	    } */

    	
    	
    	if(bId.val() == 1 && bName.val() ==1 ){
    		return true;
    	}else{
    		/* if($("#enoDuplicateCheck2").val() != 1){
    			alert("사업자 번호를 확인해주세요.");
    			return false;
    		}else */ if(bName.val() !=1){
    			$("#ent_Bname").focus();
    			alert("브랜드명을 다시 한 번 확인해주세요!");
    			return false;
    		}else if(bId.val() !=1){
    			$("#ent_ID").focus();
    			alert("ID를 다시 한 번 확인해주세요!");
    			return false;
    		}
    		
    		
    	}
    }
    
    $(function(){
		$("#ent_ID").on("keyup",function(){
			
			var bId= $(this).val();
		
			
			if(bId.length < 4){
				$(".mGuide").hide();
				$("#bIdDuplicateCheck2").val(0);
				
				return;
			}
			
			$.ajax({
		 		url:"idCheck.do",
		 		data:{id:bId},
		 		type:"post",
		 		success:function(data){
		 			console.log(data);
		 			
		 			if(data =="fail"){
		 				$(".error").hide();
						$("#bidDuplicateCheck2").val(1);
		 				
		 			}else{	
						$(".error").show();
						$("#bidDuplicateCheck2").val(0);
		 			}
		 		},error:function(jqxhr, textStatus, errorThrown){
					console.log("ajax 처리실패");
					
					// 에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
		 	});
			
			
		});
	});
    
    $(function(){
		$("#ent_Bname").on("keyup",function(){
			
			var bName= $(this).val();
		
			
			
			
			
			$.ajax({
		 		url:"bNameCheck.do",
		 		data:{name:bName},
		 		type:"post",
		 		success:function(data){
		 			console.log(data);
		 			
		 			if(data =="ok"){
		 				$(".error2").hide();
						$("#bnameDuplicateCheck2").val(1);
		 				
		 			}else{	
						$(".error2").show();
						$("#bnameDuplicateCheck2").val(0);
		 			}
		 		},error:function(jqxhr, textStatus, errorThrown){
					console.log("ajax 처리실패");
					
					// 에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
		 	});
			
			
		});
	});
 </script>
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