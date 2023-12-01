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

<style>
@font-face {
   font-family: 'GmarketSansMedium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a ,label, btn btn-warning,button,upload-name {
   font-family: 'GmarketSansMedium', cursive;
}


.test-sec01 {
   width: 100%;
   min-height: 100vh;
   max-width: 768px;
   margin: 0 auto;
   padding: 16px 24px;
   box-sizing: border-box;
   display: flex;
   justify-content: flex-start;
   gap: 16px;
   align-items: center;
   flex-direction: column;
}

section {
   position: relative;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
   menu, nav, section {
   display: block;
}

* {
   margin: 0;
   padding: 0;
   word-break: keep-all;
}

user agent stylesheet
section {
   display: block;
}

.wrap {
   width: 100%;
   max-width: 768px;
   margin: 0 auto;
   /* border: 1px solid var(--color-line); */
   background-color: #fff;
   position: relative;
   font-family: "Noto Sans KR", sans-serif;
}

html, body {
   overflow-x: hidden;
   font-family: 'Noto Sans', 'Noto Sans KR', sans-serif;
}

:root { -
   -color-main: #ef4967; -
   -color-bg: #f1f5f9; -
   -color-icon: #94a3b8; -
   -color-line: #e2e8f0; -
   -color-alert: #ef4444; -
   -color-font: #0f172a; -
   -color-text-btn: #64748b; -
   -text-20: 1.25rem; -
   -text-16: 1rem; -
   -text-14: 0.875rem; -
   -text-12: 0.75rem; -
   -text-10: 0.625rem;
}

:root { -
   -color-main: #ef4967; -
   -color-bg: #f1f5f9; -
   -color-icon: #94a3b8; -
   -color-line: #e2e8f0; -
   -color-alert: #ef4444; -
   -color-font: #0f172a; -
   -color-text-btn: #64748b; -
   -text-20: 1.25rem; -
   -text-16: 1rem; -
   -text-14: 0.875rem; -
   -text-12: 0.75rem; -
   -text-10: 0.625rem;
}

::selection {
   background: #F27A79;
   color: #fff;
}

.test-sec01-box {
   padding: 0;
}

.test-sec01-box {
   width: 100%;
   padding: 16px;
   box-sizing: border-box;
   border-radius: 8px;
   position: relative;
   border: 1px solid var(- -color-line);
   background-color: #fff;
   text-align: center;
   box-shadow: 0px 0px 8px 0px #00000026;
   cursor: pointer;
}

a {
   text-decoration: none;
   color: inherit;
}

* {
   margin: 0;
   padding: 0;
   word-break: keep-all;
}

.test-sec01 {
   width: 100%;
   min-height: 100vh;
   max-width: 768px;
   margin: 0 auto;
   padding: 16px 24px;
   box-sizing: border-box;
   display: flex;
   justify-content: flex-start;
   gap: 16px;
   align-items: center;
   flex-direction: column;
   font-size : 20px;
}

section {
   position: relative;
}

.wrap {
   width: 100%;
   max-width: 768px;
   margin: 0 auto;
   /* border: 1px solid var(--color-line); */
   background-color: #fff;
   position: relative;
   font-family: "Noto Sans KR", sans-serif;
}

* {
   margin: 0;
   padding: 0;
   word-break: keep-all;
}

user agent stylesheet
div {
   display: block;
}

html, body {
   overflow-x: hidden;
   font-family: 'Noto Sans', 'Noto Sans KR', sans-serif;
}

:root { -
   -color-main: #ef4967; -
   -color-bg: #f1f5f9; -
   -color-icon: #94a3b8; -
   -color-line: #e2e8f0; -
   -color-alert: #ef4444; -
   -color-font: #0f172a; -
   -color-text-btn: #64748b; -
   -text-20: 1.25rem; -
   -text-16: 1rem; -
   -text-14: 0.875rem; -
   -text-12: 0.75rem; -
   -text-10: 0.625rem;
}

:root { -
   -color-main: #ef4967; -
   -color-bg: #f1f5f9; -
   -color-icon: #94a3b8; -
   -color-line: #e2e8f0; -
   -color-alert: #ef4444; -
   -color-font: #0f172a; -
   -color-text-btn: #64748b; -
   -text-20: 1.25rem; -
   -text-16: 1rem; -
   -text-14: 0.875rem; -
   -text-12: 0.75rem; -
   -text-10: 0.625rem;
}

:root { -
   -color-main: var(- -color-main); -
   -color-bg: var(- -color-bg); -
   -color-icon: var(- -color-icon); -
   -color-line: var(- -color-line); -
   -color-alert: var(- -color-alert); -
   -color-font: var(- -color-font); -
   -color-text-btn: var(- -color-text-btn);
}

::selection {
   background: #F27A79;
   color: #fff;
}

.list__wrapping {
   padding: 16px 16px;
}

.test__category-wrap {
   width: 100%;
   display: flex;
   justify-content: start;
   align-items: center;
   gap: 8px;
   margin-bottom: 5px;
}

.test__category-tag.recomand {
   background-color: #ef4967;
}

.test__category-tag {
   padding: 4px;
   width: fit-content;
   border-radius: 8px;
   font-size: var(- -text-10);
   font-weight: 500;
   color: #fff;
}

.test__category-tag.package {
   background-color: #14b8a6;
}

.test__category-wrap {
   width: 100%;
   display: flex;
   justify-content: start;
   align-items: center;
   gap: 8px;
   margin-bottom: 5px;
}

.test-sec01-box__modfy .best-top {
   text-align: left;
}

.test-box-tit {
   font-size: var(- -text-16);
   font-weight: bold;
}

.test__info-text02 {
   font-size: var(- -text-12);
   color: #212529;
   font-weight: 500;
   text-align: left;
   margin-top: 8px;
}

element.style {
   font-weight: 400;
}

.test-sec01-box__modfy .test-hash-tag-wrap {
   justify-content: start;
   width: 100%;
   flex-flow: wrap;
}

.test-hash-tag-wrap {
   display: flex;
   justify-content: center;
   gap: 4px;
   margin-top: 10px;
}

.tag-gray {
   background-color: #e2e8f0;
   color: #94a3b8;
}

.test-hash-tag {
   width: fit-content;
   text-align: center;
   font-size: var(- -text-12);
   border-radius: 13px;
   padding: 4px 8px;
   box-sizing: border-box;
   white-space: nowrap;
   overflow: hidden;
}

.test-sec01-box__modfy .test-box-bottom {
   justify-content: end;
}

.test-box-bottom {
   display: flex;
   justify-content: center;
   margin-top: 15px;
   gap: 35px;
}

.test-time {
   align-items: end;
}

.test-time {
   font-size: var(- -text-12);
   text-align: center;
   display: flex;
   justify-content: center;
   align-items: center;
   flex-direction: column;
   color: #5e5e5e;
   line-height: 16px;
}

.test-time .red-text {
   font-size: var(- -text-16);
   margin-top: 4px;
}

.red-text {
   color: var(- -color-alert);
   font-weight: bold;
}

.test-box-bottom {
   justify-content: end;
}

.test-box-bottom {
   display: flex;
   justify-content: center;
   margin-top: 15px;
   gap: 35px;
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
   
   
   <section class="test-sec01" style="margin-top: 20px;">
      <a class="test-sec01-box test-sec01-box__modfy "
         onclick="location.href='${cpath}/promptdraw.do'">
         <div class="list__wrapping">
            <div class="test__category-wrap">
               <div class="test__category-tag recomand">맘이음 추천</div>
               <div class="test__category-tag package">신규기능</div>
            </div>
            <div class="best-top">
               <!-- <img src="/mobile/images/best_icon-head.svg" class="best-head" style="margin-left: 15px;" />
                  <span><img src="/mobile/images/best_icon-left.svg" class="best-icon" id="best-icon01" /></span> -->
               <span class="test-box-tit">맘이음 Drawing 솔루션</span>
               <!-- <span><img src="/mobile/images/best_icon-right.svg" class="best-icon" id="best-icon02" /></span> -->
            </div>



            <div class="test__info-text02">
               <span style="font-weight: 400;">검사구성</span> HTP(컴포넌트 화면에 직접 그리기) +
               ChatGPT 연동 해석상담
            </div>
            <div class="test__info-text02">
               <span style="font-weight: 400;">예상 소요시간</span> 최소 10분
            </div>
            <div class="test-hash-tag-wrap">
               <div class="test-hash-tag tag-gray">#직접그리기</div>
               <div class="test-hash-tag tag-gray">#심리</div>
               <div class="test-hash-tag tag-gray">#양육태도</div>
               <div class="test-hash-tag tag-gray">#아동</div>
               <div class="test-hash-tag tag-gray">#무료</div>
            </div>
            <div class="test-box-bottom">
               <div class="test-time">
                  <div></div>
                  <div class="red-text">검사하기</div>
               </div>
            </div>
         </div> <!-- 2023-01-27 add-->
      </a> <a class="test-sec01-box test-sec01-box__modfy "
         onclick="location.href='${cpath}/fileUploadstart.do'">
         <div class="list__wrapping">
            <div class="test__category-wrap">
               <div class="test__category-tag recomand">맘이음 추천</div>
            </div>
            <div class="best-top">
               <!-- <img src="/mobile/images/best_icon-head.svg" class="best-head" style="margin-left: 15px;" />
                  <span><img src="/mobile/images/best_icon-left.svg" class="best-icon" id="best-icon01" /></span> -->
               <span class="test-box-tit">맘이음 FileUpload 솔루션</span>
               <!-- <span><img src="/mobile/images/best_icon-right.svg" class="best-icon" id="best-icon02" /></span> -->
            </div>


            <div class="test__info-text02">
               <span style="font-weight: 400;">검사구성</span> HTP(그림 파일 업로드) +
               ChatGPT 연동 해석상담
            </div>
            <div class="test__info-text02">
               <span style="font-weight: 400;">예상 소요시간</span> 최소 5분
            </div>
            <div class="test-hash-tag-wrap">
               <div class="test-hash-tag tag-gray">#파일업로드</div>
               <div class="test-hash-tag tag-gray">#심리</div>
               <div class="test-hash-tag tag-gray">#양육태도</div>
               <div class="test-hash-tag tag-gray">#아동</div>
               <div class="test-hash-tag tag-gray">#무료</div>
            </div>
            <div class="test-box-bottom">
               <div class="test-time">
                  <div></div>
                  <div class="red-text">검사하기</div>
               </div>
            </div>
         </div> <!-- 2023-01-27 add-->
      </a> <a class="test-sec01-box test-sec01-box__modfy "
         onclick="location.href='${cpath}/preset_choose.do'">
         <div class="list__wrapping">
            <div class="test__category-wrap">
               <div class="test__category-tag recomand">맘이음 추천</div>
            </div>
            <div class="best-top">
               <!-- <img src="/mobile/images/best_icon-head.svg" class="best-head" style="margin-left: 15px;" />
                  <span><img src="/mobile/images/best_icon-left.svg" class="best-icon" id="best-icon01" /></span> -->
               <span class="test-box-tit">맘이음 Preset 솔루션</span>
               <!-- <span><img src="/mobile/images/best_icon-right.svg" class="best-icon" id="best-icon02" /></span> -->
            </div>


            <div class="test__info-text02">
               <span style="font-weight: 400;">검사구성</span> HTP(프리셋 선택) + ChatGPT
               연동 해석상담
            </div>
            <div class="test__info-text02">
               <span style="font-weight: 400;">예상 소요시간</span> 최소 5분
            </div>
            <div class="test-hash-tag-wrap">
               <div class="test-hash-tag tag-gray">#프리셋</div>
               <div class="test-hash-tag tag-gray">#심리</div>
               <div class="test-hash-tag tag-gray">#양육태도</div>
               <div class="test-hash-tag tag-gray">#아동</div>
               <div class="test-hash-tag tag-gray">#무료</div>
            </div>
            <div class="test-box-bottom">
               <div class="test-time">
                  <div></div>
                  <div class="red-text">검사하기</div>
               </div>
            </div>
         </div> <!-- 2023-01-27 add-->
      </a>


   </section>


   <!-- 푸터 페이지 -->
   <jsp:include page="../footer.jsp" flush="false"></jsp:include>

<script>
window.addEventListener('load', function() {
    document.body.style.opacity = '1'; /* 페이지 로드 완료 시 투명도를 1로 변경 */
});

</script>

</body>
</html>