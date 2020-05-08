<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-Cart.jsp" %>
	
	

<style>
#header-color4{
	color:#6c7ae0
}
.slick3-dots .slick-active .slick3-dot-overlay {
	border-color:white;
}
.slick3-dots li img {
	display:none;
}
</style>
</head>
<body class="animsition">

   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/resources/mainResources/images/shop.jpg');">
      <h2 class="ltext-105 cl0 txt-center" style="color:white">
         SHOP
      </h2>
   </section>   
   <!-- Product -->
   <div class="bg0 m-t-23 p-b-140">
      <div class="container">
         <div class="flex-w flex-sb-m p-b-52">
                               <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" id="category-ALL" data-filter="*">
                  전체보기
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" id="category-A" data-filter=".상의">
                  상의
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" id="category-B"  data-filter=".아우터">
                  아우터
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" id="category-C" data-filter=".원피스">
                  원피스
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" id="category-D" data-filter=".하의">
                  하의
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" id="category-E" data-filter=".스커트">
                  스커트
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" id="category-F" data-filter=".가방">
                  가방
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" id="category-G" data-filter=".신발">
                  신발
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" id="category-H" data-filter=".모자">
                  모자
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" id="category-I" data-filter=".악세서리">
                  악세서리
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" id="category-J" data-filter=".언더웨어">
                  언더웨어
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" id="category-Z" data-filter=".기타">
                  기타
               </button>
               
            </div>
<!-- 
            <div class="flex-w flex-c-m m-tb-10">
               <div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
                  <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
                  <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                   Filter
               </div>

               <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
                  <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
                  <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                  Search
               </div>
            </div> -->
            
            <!-- Search product -->
            <div class="dis-none panel-search w-full p-t-10 p-b-15">
               <div class="bor8 dis-flex p-l-15">
                  <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
                     <i class="zmdi zmdi-search"></i>
                  </button>

                  <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder="Search">
               </div>   
            </div>

            <!-- Filter -->
            <div class="dis-none panel-filter w-full p-t-10">
               <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
                  <div class="filter-col1 p-r-15 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">
                        정렬
                     </div>

                     <ul>
                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              가격 ↑
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              가격 ↓
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              인기순
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                           <!-- <a href="#" class="filter-link stext-106 trans-04 filter-link-active "> -->
                              New 품목
                           </a>
                        </li>

<!--                         <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              Price: High to Low
                           </a>
                        </li> -->
                     </ul>
                  </div>

                  <div class="filter-col2 p-r-15 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">
                        가격
                     </div>

                     <ul>
<!--                         <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04 filter-link-active">
                              전체
                           </a>
                        </li> -->

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              10,000 ~ 20,000원
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              20,000 ~ 30,000원
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              30,000 ~ 40,000원
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              40,000 ~ 50,000원
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              50,000원 ↑
                           </a>
                        </li>
                     </ul>
                  </div>

                  <div class="filter-col3 p-r-15 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">
                        색상
                     </div>

                     <ul>
                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #222;">
                              <i class="zmdi zmdi-circle"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04">
                              검정
                           </a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #4272d7;">
                              <i class="zmdi zmdi-circle"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04 filter-link-active">
                              파랑
                           </a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #b3b3b3;">
                              <i class="zmdi zmdi-circle"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04">
                              회색
                           </a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #00ad5f;">
                              <i class="zmdi zmdi-circle"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04">
                              초록
                           </a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #fa4251;">
                              <i class="zmdi zmdi-circle"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04">
                              빨강
                           </a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #aaa;">
                              <i class="zmdi zmdi-circle-o"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04">
                              하양
                           </a>
                        </li>
                     </ul>
                  </div>

                  <div class="filter-col4 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">
                        카테고리
                     </div>

                     <div class="flex-w p-t-4 m-r--5">
                        <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                           상의
                        </a>

                        <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                           하의
                        </a>

                        <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                           아우터
                        </a>

                        <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                           신발
                        </a>

                        <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                           모자
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
         
