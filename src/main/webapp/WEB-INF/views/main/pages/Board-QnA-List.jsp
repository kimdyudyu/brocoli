<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
  <meta charset="utf-8">
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
		height: 110%;
		display: grid; 	
  		}
  	#all th{
  		text-align:center;
  	}
  		
  </style>
  
</head>
<body>
<div id="all" style="height: auto; margin-bottom: 30px;">
<br>
<h1 style=" color: #22; padding:4%; text-align: center; font-weight: bold;">고객 문의 사항</h1>
<br>
<table class="table table-hover" align="center">
    <thead>
      <tr>
        <th>글번호</th>
        <th>구분</th>
        <th style="width:50%">제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>첨부파일</th>
        <th>답변여부</th>
      </tr>
    </thead>
    <tbody>
      
     <c:forEach var="q" items="${ list }">
     <tr>
        <td align="center">${ q.q_No }</td>
        <td align="center">${ q.q_Kind }</td>
        <td align="center">
								<c:url var="qnadetail" value="qDetail.mn">
									<c:param name="q_No" value="${ q.q_No }" />
									<c:param name="currentPage" value="${ pi.currentPage }" />
								</c:url>
								<a href="${ qnadetail }" style="color: #222" >${ q.q_Title }</a>
		</td>
		
        <td align="center">${ q.q_Writer }</td>
        <td align="center">${ q.q_Date }</td>
        <td align="center"><c:if test="${ !empty q.q_Img1 }">
        						o
        	</c:if> <c:if test="${ empty q.q_Img1_ReName }">
        		&nbsp;
        	</c:if></td>
        
        	<c:if test="${ q.q_View_Check == 'Y' }">
						<td style="text-align:center;">읽음</td>
					</c:if>
					
					<c:if test="${ q.q_View_Check == 'N' }">
						<td style="text-align:center;">안읽음</td>
			</c:if>
      </tr>
      
    </c:forEach>
    </tbody>
  </table>
  <!-- 페이징--------------------------------------------- -->
 <div style="margin-left: 40%; display: flex;">
  <ul class="pagination justify-content-center">

				<c:if test="${ pi.currentPage eq 1 }">
					<li class="page-item"><a class="page-link" style="color: #222"> < </a></li>
				</c:if>

				<c:if test="${ pi.currentPage ne 1}">
				<li class="page-item">
					<c:url var="before" value="QnAlist.mn">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
					</c:url>
					<a href="${ before }" class="page-link" aria-label="Previous" style="color: #222"> < </a></li>
				</c:if>
	
			<!-- 페이지 -->
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
			
				<c:if test="${ p eq pi.currentPage }">
					<li class="page-item active">
					<a class="page-link" style="background-color: #3333; border-color: #3333;" style="color: #222">${ p }</a></li>
				</c:if>
				
				<c:if test="${empty sc }">
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="pageNext" value="QnAlist.mn">
						<c:param name = "currentPage" value="${ p }"/>
					</c:url>
					<li class="page-item"><a href="${pageNext}" class="page-link" style="color: #222">${ p }</a></li>
				</c:if>
				</c:if>
				
				<c:if test="${!empty sc}">
				<c:if test="${p ne pi.currentPage }">
				<c:url var="pageNext" value="qSearch.mn">
						<c:param name = "currentPage" value="${ p }"/>
						<c:param name = "search" value="${ search }"/>
 					    <c:param name = "condition" value="${ sc.condition }"/>
					</c:url>
					<li class="page-item"><a href="${pageNext}" class="page-link" style="color: #222">${ p }</a></li>
				</c:if>
				</c:if>
			</c:forEach>
			
			<!-- 다음 -->
			<c:if test="${ pi.currentPage eq pi.maxPage }">
				<li class="page-item"><a class="page-link" aria-label="Next"> > </a></li>
			</c:if>
			
			<c:if test = "${ pi.currentPage ne pi.maxPage }">
			<c:url var = "next" value="QnAlist.mn">
				<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
			</c:url>
				<li class="page-item"><a href="${ next }" class="page-link" aria-label="Next" style="color: #222"> > </a></li>
			</c:if>
			
			</ul>
			
  <div>
  	<c:if test="${ !empty sessionScope.loginUser }">
				
				<button class="btn btn-primary"
					style="background: #222; width: 100px; border: 1px solid #222; margin-left: 370px;"
					onclick="location.href='qnaInsertView.mn';">작 성</button>
				
	</c:if>
  </div>
  </div>
  <div id="searchArea" align="center" >
				<form action="qSearch.mn" style="display: inline-flex; margin-bottom: 15px;" >
					<select id="searchCondition" name="condition" >
						<option>--------선택--------</option>
						<option value="writer">작성자</option>
						<option value="title">제목</option>
						<option value="content">내용</option>					
					</select>
					<br>
					<input type="search" name="search" class="form-control form-control" style="width:300px;">
					<button class="btn btn-primary" style="background: #222; width: 100px; border: 1px solid #222;">검색하기</button>				
				</form>			
			</div>
  </div>
<%@ include file="All-Footer.jsp" %>
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
</html>