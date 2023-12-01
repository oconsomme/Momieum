<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 템플릿 -->
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
   rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="${cpath}/resources/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="${cpath}/resources/css/fontawesome.css">
<link rel="stylesheet"
   href="${cpath}/resources/css/templatemo-digimedia-v3.css">
<link rel="stylesheet" href="${cpath}/resources/css/animated.css">
<link rel="stylesheet" href="${cpath}/resources/css/owl.css">

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>

body {
    opacity: 0; /* 페이지가 로드될 때 투명하게 설정 */
    transition: opacity 0.5s ease-in-out; /* 부드러운 효과를 위한 전환 설정 */
}


@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2 , .h2, h1, .h1, p, a {
font-family : 'GmarketSansMedium', cursive;
}

header, nav, aside, section, address, article, footer, hgroup, div {
   display: block;
}

form, div, p, span, ul, li, dl, dt, textarea, h1, h2, h3, h4 {
   margin: 0px;
   padding: 0px;
   word-break: keep-all;
}

* {
   line-height: 1.3;
}

.quick {display: none ;

   
}

.quick {
   position: fixed;
   top: 30%;
   right: 0;
   z-index: 99;
   background: #fff;
}

ul, ol, dl, li, dt, dd {
   list-style: none;
}

#con {
   padding-top: 40px;
}

.con-area {
   padding: 0 20px;
}

.con-area {
   max-width: 1200px;
   margin: 0 auto;
}

.con-area {
   width: 100%;
   max-width: 1200px;
   min-height: 400px;
   margin: 0 auto;
}

.tit {
   position: relative;
   font-size: 36px;
   color: #111;
   text-align: center;
   font-weight: 500;
}

html, body, table, input, textarea, select, h1, h2, h3, h4 {
   color: #000;
   font-size: 15px;
   font-family: 'Noto Sans KR', sans-serif;
}

#con .sub-txt {
   margin-top: 30px;
   font-size: 17px;
   color: #777;
   text-align: center;
}

element.style {
   text-align: center;
   margin: auto;
}

#con .sub-txt {
   margin-top: 30px;
   font-size: 17px;
   color: #777;
   text-align: center;
}

a:visited {
   color: #424242;
   text-decoration: none;
}

#con .use-list .tabs {
   margin: 40px 0 20px -10px;
}

#con .use-list .tabs .tab-list {
   float: left;
   width: 16.6%;
   padding-left: 30px;
   text-align: center;
   cursor: pointer;
}

#con .use-list .tabs .tab-list.current .use-con, #con .use-list .tabs .tab-list:hover .use-con
   {
   border-color: #ebebeb;
   background: #fff;
}

@media ( max-width : 1200px) #con .use-list .tabs .tab-list .use-con {
   height
   :
    
   240px
   ;
   

}

#con .use-list .tabs .tab-list .use-con {
   width: 100%;
   height: 260px;
   padding: 25px 0;
   border: 1px solid #ebebeb;
   background: #fff;
}

#con .use-list .tabs .tab-list .use-con .icon-wrap {
   width: 10px;
   height: 10px;
}

#con .use-list .tabs .tab-list.current .icon-wrap, #con .use-list .tabs .tab-list:hover .icon-wrap
   {
   background: #ab7ecd;
}

#con .use-list .tabs .tab-list .use-con .icon-wrap {
   position: relative;
   width: 110px;
   height: 110px;
   margin: 0 auto;
   padding-top: 30px;
   border-radius: 50%;
   text-align: center;
   background: #f8f8f8;
}

/* 이미지를 감싸는 div에 대한 스타일 */
.icon-wrap {
    display: flex; /* Flexbox를 사용하여 중앙 정렬 */
    justify-content: center; /* 수평 중앙 정렬 */
    align-items: center; /* 수직 중앙 정렬 */
    height: 100px; /* div의 높이 설정 */
    width: 100px; /* div의 너비 설정 */
    /* 기타 스타일(배경색, 테두리 등) */
}

/* 이미지에 대한 스타일 */
.icon-wrap img {
    max-width: 90%; /* 이미지의 최대 너비를 div의 80%로 제한 */
    max-height:90%; /* 이미지의 최대 높이를 div의 80%로 제한 */
    object-fit: contain; /* 이미지의 비율을 유지하면서 div에 맞게 조절 */
    margin-bottom : 28px;
    margin-left : 5px;
}

#con .use-list .tabs .tab-list.current .use-con strong, #con .use-list .tabs .tab-list:hover .use-con strong,
   #con .use-list .tabs .tab-list.current .use-con p, #con .use-list .tabs .tab-list:hover .use-con p
   {
   color: #000000;
}

@media ( max-width : 1200px) #con .use-list .tabs .tab-list .use-con
   strong {
   margin-top
   :
    
   15px
   ;
   
    
   font-size
   :
    
   15px
   ;
   

}