<!--  ======== 서브카테고리 영역 시작 ================== -->         
       <div class="flex-w flex-sb-m p-b-52 sub-category" id="sub-category-A" style="display: none; margin-top: -50px; border-top: 1px solid #666666;" >
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter="*"></button>
               

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".티셔츠">
                  티셔츠
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".셔츠">
                  셔츠
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".맨투맨-스웨트셔츠">
                  맨투맨/스웨트셔츠
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".후드스웨트셔츠-후드집업">
                  후드스웨트셔츠/후드집업
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".니트-스웨터-가디건">
                  니트/스웨터/가디건
               </button>
               
                <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".기타상의">
                  기타상의
               </button>
               
            </div>


         </div>
         
         <div class="flex-w flex-sb-m p-b-52 sub-category" id="sub-category-B" style="display: none; margin-top: -50px; border-top: 1px solid #666666;" >
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter="*"></button>
               

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".블루종-MA-1">
                  블루종/MA-1
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".레더-라이더스재킷">
                  레더/라이더스재킷
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".트러커재킷">
                  트러커재킷
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".수트-블레이저재킷">
                  수트/블레이저재킷
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".나일론-코치-아노락">
                  나일론/코치/아노락
               </button>
               
                <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".겨울싱글코트">
                  겨울싱글코트
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".겨울기타코트">
                  겨울기타코트
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".헤비아우터">
                 헤비아우터
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".기타아우터">
                  기타아우터
               </button>

               
               
            </div>


         </div>
         
         <div class="flex-w flex-sb-m p-b-52 sub-category" id="sub-category-C" style="display: none; margin-top: -50px; border-top: 1px solid #666666;" >
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter="*"></button>
               
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".미니원피스">
                  미니원피스
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".미디원피스">
                  미디원피스
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".맥시원피스">
                  맥시원피스
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".점프수트">
                  점프수트
               </button>

            </div>


         </div>
         
         <div class="flex-w flex-sb-m p-b-52 sub-category" id="sub-category-D" style="display: none; margin-top: -50px; border-top: 1px solid #666666;" >
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter="*"></button>
               
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".데님팬츠">
                  데님팬츠
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".코튼팬츠">
                  코튼팬츠
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".수트팬츠-슬렉스">
                  수트팬츠/슬렉스
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".트레이닝-조거팬츠">
                  트레이닝/조거팬츠
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".숏팬츠">
                  숏팬츠
               </button>
               
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".레깅스">
                  레깅스
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".기타하의">
                  기타
               </button>
               
            </div>


         </div>
         
         <div class="flex-w flex-sb-m p-b-52 sub-category" id="sub-category-E" style="display: none; margin-top: -50px; border-top: 1px solid #666666;" >
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter="*"></button>


               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".미니스커트">
                  미니스커트
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".미디스커트">
                  미디스커트
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".롱스커트">
                  롱스커트
               </button>

                             
            </div>


         </div>
         
         <div class="flex-w flex-sb-m p-b-52 sub-category" id="sub-category-F" style="display: none; margin-top: -50px; border-top: 1px solid #666666;" >
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter="*"></button>
               

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".백팩">
                  백팩
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".메신저-크로스백">
                  메신저/크로스백
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".클러치-파우치">
                  클러치/파우치
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".브리프케이스">
                  브리프케이스
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".웨이스트백">
                  웨이스트백
               </button>
               
                <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".기타가방">
                  기타가방
               </button>
               
            </div>


         </div>
         
         <div class="flex-w flex-sb-m p-b-52 sub-category" id="sub-category-G" style="display: none; margin-top: -50px; border-top: 1px solid #666666;" >
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter="*"></button>
               

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".스니커즈">
                  스니커즈
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".구두">
                  구두
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".부츠">
                 부츠
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".힐-펌프스">
                  힐/펌프스
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".플랫">
                  플랫
               </button>
               
                <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".로퍼">
                  로퍼
               </button>
                <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".기타신발">
                  기타신발
               </button>
               
            </div>


         </div>
         
         <div class="flex-w flex-sb-m p-b-52 sub-category" id="sub-category-H" style="display: none; margin-top: -50px; border-top: 1px solid #666666;" >
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter="*"></button>
               

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".캡-야구모자">
                  캡/야구모자
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".헌팅-베레">
                  헌팅/베레
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".비니">
                  비니
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".버킷-사파리">
                  버킷/사파리
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".기타모자">
                  기타모자
               </button>
               
           
               
            </div>


         </div>
         
         <div class="flex-w flex-sb-m p-b-52 sub-category" id="sub-category-I" style="display: none; margin-top: -50px; border-top: 1px solid #666666;" >
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter="*"></button>
               

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".안경">
                  안경
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".마스크">
                  마스크
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".지갑">
                  지갑
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".벨트">
                  벨트
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".반지">
                  반지
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".팔찌">
                  팔찌
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".목걸이">
                  목걸이
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".귀걸이">
                  귀걸이
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".머플러">
                  머플러
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".장갑">
                  장갑
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".넥타이">
                  넥타이
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".키링">
                  키링
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".헤어악세서리">
                  헤어악세서리
               </button>
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".기타악세서리">
                  기타
               </button>
               
               
            </div>


         </div>
         
         <div class="flex-w flex-sb-m p-b-52 sub-category" id="sub-category-J" style="display: none; margin-top: -50px; border-top: 1px solid #666666;" >
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter="*"></button>
               

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".양말">
                  양말
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".속옷">
                  속옷
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".스타킹">
                  스타킹
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".홈웨어">
                  홈웨어
               </button>

               
            </div>


         </div>
         
         <div class="flex-w flex-sb-m p-b-52 sub-category" id="sub-category-Z" style="display: none; margin-top: -50px; border-top: 1px solid #666666;" >
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter="*"></button>

               
            </div>


         </div>
    
         
