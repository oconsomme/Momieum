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
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
   src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

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

<style>
@font-face {
   font-family: 'GmarketSansMedium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, span, button span,
   div>strong {
   font-family: 'GmarketSansMedium', cursive;
}

div>strong {
   color: #0000008A;
}

.container .contentWrap {
   float: left;
   width: 900px;
   padding-left: 0px;
   margin-left: 200px;
}

.titSmall {
   font-size: 24px;
   line-height: 34px;
   letter-spacing: -.029em;
   margin-bottom: 20px;
}

a, abbr, acronym, address, applet, article, aside, audio, b, big,
   blockquote, body, canvas, caption, center, cite, code, dd, del, details,
   dfn, div, dl, dt, em, embed, fieldset, figcaption, figure, footer, form,
   h1, h2, h3, h4, h5, h6, header, hgroup, html, i, iframe, img, ins, kbd,
   label, legend, li, mark, menu, nav, object, ol, output, p, pre, q, ruby,
   s, samp, section, small, span, strike, strong, sub, summary, sup, table,
   tbody, td, tfoot, th, thead, time, tr, tt, u, ul, var, video {
   margin: 0;
   padding: 0;
   border: 0;
   font-size: 100%;
   font: inherit;
   vertical-align: baseline;
   widows: 1;
}

.totalSearchWrap {
   position: relative;
   padding: 30px;
   border-radius: 10px;
   background: #fff;
   text-align: center;
}

.totalSearchWrap .title {
   display: inline-block;
   margin-right: 17px;
   font-size: 15px;
   font-weight: 700;
   line-height: 24px;
   letter-spacing: -.02em;
   vertical-align: middle;
}

.totalSearchWrap .title+.searchAreaWrap {
   display: inline-block;
   width: 560px;
   vertical-align: middle;
}

.totalSearchWrap .searchAreaWrap {
   width: 722px;
   margin: 0 auto;
}

.searchAreaWrap .searchArea[data-v-0c0ad393] {
   position: relative;
   width: 100%;
}

.searchAreaWrap .searchArea .inputSch[data-v-0c0ad393] {
   border: 1px solid #ddd;
   background-color: #fff;
}

.searchAreaWrap .searchArea input[data-v-0c0ad393] {
   border: 0;
   background-image: none;
   background-color: #f5f5f5;
   border-radius: 6px;
   overflow: hidden;
   padding: 0 14px;
   font-size: 14px;
   line-height: 44px;
   height: 44px;
   letter-spacing: -.3px;
   width: 100%;
}

.totalSearchWrap .searchAreaWrap .searchArea input {
   padding: 0 66px 0 14px;
   background-color: #fff;
   border: 1px solid #ddd;
   border-radius: 6px;
   font-size: 14px;
   line-height: 44px;
   height: 44px;
}

input[type=search] {
   -webkit-appearance: textfield;
}

input[type=search] {
   -webkit-appearance: none;
   -moz-appearance: none;
}

input, select, textarea {
   -webkit-appearance: none;
   -webkit-border-radius: 0;
   -webkit-box-shadow: none !important;
   box-shadow: none !important;
   background: transparent;
}

a, button, html, input, select, textarea {
   font-family: NotoSansKR, Malgun Gothic, arial, sans-serif;
   color: #333;
   padding: 0;
}

button, input {
   line-height: normal;
}

button, input, select, textarea {
   font-size: 100%;
   margin: 0;
   vertical-align: baseline;
   *vertical-align: middle;
}

* {
   -webkit-box-sizing: border-box;
   box-sizing: border-box;
}

.blind, .hiddenTxt {
   overflow: hidden;
   display: inline-block;
   border: 0;
   margin: 0;
   width: 1px;
   height: 1px;
   clip: rect(1px, 1px, 1px, 1px);
   -webkit-clip-path: inset(50%);
   clip-path: inset(50%);
   position: absolute;
   top: 0 !important;
   left: 0 !important;
}

.searchAreaWrap .searchArea .btnSearchInner[data-v-0c0ad393] {
   overflow: hidden;
   text-indent: -99999px;
   background:
      url(//static.lotteon.com/p/customer/assets/img/icon_search_black.svg)
      no-repeat 50%;
   background-size: 26px auto;
   width: 26px;
   height: 26px;
   position: absolute;
   top: 9px;
   right: 14px;
}

.totalSearchWrap .searchAreaWrap .searchArea .btnSearchInner {
   top: 0;
   right: 0;
   left: inherit;
   height: 42px;
   width: 42px;
   background-image:
      url(//static.lotteon.com/p/customer/assets/img/icon_search.svg);
   background-size: 26px auto;
   background-position: 2px;
}

a, button, html, input, select, textarea {
   font-family: NotoSansKR, Malgun Gothic, arial, sans-serif;
   color: #333;
   padding: 0;
}

.searchAreaWrap .searchArea[data-v-0c0ad393] {
   position: relative;
   width: 100%;
}

.tabWrap[data-v-eaa36310] {
   position: relative;
}

.totalSearchWrap+.tabWrap {
   margin-top: 40px;
}

.tabWrap.tag>.tabArea[data-v-eaa36310] {
   padding-bottom: 20px;
}

[data-v-2388e124] .tabWrap.tag>.tabArea {
   
}

.tabWrap.tag.big>.tabArea>.scrollArea>ul[data-v-eaa36310] {
   margin-bottom: -5px;
}

.tabWrap.tag>.tabArea>.scrollArea>ul[data-v-eaa36310] {
   margin-bottom: -6px;
}

ol, ul {
   list-style: none;
}

.tabWrap.tag.big>.tabArea>.scrollArea>ul>li[data-v-eaa36310] {
   margin: 0 8px 8px 0;
}

.tabWrap.tag>.tabArea>.scrollArea>ul>li[data-v-eaa36310] {
   margin: 0 6px 6px 0;
   float: left;
}

.tabWrap.tag.big>.tabArea>.scrollArea>ul>li>.tab[data-v-eaa36310] {
   line-height: 42px;
   height: 44px;
   padding: 0 24px;
   font-size: 15px;
}

.tabWrap.tag>.tabArea>.scrollArea>ul>li>.tab.active[data-v-eaa36310] {
   background: #4b81d2;
   color: #fff;
   border: 1px solid #4b81d2;
}

.tabWrap .tab span[data-v-eaa36310] {
   position: relative;
}

button span {
   position: relative;
}

.tabWrap.tag>.tabArea>.scrollArea>ul[data-v-eaa36310]:after {
   content: "";
   display: block;
   clear: both;
}

.tabWrap>.tabContentArea.active[data-v-eaa36310] {
   display: block;
}

.tabWrap>.tabContentArea[data-v-eaa36310] {
   display: none;
}

.accordion[data-v-4516c336] {
   line-height: normal;
}

.accordion li.accordion__item[data-v-2388e124]:first-child {
   border-top: 2px solid #333;
}

.accordion li.accordion__item:first-child {
   border-top: 1px solid #333;
}

.accordion__item[data-v-9fade9fc]:first-child {
   border-top: 1px solid #ccc;
}

.accordion__trigger[data-v-9fade9fc] {
   position: relative;
   display: block;
   cursor: pointer;
   line-height: 60px;
   padding-left: 10px;
   border-bottom: 1px solid #eee;
}

.accordion__trigger[data-v-9fade9fc]:before {
   clear: both;
   display: block;
   content: "";
   width: 20px;
   height: 20px;
   background:
      url(//static.lotteon.com/p/customer/assets/img/icon_accordion_arrow.svg)
      no-repeat 0 0/20px 20px;
   position: absolute;
   right: 10px;
   top: 50%;
   -webkit-transform: rotate(0deg);
   transform: rotate(0deg);
   margin-top: -10px;
}

.accordion__trigger .listTitle[data-v-9fade9fc] {
   float: left;
   max-width: 100%;
   font-size: 15px;
   letter-spacing: -.03em;
   vertical-align: middle;
}

.accordion__trigger .listTitle p[data-v-9fade9fc] {
   display: inline-block;
   margin-right: 6px;
}

.accordion__trigger[data-v-9fade9fc]:after {
   content: "";
   clear: both;
   display: block;
}

.accordion__content>div[data-v-9fade9fc] {
   padding: 20px 24px 30px;
   background-color: #fff;
   font-size: 14px;
   line-height: 21px;
   letter-spacing: -.02em;
}

.accordion__content>div[data-v-9fade9fc] .btnLineArea {
   margin-top: 20px;
   padding-top: 20px;
   border-top: 1px solid #ddd;
   text-align: center;
}

.accordion__content>div li[data-v-2388e124]:first-child,
   .accordion__content>div p[data-v-2388e124]:first-child {
   margin-top: 0;
}

.accordion__content>div[data-v-9fade9fc] .btnLineArea p {
   color: rgba(0, 0, 0, .54);
}

.accordion__content>div li[data-v-2388e124], .accordion__content>div p+ol[data-v-2388e124],
   .accordion__content>div p+ul[data-v-2388e124], .accordion__content>div p[data-v-2388e124]
   {
   margin-top: 5px;
}

.accordion__content>div[data-v-9fade9fc] .btnLineArea .buttonGroup {
   margin-top: 12px;
}

.buttonGroup.normal[data-v-326a8cd1] {
   display: inline-block;
}

.buttonGroup[data-v-326a8cd1] {
   display: -webkit-box;
   display: -ms-flexbox;
   display: flex;
   -ms-flex-pack: distribute;
   justify-content: space-around;
}

.accordion__content>div[data-v-9fade9fc] .btnLineArea .buttonGroup a,
   .accordion__content>div[data-v-9fade9fc] .btnLineArea .buttonGroup button
   {
   height: 36px;
   min-width: 122px;
   background: #fff;
   font-size: 13px;
   line-height: 35px;
   border-color: #bfbfbf;
}

a.util.sizeSmall[data-v-a147120a], a.utilRound.sizeSmall[data-v-a147120a]
   {
   line-height: 30px;
}

a.util.sizeSmall[data-v-a147120a], a.utilRound.sizeSmall[data-v-a147120a],
   button.util.sizeSmall[data-v-a147120a], button.utilRound.sizeSmall[data-v-a147120a]
   {
   min-width: 48px;
   height: 36px;
   padding: 0 15px;
   border-radius: 6px;
   font-size: 13px;
}

a.util[data-v-a147120a], a.utilRound[data-v-a147120a] {
   line-height: 38px;
}

a.util[data-v-a147120a], a.utilRound[data-v-a147120a], button.util[data-v-a147120a],
   button.utilRound[data-v-a147120a] {
   width: auto;
   min-width: 64px;
   height: 44px;
   padding: 0 18px;
   border-radius: 6px;
   font-size: 16px;
   font-weight: 400;
   font-style: normal;
   letter-spacing: -.23px;
   color: #333;
   border-color: #ddd;
}

.buttonGroup a[data-v-326a8cd1]:last-child, .buttonGroup button[data-v-326a8cd1]:last-child
   {
   margin-right: 0;
}

a.util[data-v-a147120a], a.utilRound[data-v-a147120a] {
   line-height: 38px;
}

a.util[data-v-a147120a], a.utilRound[data-v-a147120a], button.util[data-v-a147120a],
   button.utilRound[data-v-a147120a] {
   width: auto;
   min-width: 64px;
   height: 44px;
   padding: 0 18px;
   border-radius: 6px;
   font-size: 16px;
   font-weight: 400;
   font-style: normal;
   letter-spacing: -.23px;
   color: #333;
   border-color: #ddd;
}

.buttonGroup a[data-v-326a8cd1], .buttonGroup button[data-v-326a8cd1] {
   -webkit-box-flex: 1;
   -ms-flex: 1;
   flex: 1;
   margin-right: 8px;
}

a[data-v-a147120a] {
   line-height: 44px;
}

a[data-v-a147120a], button[data-v-a147120a] {
   display: inline-block;
   width: 100%;
   height: 52px;
   -o-object-fit: contain;
   object-fit: contain;
   border-radius: 6px;
   border: 1px solid #bfbfbf;
   background-color: transparent;
   font-size: 18px;
   font-style: normal;
   font-stretch: normal;
   letter-spacing: -.5px;
   text-align: center;
   color: #757575;
   vertical-align: middle;
   white-space: nowrap;
}

.search-container {
   display: flex;
   align-items: center;
   margin-top: 35px;
   margin-bottom: 20px;
   font-family: 'GmarketSansMedium', cursive;
}

.search-container input {
   padding: 8px 70px;
   border: 1px solid #ddd;
   border-radius: 4px;
   margin-right: 10px;
   outline: none;
   transition: border-color 0.3s;
}

.search-container input:focus {
   border-color: #aaa;
}

.search-container button {
   padding: 8px 15px;
   border: none;
   background-color: #4b81d2;
   color: white;
   border-radius: 4px;
   cursor: pointer;
   transition: background-color 0.3s;
}

#search-container button:hover {
   background-color: #35b3dc;
}

/* search-container에 대한 변경 */
.search-container {
   display: flex;
   align-items: center;
   justify-content: center;
   margin-top: 35px;
   margin-bottom: 20px;
   font-family: 'GmarketSansMedium', cursive;
   width: 100%; /* 필요하다면 폭을 조정하세요 */
}

.faq-button {
   margin-top: 20px; /* 원하는 마진 값으로 조정 */
}

.pagination-wrapper {
   text-align: center;
   margin: 20px 0;
   margin-left: 175px;
}

.pagination {
   display: inline-block;
   padding: 10px 15px;
   border-radius: 15px;
   background-color: #fff; /* Light grey background */
   width: 550px;
}

.page-numbers {
   display: inline-block;
   margin: 0 5px;
   padding: 5px 10px;
   color: #333; /* Dark text for visibility */
   font-size: 16px;
   line-height: normal;
   text-decoration: none; /* Removes underline from links */
}

.page-numbers:hover, .page-numbers.current {
    background-color: #4b81d2; /* Green background for hover/current */
    color: white;
    border-radius: 5px; /* Rounded corners for hover/current */
    transform: scale(1.1); /* 10% 크게 확대 */
    transition: transform 0.3s ease; /* 부드러운 확대/축소 효과 */
}

.page-numbers.prev, .page-numbers.next {
   font-weight: bold; /* Bold text for prev/next */
}


.accordion__content {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.5s ease-out; /* 부드러운 전환 효과 */
}

.accordion__content.active {
    max-height: 500px; /* 활성화될 때 최대 높이, 필요에 따라 조정 */
}

body {
    opacity: 0; /* 페이지가 로드될 때 투명하게 설정 */
    transition: opacity 0.5s ease-in-out; /* 부드러운 효과를 위한 전환 설정 */
}
</style>


</head>
<body>

   <!-- 서브페이지 헤더 -->
   <jsp:include page="../headersub.jsp" flush="false"></jsp:include>

   <main id="content" role="main" class="contentArea on">
      <div data-v-2388e124="" class="container">

         <div data-v-2388e124="" class="contentWrap">
            <div class="search-container">
               <strong data-v-2388e124="" class="title">FAQ 검색</strong>&nbsp;&nbsp;&nbsp;
               <div data-v-0c0ad393="" data-v-2388e124="" class="searchAreaWrap">
                  <input type="text" id="searchInput" placeholder=""
                     onkeypress="handleKeyPress(event)">
                  <button onclick="searchTable()">검색</button>
               </div>
            </div>
            <!---->
            <!---->
            <!---->
            <!---->
            <div data-v-eaa36310="" data-v-2388e124="" class="tabWrap tag big">
               <div data-v-eaa36310="" class="tabArea">
                  <div data-v-eaa36310="" class="scrollArea">
                     <ul data-v-eaa36310="">
                        <li data-v-eaa36310=""><button data-v-eaa36310=""
                              title="선택됨" class="tab active faq-button">
                              <!---->
                              <!---->
                              <span data-v-eaa36310=""><span>자주묻는질문</span></span>
                           </button> <!----></li>

                     </ul>
                  </div>
                  <!---->
                  <!---->
               </div>
               <div data-v-eaa36310="" class="tabContentArea active">
                  <!---->
                  <!---->
                  <ul data-v-4516c336="" data-v-2388e124="" class="accordion"
                     data-v-eaa36310="">
                     <li data-v-9fade9fc="" data-v-2388e124="" class="accordion__item"
                        data-v-4516c336=""><div data-v-9fade9fc=""
                           aria-expanded="상세 내용 펼치기" class="accordion__trigger">
                           <div data-v-2388e124="" data-v-9fade9fc="" class="listTitle">
                              <p data-v-2388e124="" data-v-9fade9fc="">[이용방법] 어떻게 이용하나요?</p>
                           </div>
                        </div>
                        <div data-v-9fade9fc="" class="accordion__content"
                           style="display: none;">
                           <div data-v-9fade9fc="">
                              <div data-v-2388e124="">
                                 <strong>[심리검사 &gt; 검사유형 선택 &gt; 검사진행 &gt; 결과확인 &gt;
                                    마이페이지에서 결과확인]<br> 순으로 서비스를 이용하시면 됩니다!<br> <b><u><a
                                          href="https://www.youtube.com/watch?v=bNkjgqRG5fo"
                                          target="_blank">▶맘이음 이용방법 바로가기</a></u></b>

                                 </strong>
                              </div>
                              <div data-v-2388e124="" class="btnLineArea">
                                 <p data-v-2388e124="">답변이 충분하지 않으셨나요?</p>
                                 <div data-v-326a8cd1="" data-v-2388e124=""
                                    class="buttonGroup normal col2">
                                    <a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 1:1 문의하기 </span> <!---->
                                    </span></a><a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 채팅 문의하기 </span> <!---->
                                    </span></a>
                                 </div>
                              </div>
                           </div>
                        </div></li>
                     <li data-v-9fade9fc="" data-v-2388e124="" class="accordion__item"
                        data-v-4516c336=""><div data-v-9fade9fc=""
                           aria-expanded="상세 내용 펼치기" class="accordion__trigger">
                           <div data-v-2388e124="" data-v-9fade9fc="" class="listTitle">
                              <p data-v-2388e124="" data-v-9fade9fc="">[링크접속] 링크 접속이 되지
                                 않아요!</p>
                           </div>
                        </div>
                        <div data-v-9fade9fc="" class="accordion__content"
                           style="display: none;">
                           <div data-v-9fade9fc="">
                              <div data-v-2388e124="">

                                 <strong>인터넷 및 Wi-Fi 연결 상태를 잘 확인 해 보시고,<br> 계속
                                    연결되지 않을 경우 <u><strong>카카오톡 플러스친구 "맘이음"</u></strong>이나<br>
                                 062-123-1234로 문의 주시면 자세히 안내 해드리겠습니다! </strong>

                              </div>
                              <div data-v-2388e124="" class="btnLineArea">
                                 <p data-v-2388e124="">답변이 충분하지 않으셨나요?</p>
                                 <div data-v-326a8cd1="" data-v-2388e124=""
                                    class="buttonGroup normal col2">
                                    <a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 1:1 문의하기 </span> <!---->
                                    </span></a><a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 채팅 문의하기 </span> <!---->
                                    </span></a>
                                 </div>
                              </div>
                           </div>
                        </div></li>
                     <li data-v-9fade9fc="" data-v-2388e124="" class="accordion__item"
                        data-v-4516c336=""><div data-v-9fade9fc=""
                           aria-expanded="상세 내용 펼치기" class="accordion__trigger">
                           <div data-v-2388e124="" data-v-9fade9fc="" class="listTitle">
                              <p data-v-2388e124="" data-v-9fade9fc="">[이용관련] 이미지가 업로드
                                 되지 않아요!</p>
                           </div>
                        </div>
                        <div data-v-9fade9fc="" class="accordion__content"
                           style="display: none;">
                           <div data-v-9fade9fc="">
                              <div data-v-2388e124="">
                                 <strong>브라우저의 쿠키를 삭제 해보시고,<br> 그럼에도 이미지 등록이 되지
                                    않을 경우,<br> <u><strong>카카오톡 플러스친구 "맘이음"</u></strong>이나
                                 062-123-1234로 문의 주시면 자세히 안내 해드리겠습니다!</strong>
                              </div>
                              <div data-v-2388e124="" class="btnLineArea">
                                 <p data-v-2388e124="">답변이 충분하지 않으셨나요?</p>
                                 <div data-v-326a8cd1="" data-v-2388e124=""
                                    class="buttonGroup normal col2">
                                    <a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 1:1 문의하기 </span> <!---->
                                    </span></a><a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 채팅 문의하기 </span> <!---->
                                    </span></a>
                                 </div>
                              </div>
                           </div>
                        </div></li>
                     <li data-v-9fade9fc="" data-v-2388e124="" class="accordion__item"
                        data-v-4516c336=""><div data-v-9fade9fc=""
                           aria-expanded="상세 내용 펼치기" class="accordion__trigger">
                           <div data-v-2388e124="" data-v-9fade9fc="" class="listTitle">
                              <p data-v-2388e124="" data-v-9fade9fc="">[이용관련] 심리 검사 결과를
                                 어디에서 볼 수 있나요?</p>
                           </div>
                        </div>
                        <div data-v-9fade9fc="" class="accordion__content"
                           style="display: none;">
                           <div data-v-9fade9fc="">
                              <div data-v-2388e124="">
                                 <strong>심리검사가 다 이루어진 직후 및 [마이페이지] > [심리검사결과확인]에서<br>
                                    자녀들의 검사 결과들을 종합하여 확인 할 수 있습니다!
                                 </strong>
                              </div>
                              <div data-v-2388e124="" class="btnLineArea">
                                 <p data-v-2388e124="">답변이 충분하지 않으셨나요?</p>
                                 <div data-v-326a8cd1="" data-v-2388e124=""
                                    class="buttonGroup normal col2">
                                    <a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 1:1 문의하기 </span> <!---->
                                    </span></a><a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 채팅 문의하기 </span> <!---->
                                    </span></a>
                                 </div>
                              </div>
                           </div>
                        </div></li>
                     <li data-v-9fade9fc="" data-v-2388e124="" class="accordion__item"
                        data-v-4516c336=""><div data-v-9fade9fc=""
                           aria-expanded="상세 내용 펼치기" class="accordion__trigger">
                           <div data-v-2388e124="" data-v-9fade9fc="" class="listTitle">
                              <p data-v-2388e124="" data-v-9fade9fc="">[상담관련] 전화로 상담을 받고
                                 싶어요!</p>
                           </div>
                        </div>
                        <div data-v-9fade9fc="" class="accordion__content"
                           style="display: none;">
                           <div data-v-9fade9fc="">
                              <div data-v-2388e124="">
                                 <strong>062-123-1234 및 '광주인공지능사관학교'로 문의주시면 자세히 안내
                                    해드리겠습니다!</strong>
                              </div>
                              <div data-v-2388e124="" class="btnLineArea">
                                 <p data-v-2388e124="">답변이 충분하지 않으셨나요?</p>
                                 <div data-v-326a8cd1="" data-v-2388e124=""
                                    class="buttonGroup normal col2">
                                    <a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 1:1 문의하기 </span> <!---->
                                    </span></a><a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 채팅 문의하기 </span> <!---->
                                    </span></a>
                                 </div>
                              </div>
                           </div>
                        </div></li>
                     <li data-v-9fade9fc="" data-v-2388e124="" class="accordion__item"
                        data-v-4516c336=""><div data-v-9fade9fc=""
                           aria-expanded="상세 내용 펼치기" class="accordion__trigger">
                           <div data-v-2388e124="" data-v-9fade9fc="" class="listTitle">
                              <p data-v-2388e124="" data-v-9fade9fc="">[정보관련] 회원탈퇴는 어떻게
                                 하나요?</p>
                           </div>
                        </div>
                        <div data-v-9fade9fc="" class="accordion__content"
                           style="display: none;">
                           <div data-v-9fade9fc="">
                              <div data-v-2388e124="">
                                 <strong>[마이페이지]를 통해 회원 탈퇴가 가능합니다<br> 더 나은 서비스를
                                    위해 노력하겠습니다!
                                 </strong>
                              </div>
                              <div data-v-2388e124="" class="btnLineArea">
                                 <p data-v-2388e124="">답변이 충분하지 않으셨나요?</p>
                                 <div data-v-326a8cd1="" data-v-2388e124=""
                                    class="buttonGroup normal col2">
                                    <a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 1:1 문의하기 </span> <!---->
                                    </span></a><a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 채팅 문의하기 </span> <!---->
                                    </span></a>
                                 </div>
                              </div>
                           </div>
                        </div></li>
                     <li data-v-9fade9fc="" data-v-2388e124="" class="accordion__item"
                        data-v-4516c336=""><div data-v-9fade9fc=""
                           aria-expanded="상세 내용 펼치기" class="accordion__trigger">
                           <div data-v-2388e124="" data-v-9fade9fc="" class="listTitle">
                              <p data-v-2388e124="" data-v-9fade9fc="">[상담관련] 오프라인 상담은
                                 어디에서 이루어지나요?</p>
                           </div>
                        </div>
                        <div data-v-9fade9fc="" class="accordion__content"
                           style="display: none;">
                           <div data-v-9fade9fc="">
                              <div data-v-2388e124="">
                                 <strong>오프라인 상담은 '맘이음' 내 자체적으로 전문가를 초빙하여 이루어집니다<br>
                                    <u><strong>광주광역시 동구 제봉로 92 광주인공지능사관학교 건물 1층 AI
                                          CAFE</u></strong>에서 상담이 이루어집니다! </strong>
                              </div>
                              <div data-v-2388e124="" class="btnLineArea">
                                 <p data-v-2388e124="">답변이 충분하지 않으셨나요?</p>
                                 <div data-v-326a8cd1="" data-v-2388e124=""
                                    class="buttonGroup normal col2">
                                    <a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 1:1 문의하기 </span> <!---->
                                    </span></a><a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 채팅 문의하기 </span> <!---->
                                    </span></a>
                                 </div>
                              </div>
                           </div>
                        </div></li>
                     <li data-v-9fade9fc="" data-v-2388e124="" class="accordion__item"
                        data-v-4516c336=""><div data-v-9fade9fc=""
                           aria-expanded="상세 내용 펼치기" class="accordion__trigger">
                           <div data-v-2388e124="" data-v-9fade9fc="" class="listTitle">
                              <p data-v-2388e124="" data-v-9fade9fc="">[이용관련] 아이가 그리기
                                 어려운 구조인가요?</p>
                           </div>
                        </div>
                        <div data-v-9fade9fc="" class="accordion__content"
                           style="display: none;">
                           <div data-v-9fade9fc="">
                              <div data-v-2388e124="">
                                 <strong><u><strong>House(집),Tree(나무),Person(사람)</u></strong>으로
                                 객체가 구성 되어있으며<br>어려움 없이 검사 진행이 가능합니다!<br> 고도로 발달된 AI
                                 모델로의 검사로 아이들의 모호한 그림들 정확도 높은 검사가 가능합니다!<br> </strong>
                              </div>
                              <div data-v-2388e124="" class="btnLineArea">
                                 <p data-v-2388e124="">답변이 충분하지 않으셨나요?</p>
                                 <div data-v-326a8cd1="" data-v-2388e124=""
                                    class="buttonGroup normal col2">
                                    <a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 1:1 문의하기 </span> <!---->
                                    </span></a><a data-v-a147120a="" data-v-2388e124=""
                                       href="${cpath}/apply.do" class="util sizeSmall alignLeft"
                                       data-v-326a8cd1=""><span data-v-a147120a=""
                                       class="inner"> <!----> <span data-v-a147120a=""
                                          class=""> 채팅 문의하기 </span> <!---->
                                    </span></a>
                                 </div>
                              </div>
                           </div>
                        </div></li>


                  </ul>
                  <div class="pagination-wrapper">
                     <div class="pagination">
                        <a class="prev page-numbers" href="javascript:;">prev</a> <span
                           aria-current="page" class="page-numbers current">1</span> <a
                           class="page-numbers" href="javascript:;">2</a> <a
                           class="page-numbers" href="javascript:;">3</a> <a
                           class="page-numbers" href="javascript:;">4</a> <a
                           class="page-numbers" href="javascript:;">5</a> <a
                           class="page-numbers" href="javascript:;">6</a> <a
                           class="page-numbers" href="javascript:;">7</a> <a
                           class="page-numbers" href="javascript:;">8</a> <a
                           class="page-numbers" href="javascript:;">9</a> <a
                           class="page-numbers" href="javascript:;">10</a> <a
                           class="next page-numbers" href="javascript:;">next</a>
                     </div>
                  </div>
               </div>
               <div data-v-eaa36310="" class="tabContentArea">
                  <!---->
                  <!---->
               </div>
               <div data-v-eaa36310="" class="tabContentArea">
                  <!---->
                  <!---->
               </div>
               <div data-v-eaa36310="" class="tabContentArea">
                  <!---->
                  <!---->
               </div>
               <div data-v-eaa36310="" class="tabContentArea">
                  <!---->
                  <!---->
               </div>
               <div data-v-eaa36310="" class="tabContentArea">
                  <!---->
                  <!---->
               </div>
               <div data-v-eaa36310="" class="tabContentArea">
                  <!---->
                  <!---->
               </div>
               <div data-v-eaa36310="" class="tabContentArea">
                  <!---->
                  <!---->
               </div>
               <div data-v-eaa36310="" class="tabContentArea">
                  <!---->
                  <!---->
               </div>
               <div data-v-eaa36310="" class="tabContentArea">
                  <!---->
                  <!---->
               </div>
               <div data-v-eaa36310="" class="tabContentArea">
                  <!---->
                  <!---->
               </div>
               <!---->
            </div>
            <!---->
         </div>
      </div>
      <!---->


   </main>

   <script>
      // 클릭 이벤트에 반응하는 함수
      function toggleAccordionContent(event) {
         // 클릭된 요소의 'accordion__content' 클래스를 가진 하위 요소를 찾음
         var contentDiv = event.currentTarget.querySelector('.accordion__content');
         contentDiv.classList.toggle('active');
         // display 속성을 토글
         if (contentDiv.style.display === 'block') {
            contentDiv.style.display = 'none';
         } else {
            contentDiv.style.display = 'block';
         }
      }

      // 모든 'accordion__item' 클래스를 가진 요소에 이벤트 리스너 추가
      var accordionItems = document.querySelectorAll('.accordion__item');
      accordionItems.forEach(function(item) {
         item.addEventListener('click', toggleAccordionContent);
      });
      
      
      
      window.addEventListener('load', function() {
          document.body.style.opacity = '1'; /* 페이지 로드 완료 시 투명도를 1로 변경 */
      });
      
      
      
   </script>


</body>


</html>