#con .use-list .tabs .tab-list .use-con strong {
   display: block;
   margin: 25px 0 5px;
   font-size: 18px;
   color: #5690e7;
   font-weight: 500;
}

#con .use-list .tabs .tab-list .use-con p {
   font-size: 14px;
}

#con .use-list .tabs .tab-list .use-con p {
   font-size: 16px;
   color: #333;
   font-weight: 500;
}

#con .use-list .ps {
   margin-bottom: 50px;
   font-size: 15px;
   color: #aaa;
   text-align: right;
}

#con .use-list .slide-txt {
   margin-top: 10px;
   font-size: 15px;
   color: red;
}

#con .use-list .tab-con-wrap {
   height: 900px;
}

#con .use-list .tab-con.current {
   opacity: 1;
   z-index: 10;
}

#con .use-list .tab-con {
   display: block;
   position: absolute;
   top: 0;
   left: 0;
   width: 100%;
   opacity: 0;
}

#con .tab-con {
   display: none;
   position: relative;
   padding-top: 10px;
}

#con .use-list .use-box .use-tit {
   float: left;
   font-size: 22px;
   color: #111;
}

* {
   line-height: 1.3;
}

#con .use-list .use-box .use-txt {
   float: left;
   margin-top: 4px;
   margin-left: 40px;
   font-size: 16px;
   color: #888;
}

#con .use-list .use-box:after {
   content: '';
   display: block;
   clear: both;
}

#con .use-list .tab-con .use-wrap {
   width: 100%;
   margin: 50px auto;
}

#con .use-list .tab-con .phone-list {
   
}

.slick-slider {
   position: relative;
   display: block;
   box-sizing: border-box;
   -webkit-user-select: none;
   -moz-user-select: none;
   -ms-user-select: none;
   user-select: none;
   -webkit-touch-callout: none;
   -khtml-user-select: none;
   -ms-touch-action: pan-y;
   touch-action: pan-y;
   -webkit-tap-highlight-color: transparent;
}

#con .use-list .tab-con.current .slick-next, #con .use-list .tab-con.current .slick-prev
   {
   z-index: 10;
}

#con .tab-con.current .slick-prev {
   top: 40%;
   left: -5%;
}

#con .slick-prev {
   left: -80px;
}

#con .slick-prev, .slick-next {
   position: absolute;
   top: 50%;
   transform: translateY(-50%);
   width: 45px;
   height: 45px;
   font-size: 0;
   background: #fff;
   border: 1px solid #ebebeb;
   cursor: pointer;
}

#con .slick-prev:after {
   content: '';
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   width: 7px;
   height: 14px;
   background: url(../images/sub/sub01/prev.png);
}

#con .tab-con.current .slick-prev {
   top: 40%;
   left: -5%;
}

#con .slick-prev {
   left: -80px;
}

#con .slick-prev, .slick-next {
   position: absolute;
   top: 50%;
   transform: translateY(-50%);
   width: 45px;
   height: 45px;
   font-size: 0;
   background: #fff;
   border: 1px solid #ebebeb;
   cursor: pointer;
}

.slick-slider .slick-track, .slick-slider .slick-list {
   -webkit-transform: translate3d(0, 0, 0);
   -moz-transform: translate3d(0, 0, 0);
   -ms-transform: translate3d(0, 0, 0);
   -o-transform: translate3d(0, 0, 0);
   transform: translate3d(0, 0, 0);
}

.slick-list {
   position: relative;
   display: block;
   overflow: hidden;
   margin: 0;
   padding: 0;
}

.slick-track {
   position: relative;
   top: 0;
   left: 0;
   display: block;
   margin-left: auto;
   margin-right: auto;
}

element.style {
   opacity: 1;
   width: 1135px;
   transform: translate3d(0px, 0px, 0px);
}

.slick-track:before, .slick-track:after {
   display: table;
   content: '';
}

element.style {
   width: 227px;
}

#con .use-list .tab-con .phone-list li {
   text-align: left;
}

.slick-initialized .slick-slide {
   display: block;
}

.slick-slide {
   display: none;
   float: left;
   /* height: 100%; */
   min-height: 1px;
}

.slick-slide {
   border: 0;
   outline: 0;
}

.slick-slide img {
   display: block;
}

img, fieldset {
   display: inline;
   max-width: 100%;
   border: 0px;
   line-height: 0;
}

#con .use-list .tab-con .phone-list li .num {
   margin-top: 20px;
   font-size: 15px;
   color: #333;
   font-weight: 500;
}

#con .use-list .tab-con .phone-list li strong {
   display: block;
   margin: 5px 0 10px;
   font-size: 17px;
   color: #333;
   font-weight: 500;
}

#con .use-list .tab-con .phone-list li .list-txt {
   font-size: 15px;
   color: #888;
   line-height: 1.5;
}

element.style {
   width: 227px;
}

#con .use-list .tab-con .phone-list li {
   text-align: left;
}

.slick-initialized .slick-slide {
   display: block;
}