<!--  ======== 서브카테고리 영역 끝 ================== -->     
         
         
         

         <div class="row isotope-grid">
         <c:forEach var="ap" items="${ aProductList }">
         
         	<c:url var="productDetail" value="productDetail.mn">
           		<c:param name="p_NO" value="${ ap.p_NO }"/>
           		<c:param name="or_Mno" value="${loginUser.mNO }"/>
   	        </c:url>
            <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${ap.p_Bcategory} ${ap.p_Scategory}">
               <div class="block2">
                  <div class="block2-pic hov-img0" id="productModal">
                     <img src="/brocoli/resources/product-Img/${ap.pfList.pf_Img1_ReName }" alt="IMG-PRODUCT" style="height:378px;">
				<input type="hidden" id="productNo" value="${ap.p_NO }">
                     <a href="#" id="ModalView" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                     	미리보기
                     </a>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="${productDetail }" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           ${ap.p_Name }
                        </a>

                        <span class="stext-105 cl3">
                           ${ap.p_Last_Price }원
                        </span>
                     </div>
						
						
					 <c:url var="wInsert" value="wInsert.mn">
					 <c:param name="w_P_NO" value="${ ap.p_NO }"/>
					 	<c:param name="w_Mno" value="${ loginUser.mNO }"/>
					 </c:url>	
                     <div class="block2-txt-child2 flex-r p-t-3">
                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                           <img class="icon-heart1 dis-block trans-04" src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png" alt="ICON" onclick="location.href='${wInsert}'">
                           <img class="icon-heart2 dis-block trans-04 ab-t-l" src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png" alt="ICON" onclick="location.href='${wInsert}'">
                        </a>
                     </div>
                  </div>
               </div>
            </div>
		</c:forEach>
         </div>

         <!-- Load more -->
         <div class="flex-c-m flex-w w-full p-t-45">
            <a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
               Load More
            </a>
         </div>
      </div>
   </div>

      <%@ include file="All-ShopModal.jsp" %>



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
<!--    <script>
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
        	 swal("등록 완료!"/* nameProduct */, "장바구니에 추가되었습니다!", "success");
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
   
   <!-- 
   	작성자 : 박주완
   	작성일 : 2020-03-20
   	내용 : 카테고리 버튼 클릭시 서브 메뉴 츌력 
    -->
   <script>
   $(function (){
		$("#category-ALL").click(function (){
	  	$(".sub-category").css("display","none");
	  });
	});

  
   $(function (){
		$("#category-A").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-A").toggle();
	  });
	});
   $(function (){
		$("#category-B").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-B").toggle();
	  });
	});
   $(function (){
		$("#category-C").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-C").toggle();
	  });
	});
   $(function (){
		$("#category-D").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-D").toggle();
	  });
	});
   $(function (){
		$("#category-E").click(function (){
			$(".sub-category").css("display","none");
			$("#sub-category-E").toggle();
	  });
	});
   $(function (){
		$("#category-F").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-F").toggle();
	  });
	});
   $(function (){
		$("#category-G").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-G").toggle();
	  });
	});
   $(function (){
		$("#category-H").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-H").toggle();
	  });
	});
   $(function (){
		$("#category-I").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-I").toggle();
	  });
	});
   $(function (){
		$("#category-J").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-J").toggle();
	  });
	});
   
   $(function (){							/* 마지막 기타 메뉴 : Z */
		$("#category-Z").click(function (){
			$(".sub-category").css("display","none");
	  		$("#sub-category-Z").toggle();
	  });
	});
   
   
   $('#productModal a[id=ModalView]').click(function(obj){
	   $('#opshow').css("display","none");
		var p_NO = $(this).parent().find('input[id=productNo]').val();
		var option = "";
		var img="";
		var id="${loginUser.mNO}";
		$.ajax({
			url:"productModal",
			data:{p_NO:p_NO},
			dataType:"json",
			success:function(data){

				$('#productName').val(data[0].p_Name);
				$('#brandName').val(data[0].b_Name);
				$('#pNo').val(data[0].p_NO);
				$('#orderCount').val(data[0].p_Order_Count);
				$('#productPrice').val(data[0].p_Price);
				$('#lastPrice').val(data[0].p_Last_Price);
				$('#productComment').val(data[0].p_Comment);
				$('#stockCount').val(data[0].op_Stock);

				img += "<div class='item-slick3' data-thumb='-'>"
				img +=	"<div class='wrap-pic-w pos-relative'>"
				img += "<img src='/brocoli/resources/product-Img/"+data[0].pf_Img1_ReName + "'alt='IMG-PRODUCT'>"
				img +=	"<a class='flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04' href='/brocoli/resources/product-Img/"+data[0].pf_Img1_ReName+"'>"
				img +=			"<i class='fa fa-expand'></i>"
				img +=		"</a>"
				img +=	"</div>"
				img += "</div>"
/* 				if(data[0].pf_Img2_ReName != null){
					img += "<div class='item-slick3' data-thumb=''>"
					img +=	"<div class='wrap-pic-w pos-relative'>"
					img += "<img src='/brocoli/resources/product-Img/"+data[0].pf_Img2_ReName + "'alt='IMG-PRODUCT'>"
					img +=	"<a class='flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04' href='/brocoli/resources/product-Img/"+data[0].pf_Img2_ReName+"'>"
					img +=			"<i class='fa fa-expand'></i>"
					img +=		"</a>"
					img +=	"</div>"
					img += "</div>"
				}else if(data[0].pf_Img3_ReName != null){
					img += "<div class='item-slick3' data-thumb=''>"
					img +=	"<div class='wrap-pic-w pos-relative'>"
					img += "<img src='/brocoli/resources/product-Img/"+data[0].pf_Img3_ReName + "'alt='IMG-PRODUCT'>"
					img +=	"<a class='flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04' href='/brocoli/resources/product-Img/"+data[0].pf_Img3_ReName+"'>"
					img +=			"<i class='fa fa-expand'></i>"
					img +=		"</a>"
					img +=	"</div>"
					img += "</div>"
				} */
				
				$('#imgcheck').html(img);
				
				var tempArr = [];
		        for (var i = 0; i < data.length; i++) {
		            if (tempArr.length == 0) {
		                tempArr.push(data[i].option_1);
		            } else {
		                var duplicatesFlag = true;
		                for (var j = 0; j < tempArr.length; j++) {
		                    if (tempArr[j] == data[i].option_1) {
		                        duplicatesFlag = false;
		                        break;
		                    }
		                }
		                if (duplicatesFlag) {
		                    tempArr.push(data[i].option_1);
		                }
		            }
		        }


		        option += "<option>선택하세요</option>";
		        for(var i=0; i<tempArr.length; i++){
		        	if(tempArr[i] != null){
		        		option += "<option>"+tempArr[i]+"</option>"
		        	}
		        }
		  
		       
	
				
				$('#select1').html(option);
				$('#detailCheck').attr('href','productDetail.mn?p_NO='+data[0].p_NO+"&&or_Mno="+id);
				 
			},error:function(jqxhr,textStatus, errorThrown){
				console.log("ajax 처리실패");
				
				//에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
		
	})
   </script>


</body>
</html>