<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.core.userdetails.UserDetails"%>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Log in (v2)</title>

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

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
   href="${cpath}/resources/admin/plugins/fontawesome-free/css/all.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet"
   href="${cpath}/resources/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
   href="${cpath}/resources/admin/dist/css/adminlte.min.css">


<style>
@font-face {
   font-family: 'GmarketSansMedium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, b, input,
   div>h2, strong, td>input {
   font-family: 'GmarketSansMedium', cursive;
}

@media screen and (min-width: 1070px) .list-box {
   margin-top
   
   
   :
   
    
   
   40px
   
   
   ;
}

@media screen and (min-width: 1070px) h3.doc_tit02 {
   padding
   
   
   :
   
    
   
   0
   
    
   
   0
   
    
   
   13px
   
    
   
   34px
   
   
   ;
   font-size
   
   
   :
   
    
   
   25px
   
   
   ;
}

h3.doc_tit02 {
   position: relative;
   padding: 0 0 13px 18px;
   font-weight: 500;
   font-size: 16px;
   color: #333;
   letter-spacing: -0.05em;
}

.txt_p {
   margin-left: 34px;
   margin-bottom: 40px;
   font-size: 20px;
}

p {
   display: block;
   margin-block-start: 1em;
   margin-block-end: 1em;
   margin-inline-start: 0px;
   margin-inline-end: 0px;
}

h3 {
   display: block;
   font-size: 1.17em;
   margin-block-start: 1em;
   margin-block-end: 1em;
   margin-inline-start: 0px;
   margin-inline-end: 0px;
   font-weight: bold;
}

.tip-red {
   font-size: .8em;
   line-height: 120%;
   position: relative;
   padding-left: 20px;
   color: #ca420d;
}

.rsvt_step {
   margin-top: 40px;
}

ol, ul, li, dl, dt, dd {
   list-style: none outside none;
}

.rsvt_step>ul>li:nth-child(1) {
   background-image: url("${cpath}/resources/images/applyimage1.png");
}

.rsvt_step>ul>li:nth-child(2) {
   background-image: url("${cpath}/resources/images/applyimage2.png");
}

.rsvt_step>ul>li:nth-child(3) {
   background-image: url("${cpath}/resources/images/applyimage3.png");
}

.rsvt_step>ul>li:nth-child(4) {
   background-image: url("${cpath}/resources/images/applyimage4.png");
}

.rsvt_step>ul>li:first-child {
   margin-left: 0;
}

.rsvt_step>ul>li {
   position: relative;
   float: left;
   width: calc(25% - 27px);
   margin-left: 35px;
   padding-top: 200px;
   background-repeat: no-repeat;
   background-position: top center;
}

.rsvt_step>ul>li>strong {
   display: block;
   text-align: center;
   font-size: 20px;
   font-weight: 600;
   color: #333;
}

.rsvt_step>ul>li>p {
   position: relative;
   padding-left: 18px;
   margin: 15px 0 10px;
   font-size: 17px;
   color: #333;
   word-break: keep-all;
}

.rsvt_step>ul>li>span {
   position: relative;
   display: block;
   padding-left: 18px;
   font-size: 15px;
   color: #ca420d;
   word-break: keep-all;
}

.s_link {
   display: inline-block;
   width: 36px;
   height: 36px;
   vertical-align: middle;
   text-indent: -9999px;
   background: url(../images/main/img_kakao02.jpg) no-repeat;
   background-size: 100%;
}

.btn_wrap {
   text-align: center;
   font-size: 0;
}

.wrap-tab-container .btn_normal.blue {
   font-family: 'BMDOHYEON';
   line-height: 68px;
   border-radius: 100px;
}

.btn_normal.blue {
   background: #1351b8;
   border-color: #235596;
}

.btn_normal:last-child {
   margin-right: 0;
}

.btn_wrap a, .btn_wrap button {
   box-sizing: border-box;
   text-align: center;
   vertical-align: top;
}

#tab-panel-02 {
   max-width: 870px; /* 최대 너비 설정 */
   margin: 0 auto; /* 상하 여백은 0, 좌우 여백은 자동으로 설정하여 가운데 정렬 */
}

.doc_tit02 .fas {
   color: #1351b8; /* 아이콘 색상 */
   margin-right: 10px; /* 텍스트와의 여백 */
}

.fusion-accordian .panel-heading {
   padding: 0;
   background: none;
}

.post-content h4, .project-content .project-info h4, .share-box h4,
   .fusion-title h4, .title h4, #wrapper .tab-holder .tabs li a,
   .fusion-accordian .panel-title a {
   color: #333333;
}

.fusion-accordian .panel-title a {
   font-size: 15px;
}

.fusion-accordian .panel-title a .fa-fusion-box {
   background-color: #fff;
}

.fusion-accordian .panel-title a .fa-fusion-box {
   display: inline-block;
   float: left;
   margin-right: 18px;
   width: 22px;
   height: 22px;
   background-color: #fff;
   font-size: 13px;
   color: #fff;
   text-align: center;
   line-height: 22px;
   font-family: 'fontawesome';
   -webkit-font-smoothing: subpixel-antialiased;
}