.slick-track:after {
   clear: both;
}

.slick-track:before, .slick-track:after {
   display: table;
   content: '';
}

.slick-track {
   position: relative;
   top: 0;
   left: 0;
   display: block;
   margin-left: auto;
   margin-right: auto;
}

element.style {
   opacity: 1;
   width: 1135px;
   transform: translate3d(0px, 0px, 0px);
}

#con .use-list .tab-con.current .slick-next, #con .use-list .tab-con.current .slick-prev
   {
   z-index: 10;
}

#con .tab-con.current .slick-next {
   top: 40%;
   right: -5%;
}

#con .slick-next {
   right: -80px;
}

#con .slick-prev, .slick-next {
   position: absolute;
   top: 50%;
   transform: translateY(-50%);
   width: 45px;
   height: 45px;
   font-size: 0;
   background: #fff;
   border: 1px solid #ebebeb;
   cursor: pointer;
}

#con .use-list .tab-con .phone-list:after {
   content: '';
   display: block;
   clear: both;
}

#con .use-list .tab-con .use-wrap {
   width: 100%;
   margin: 50px auto;
}

#con .use-list .tab-con.current {
   opacity: 1;
   z-index: 10;
}

#con .use-list .tab-con {
   display: block;
   position: absolute;
   top: 0;
   left: 0;
   width: 100%;
   opacity: 0;
}

#con .tab-con {
   display: none;
   position: relative;
   padding-top: 10px;
}


</style>
<body>


   <!-- 서브페이지 헤더 -->
   <jsp:include page="../headersub.jsp" flush="false"></jsp:include>


   <div id="content">

      <div id="con">
         <div class="con-area">
            <h2 class="tit">이용방법</h2>
            <p class="sub-txt">정확한 검사를 위해서는 아래 이용방법을 참고하여 진행해 주세요.</p>
            <div style="text-align: center; margin: auto;">
               <br>
               <!-- <a class="sub-txt" style="color: blue;" href="https://www.youtube.com/watch?v=iQaxlE0ZTWo">맘이음 P9 이용 가이드 영상보기</a> -->
               <a class="sub-txt" style="color: blue;"
                  href="https://www.youtube.com/watch?v=jo3k2uJVFAA">맘이음 이용 가이드
                  영상보기</a>
            </div>

            <div class="use-list">
               <ul class="tabs">
                  <li class="tab-list" data-tab="tab-01">
                     <div class="use-con">
                        <div class="icon-wrap step-01">
                        <img src="${cpath}/resources/images/howlogo1.png" alt="Step 01 이미지">
                        </div>
                        <strong>STEP 01</strong>
                        <p>
                           홈페이지 접속<br> (웹 혹은 앱)
                        </p>
                     </div>
                  </li>
                  <li class="tab-list" data-tab="tab-02">
                     <div class="use-con">
                        <div class="icon-wrap step-02"><img src="${cpath}/resources/images/howlogo2.png" alt="Step 01 이미지"></div>
                        <strong>STEP 02</strong>
                        <p>검사방법 선택</p>
                     </div>
                  </li>
                  <li class="tab-list" data-tab="tab-03">
                     <div class="use-con">
                        <div class="icon-wrap step-03"><img src="${cpath}/resources/images/howlogo3.png" alt="Step 01 이미지"></div>
                        <strong>STEP 03-1</strong>
                        <p>그림 그리기</p>
                     </div>
                  </li>
                  <li class="tab-list" data-tab="tab-04">
                     <div class="use-con">
                        <div class="icon-wrap step-04"><img src="${cpath}/resources/images/howlogo4.png" alt="Step 01 이미지"></div>
                        <strong>STEP 03-2</strong>
                        <p>파일 업로드</p>
                     </div>
                  </li>
                  <li class="tab-list" data-tab="tab-05">
                     <div class="use-con">
                        <div class="icon-wrap step-05"><img src="${cpath}/resources/images/howlogo5.png" alt="Step 01 이미지"></div>
                        <strong>STEP 03-3</strong>
                        <p>프리셋 이용</p>
                     </div>
                  </li>
                  <li class="tab-list" data-tab="tab-06">
                     <div class="use-con">
                        <div class="icon-wrap step-06"><img src="${cpath}/resources/images/howlogo6.png" alt="Step 01 이미지"></div>
                        <strong>STEP 04</strong>
                        <p>
                           결과확인<br> (ChatGPT)
                        </p>
                     </div>
                  </li>
               </ul>

               <p class="ps">※ 자세한 내용은 각 단계를 클릭해서 확인해보세요.</p>


            </div>
         </div>
      </div>
   </div>





   <!-- 푸터 페이지 -->
   <jsp:include page="../footer.jsp" flush="false"></jsp:include>

<script>
window.addEventListener('load', function() {
    document.body.style.opacity = '1'; /* 페이지 로드 완료 시 투명도를 1로 변경 */
});

</script>

</body>
</html>