.project-content .project-info h4, .fusion-accordian .panel-body {
   line-height: 20px;
}

.fusion-accordian .panel-title a .fa-fusion-box:before {
   font-family: 'fontawesome';
   content: "\f078";
   font-style: normal;
   line-height: 22px;
   font-size: 13px;
}

.fusion-accordian .panel-title a .fa-fusion-box {
   display: inline-block;
   float: left;
   margin-right: 18px;
   width: 22px;
   height: 22px;
   background-color: #4b81d2;
   font-size: 13px;
   color: #fff;
   text-align: center;
   line-height: 22px;
   font-family: 'fontawesome';
   -webkit-font-smoothing: subpixel-antialiased;
}

.btn-apply {
   display: inline-block;
   padding: 15px 30px;
   background-color: #4b81d2; /* 버튼 배경색 */
   color: white; /* 텍스트 색상 */
   font-size: 18px; /* 텍스트 크기 */
   border: none; /* 테두리 제거 */
   border-radius: 30px; /* 둥근 테두리 모서리 */
   text-decoration: none; /* 링크 밑줄 제거 */
   font-weight: 600; /* 폰트 굵기 */
   transition: background-color 0.3s, box-shadow 0.3s;
   /* 부드러운 배경 및 그림자 효과 전환 */
   box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* 그림자 효과 */
   cursor: pointer; /* 커서 스타일 */
}

.btn-apply:hover {
   background-color: #fff; /* 버튼 호버시 배경색 */
   box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3); /* 호버시 그림자 효과 증가 */
}

#tab-panel-02 {
   padding-bottom: 80px; /* 필요한 만큼의 공간을 지정하세요 */
}

body {
   opacity: 0; /* 페이지가 로드될 때 투명하게 설정 */
   transition: opacity 0.5s ease-in-out; /* 부드러운 효과를 위한 전환 설정 */
}

form {
    max-width: 600px; /* 폼의 최대 너비 */
    margin: 0 auto; /* 가운데 정렬 */
    padding: 20px;
    background: #f9f9f9; /* 배경색 */
    border-radius: 10px; /* 모서리 둥글게 */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
}

/* 테이블 스타일 */
table {
    width: 100%; /* 테이블 전체 너비 */
    border-collapse: collapse; /* 테이블 간격 없애기 */
}

td {
    padding: 10px; /* 셀 패딩 */
}

/* 입력 필드 스타일 */
input[type="text"] {
    width: 100%; /* 입력 필드 너비 */
    padding: 10px; /* 패딩 */
    margin: 5px 0; /* 상하 여백 */
    border: 1px solid #ddd; /* 테두리 */
    border-radius: 5px; /* 모서리 둥글게 */
}

/* 버튼 스타일 */
button[type="submit"] {
    width: 100%; /* 버튼 너비 */
    padding: 10px; /* 패딩 */
    border: none; /* 테두리 없앰 */
    border-radius: 5px; /* 모서리 둥글게 */
    background-color: #4b81d2; /* 배경색 */
    color: white; /* 글자색 */
    cursor: pointer; /* 커서 스타일 */
    transition: background-color 0.3s; /* 호버 효과 */
}

button[type="submit"]:hover {
    background-color: #0056b3; /* 호버 시 배경색 변경 */
}

/* 제목 스타일 */
.join2 {
    color: #fff; /* 글자색 */
    font-weight: bold; /* 글자 굵기 */
}


</style>

</head>

<body>


   <!-- 서브페이지 헤더 -->
   <jsp:include page="headersub.jsp" flush="false"></jsp:include>

   <% UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal(); %>

   <div id="tab-panel-02" class="tab-contents" role="tabpanel"
      aria-labelledby="tab-02" tabindex="0">
      <!-- cont s -->
      <br> <br>
      <div class="list-box">
         <h3 class="doc_tit02" style="color: #000000; font-size: 30px;">
            <i class="fas fa-info-circle"></i> 맘이음 오프라인 상담 예약 안내
         </h3>
         <p class="txt_p" style="margin-bottom: 10px; font-size: 18px;">-
            맘이음의 모든 상담은 예약제로 진행됩니다</p>
         <p class="txt_p tip-red" style="font-size: .9em;">
            <span class="bullet">※</span> 카카오톡 알림 및 마이페이지에서 예약 내용을 확인할 수 있습니다!<br>전화
            062-123-1234, 이메일 momeium@gmail.com 또는 홈페이지를 통해 문의 및 예약 접수를 합니다. <br>문의
            사항이 있으시면, 하단 양식 또는 카카오톡(ID : momieum)으로 문의하실 수 있습니다.
         </p>
         <div class="accordian fusion-accordian"
            style="margin-left: 70px; margin-bottom: 30px; margin-top: -20px;">
            <div class="panel-group" id="accordion-1">
               <div class="fusion-panel panel-default">
                  <div class="panel-heading">
                     <h4 class="panel-title toggle">
                        <a data-toggle="collapse" data-parent="#accordion-1"
                           data-target="#8e74e7178ec1f94c8" href="#8e74e7178ec1f94c8"
                           class="collapsed"><i class="fa-fusion-box"></i>당일예약도 가능한가요?</a>
                     </h4>
                  </div>
                  <div id="8e74e7178ec1f94c8" class="panel-collapse collapse"
                     style="height: 0px;">
                     <div class="panel-body toggle-content">예. 당일 예약도 가능합니다. 다만,
                        당일에는 상담 예약이 모두 차 있는 경우가 많아 예약이 어려울 수 있으니, 가능하신 시간이 정해지시는대로 미리
                        전화를 통해 예약하시는 것이 가장 좋습니다.</div>
                  </div>
               </div>
               <div class="fusion-panel panel-default">
                  <div class="panel-heading">
                     <h4 class="panel-title toggle">
                        <a data-toggle="collapse" data-parent="#accordion-1"
                           data-target="#8d796abdf942e9d1e" href="#8d796abdf942e9d1e"
                           class="collapsed"><i class="fa-fusion-box"></i>예약 후 취소 및
                           변경은 가능한가요?</a>
                     </h4>
                  </div>
                  <br>
                  <div id="8d796abdf942e9d1e" class="panel-collapse collapse"
                     style="height: 0px;">
                     <div class="panel-body toggle-content">예. 예약 하신 후 취소 및 변경도
                        가능합니다만, 최소 1일 전까지 미리 연락을 주시기 바랍니다. 개인을 위해 한 시간 가량의 시간을 예약하고 있다는
                        사실을 염두에두시고, 당일취소는 삼가주시기 바랍니다.</div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="list-box">
         <h3 class="doc_tit02" style="color: #000000; font-size: 30px;">
            <i class="fas fa-info-circle"></i>맘이음 오프라인 상담 분야 및 신청대상
         </h3>
         <p class="txt_p" style="margin-bottom: 2px; font-size: 18px;">
            - 상담분야 : HTP검사를 통한 상담 및 비언어적 표현을 기반으로 아동 및 청소년, 가족, 교육 등 다양한 상담 <br>
            - 신청대상 : 부모와 아동 특화(제한없음)
         </p>
      </div>
      <br>
      <div class="rsvt_step">
         <h3 class="doc_tit02" style="color: #000000; font-size: 30px;">
            <i class="fas fa-info-circle"></i>맘이음 상담 신청 절차
         </h3>
         <ul>
            <li><strong><span>01</span>.상담 신청</strong>
               <p>상담장소 및 프로그램 정보 확인 후 상담을 신청하고 관리자의 승인을 기다립니다.</p></li>
            <li><strong><span>02</span>.신청서 승인</strong>
               <p>담당자는 신청 일정 및 내용을 확인하고 대면·상담 시간 가능 여부 내용을 신청자에게 전송합니다.</p>
            <li><strong><span>03</span>.상담 진행</strong>
               <p>카카오톡 알림으로 상담일자,시간,장소를 확인하고 참여하여 1:1 대면 상담을 진행(실시)합니다.</p></li>
            <li><strong><span>04</span>.상담 완료</strong>
               <p>완료된 상담 이력은 [마이페이지] 메뉴에서 확인할 수 있습니다.</p></li>
         </ul>
      </div>
      <div style="clear: both;"></div>
      <br><br>
      <form action="${cpath}/applyForm" method="post">
         <div class="member">
            <table style="text-align: center; border: transparent;"
               class="table table-bordered">
               <div class="field">
                  <!-- 신청자 이름 -->
                  <tr>
                     <td style="width: 110px; color: gray; vertical-align: middle;"><b
                        class="join">이름</b></td>
                     <td colspan="2"><input type="text" id="consult_name"
                        name="consultName" class="form-control" maxlength="20"
                        placeholder="이름을 입력하세요."></td>
                  </tr>
               </div>
               <div class="field">
                  <!-- 신청자 생년월일 -->
                  <tr>
                     <td style="width: 110px; color: gray; vertical-align: middle;"><b
                        class="join">상담희망일자</b></td>
                     <td colspan="2"><input type="text" id="consult_date"
                        name="consultDate" class="form-control" maxlength="20"
                        placeholder="상담희망일자을 입력하세요. (ex)1999-12-25"></td>
                  </tr>
               </div>
               <div class="field">
                  <tr>
                     <td style="width: 110px; color: gray; vertical-align: middle;"><b
                        class="join">신청사유</b></td>
                     <td colspan="2"><input type="text" name="consultContent"
                        id="consult_content" class="form-control" maxlength="50"
                        placeholder="신청사유를 간략히 입력하세요."></td>
                  </tr>
               </div>

            </table>
         </div>
         
         <input type="hidden" id="username" name="username"
                                          class="form-control"
                                          value="<%=userDetails.getUsername()%>">
      
      <div class="input-group">
         <button type="submit" id="form-submit" class="main-button">
            <b class="join2">상담 신청하기</b>
         </button>
      </div>
</form>
      <!-- cont e -->
   </div>


   <script>
      window.addEventListener('load', function() {
         document.body.style.opacity = '1'; /* 페이지 로드 완료 시 투명도를 1로 변경 */
      });
   </script>
</body>
</html>