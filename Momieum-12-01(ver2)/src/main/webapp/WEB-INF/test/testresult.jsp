<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page
   import="org.springframework.security.core.userdetails.UserDetails"%>
<%@ page
   import="org.springframework.security.core.context.SecurityContextHolder"%>



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

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
   rel="stylesheet">


<link
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
   rel="stylesheet">
<link
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"
   rel="stylesheet">
<link
   href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
   rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
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
   href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />

<script
   src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

<style>
@font-face {
   font-family: 'GmarketSansMedium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, .chat {
   font-family: 'GmarketSansMedium', cursive;
}

.sub_con {
   padding: 40px 0;
   text-align: center;
   width: 100%;
   min-width: 100%;
   z-index: 2;
   margin-left: 25px;
}

html * {
   -webkit-font-smoothing: antialiased;
   -moz-osx-font-smoothing: grayscale;
}

div {
   display: block;
}

.blue_font {
   color: #4da6e7;
   font-size: 1.7em;
   margin-bottom: 20px;
   font-family: 'GmarketSansMedium';
}

element.style {
   color: #1a1a1a;
}

.sub_wfont {
   color: #e0e0e0;
   font-size: 1.3em;
   line-height: 1.7em;
   width: 100%;
   margin: 0 auto;
   padding: 0 10px;
}

.blue_bar {
   width: 90px;
   height: 2px;
   background: #4da6e7;
   margin: 20px auto;
}

.sub8_result_box {
   width: 600px;
   padding: 40px;
   text-align: left;
   border: 1px solid #d9d9d9;
   background: #fff;
   margin: 0 auto;
}

ul, ol, li, div, dl, dt, dd {
   list-style: none;
   margin: 0px;
   padding: 0;
}

.sub8_result_box p.tit {
   font-size: 1.6em;
   color: #333;
   font-weight: 700;
   font-family: 'GmarketSansMedium';
   margin-bottom: 20px;
}

html * {
   -webkit-font-smoothing: antialiased;
   -moz-osx-font-smoothing: grayscale;
}

.sub8_result_box p.tit span {
   display: inline-block;
   width: 40px;
   height: 40px;
   background: #1e4eea;
   line-height: 40px;
   font-size: 1.2em;
   font-family: 'GmarketSansMedium';
   color: #fff;
   text-align: center;
   margin-right: 10px;
   border-radius: 20px;
   -webkit-border-radius: 20px;
   moz-border-radius: 20px;
   -o-border-radius: 20px;
}

.sub8_result_box p:nth-child(2) {
   margin-bottom: 45px;
}

.sub8_result_box p.con {
   font-size: 1.2em;
   color: #1a1a1a;
   line-height: 1.5;
   font-family: 'GmarketSansMedium';
}

.htp_btn2 {
   margin-top: 0px;
}

a:link, a:visited {
   text-decoration: none;
   color:  #4b81d2;
}


.htp_btn2 a, .htp_btn2 input[type=submit] {
   font-size: 1.6em;
   font-family: 'GmarketSansMedium';
   color: #fff;
   display: inline-block;
   width: 450px;
   height: 65px;
   text-align: center;
   line-height: 65px;
   margin: 0 auto 20px;
   background: #869199;
   border-radius: 3px;
   -webkit-border-radius: 3px;
   -moz-border-radius: 3px;
   -o-border-radius: 3px;
   border: none;
}



.htp_btn2>a.kakaoIco {
   width: 75px;
   border: none !important;
   padding: 0 !important;
   background: transparent !important;
   margin-left: 10px;
     background-color: #fff;
}

.kakaoIco:hover{
   color : #a99f1e;
}
.kakao-login {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 15px;
}

.kakaoIco {
    display: flex;
    align-items: center;
    text-decoration: none;
    color: #d8cc24; /* 텍스트 색상 */
    font-weight: bold;
    font-size : 22px;
  
}

.kakaoIco img {
    margin-right: 10px; /* 이미지와 텍스트 사이 간격 */
    width:35px;
}



@import url("https://fonts.googleapis.com/css?family=Roboto");

@
-webkit-keyframes come-in { 0% {
   -webkit-transform: translatey(100px);
   transform: translatey(100px);
   opacity: 0;
}

30
%
{
-webkit-transform
:
translateX(
-50px
)
scale(
0.4
);
transform
:
translateX(
-50px
)
scale(
0.4
);
}
70
%
{
-webkit-transform
:
translateX(
0px
)
scale(
1.2
);
transform
:
translateX(
0px
)
scale(
1.2
);
}
100
%
{
-webkit-transform
:
translatey(
0px
)
scale(
1
);
transform
:
translatey(
0px
)
scale(
1
);
opacity
:
1;
}
}
@
keyframes come-in { 0% {
   -webkit-transform: translatey(100px);
   transform: translatey(100px);
   opacity: 0;
}

30
%
{
-webkit-transform
:
translateX(
-50px
)
scale(
0.4
);
transform
:
translateX(
-50px
)
scale(
0.4
);
}
70
%
{
-webkit-transform
:
translateX(
0px
)
scale(
1.2
);
transform
:
translateX(
0px
)
scale(
1.2
);
}
100
%
{
-webkit-transform
:
translatey(
0px
)
scale(
1
);
transform
:
translatey(
0px
)
scale(
1
);
opacity
:
1;
}
}
* {
   margin: 0;
   padding: 0;
}

html, body {
   background: #eaedf2;
   font-family: 'Roboto', sans-serif;
}

.floating-container {
   position: fixed;
   width: 100px;
   height: 100px;
   bottom: 0;
   right: 0;
   margin: 35px 25px;
}

.floating-container:hover {
   height: 300px;
}

.floating-container:hover .floating-button {
   box-shadow: 0 10px 25px rgba(44, 179, 240, 0.6);
   -webkit-transform: translatey(5px);
   transform: translatey(5px);
   -webkit-transition: all 0.3s;
   transition: all 0.3s;
}

.floating-container:hover .element-container .float-element:nth-child(1)
   {
   -webkit-animation: come-in 0.4s forwards 0.2s;
   animation: come-in 0.4s forwards 0.2s;
}

.floating-container:hover .element-container .float-element:nth-child(2)
   {
   -webkit-animation: come-in 0.4s forwards 0.4s;
   animation: come-in 0.4s forwards 0.4s;
}

.floating-container:hover .element-container .float-element:nth-child(3)
   {
   -webkit-animation: come-in 0.4s forwards 0.6s;
   animation: come-in 0.4s forwards 0.6s;
}

.floating-container .floating-button {
   position: absolute;
   width: 65px;
   height: 65px;
   background: #2cb3f0;
   bottom: 0;
   border-radius: 50%;
   left: 0;
   right: 0;
   margin: auto;
   color: white;
   line-height: 65px;
   text-align: center;
   font-size: 23px;
   z-index: 100;
   box-shadow: 0 10px 25px -5px rgba(44, 179, 240, 0.6);
   cursor: pointer;
   -webkit-transition: all 0.3s;
   transition: all 0.3s;
}

.floating-container .float-element {
   position: relative;
   display: block;
   border-radius: 50%;
   width: 50px;
   height: 50px;
   margin: 15px auto;
   color: white;
   font-weight: 500;
   text-align: center;
   line-height: 50px;
   z-index: 0;
   opacity: 0;
   -webkit-transform: translateY(100px);
   transform: translateY(100px);
}

.floating-container .float-element .material-icons {
   vertical-align: middle;
   font-size: 16px;
}

.floating-container .float-element:nth-child(1) {
   background: #42A5F5;
   box-shadow: 0 20px 20px -10px rgba(66, 165, 245, 0.5);
}

.floating-container .float-element:nth-child(2) {
   background: #4CAF50;
   box-shadow: 0 20px 20px -10px rgba(76, 175, 80, 0.5);
}

.floating-container .float-element:nth-child(3) {
   background: #FF9800;
   box-shadow: 0 20px 20px -10px rgba(255, 152, 0, 0.5);
}

@import
   url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap')
   ;

body {
   background: #EEEEEE;
   font-family: 'Roboto', sans-serif;
}

.card {
   width: 300px;
   border: none;
   border-radius: 15px;
}

.adiv {
   background: #04b7cb;
   border-radius: 15px;
   border-bottom-right-radius: 0;
   border-bottom-left-radius: 0;
   font-size: 12px;
   height: 46px;
}

.chat {
   border: none;
   background: #e2f0ff;
   font-size: 10px;
   border-radius: 20px;
}

.bg-white {
   border: 1px solid #E7E7E9;
   font-size: 10px;
   border-radius: 20px;
}

.myvideo img {
   border-radius: 20px
}

.dot {
   font-weight: bold;
}

.form-control {
   border-radius: 12px;
   border: 1px solid #F0F0F0;
   font-size: 8px;
}

.form-control:focus {
   box-shadow: none;
}

.form-control::placeholder {
   font-size: 8px;
   color: #C4C4C4;
}

/* 챗봇 css */
/* 대화형 컨테이너 스타일 */
.chat-container {
   max-width: 400px;
   margin: 20px auto;
   padding: 20px;
   border: 1px solid #ccc;
   border-radius: 5px;
   background-color: #fff;
   box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* 채팅 로그 스타일 */
.chat-log {
   margin-bottom: 20px;
   padding: 10px;
   border-radius: 5px;
   background-color: #f0f0f0;
   overflow-y: scroll;
   max-height: 200px;
}

/* 사용자 입력 폼 스타일 */
.user-input {
   display: flex;
   align-items: center;
   margin-top: 10px;
}

/* 사용자 입력 필드 스타일 */
#user-input {
   flex: 1;
   padding: 8px;
   border: 1px solid #ccc;
   border-radius: 5px;
   margin-right: 10px;
}

/* 전송 버튼 스타일 */
#send-button {
   padding: 8px 16px;
   background-color: #007bff;
   color: #fff;
   border: none;
   border-radius: 5px;
   cursor: pointer;
   transition: background-color 0.2s;
}

#send-button:hover {
   background-color: #0056b3;
}

/* 로딩 표시 스타일 */
.loading-indicator {
   display: none;
   align-items: center;
   justify-content: center;
   padding: 20px;
}

.spinner {
   border: 4px solid rgba(0, 0, 0, 0.1);
   border-top: 4px solid #007bff;
   border-radius: 50%;
   width: 24px;
   height: 24px;
   animation: spin 1s linear infinite;
}

@
keyframes spin { 0% {
   transform: rotate(0deg);
}

100
%
{
transform
:
rotate(
360deg
);
}
}

/* 채팅 메시지 스타일 */
.message {
   padding: 8px;
   border-radius: 5px;
   margin: 5px 0;
}

/* 사용자 메시지 배경색 */
.user {
   background-color: #def3ff;
}

/* 챗봇 메시지 배경색 */
.bot {
   background-color: #e9e9e9;
}

/**/
/**/
body {
   margin-top: 20px;
}

.chat-online {
   color: #34ce57
}

.chat-offline {
   color: #e4606d
}

.chat-messages {
   display: flex;
   flex-direction: column;
   max-height: 800px;
   overflow-y: scroll
}

.chat-message-left, .chat-message-right {
   display: flex;
   flex-shrink: 0
}

.chat-message-left {
   margin-right: auto
}

.chat-message-right {
   flex-direction: row-reverse;
   margin-left: auto
}

.py-3 {
   padding-top: 1rem !important;
   padding-bottom: 1rem !important;
}

.px-4 {
   padding-right: 1.5rem !important;
   padding-left: 1.5rem !important;
}

.flex-grow-0 {
   flex-grow: 0 !important;
}

.border-top {
   border-top: 1px solid #dee2e6 !important;
}
/**/
/**/

/* 챗봇*/
/* 챗봇 채팅창 스타일 */
/* 챗봇 창 스타일링 */
/* 챗봇 창 스타일링 */
/* 챗봇 스타일링 */
/* 챗봇 스타일링 */
/* 챗봇 스타일링 */
.chat-area {
   background-color: #f2f2f7;
   border-radius: 10px;
   box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
   overflow: hidden;
   width: 90%;
   max-width: 600px;
}

.chat-header {
   background-color: #007bff;
   color: white;
   padding: 10px 20px;
   font-size: 18px;
   text-align: center;
}

.chat-logs {
   background-color: #f9f9f9;
   height: 400px; /* 채팅창 기본 높이 */
   overflow-y: auto;
   padding: 10px;
}

.user-message, .bot-reply {
   max-width: 70%;
   margin-bottom: 10px;
   padding: 8px 15px;
   border-radius: 20px; /* 말풍선 스타일 */
   font-size: 14px;
   line-height: 1.4;
   margin-top: 5px; /* 대화 사이 간격 */
}

.user-message {
   background-color: #007bff;
   color: white;
   margin-left: auto;
   border-bottom-right-radius: 0;
}

.bot-reply {
   background-color: #e5e5ea;
   color: black;
   margin-right: auto;
   border-bottom-left-radius: 0;
}

/* 챗봇 초기 메시지 스타일링 */
.initial-message {
   background-color: #e0f7fa; /* 연한 배경색 */
   border-radius: 20px; /* 모서리 둥글게 */
   padding: 10px 15px; /* 패딩 */
   margin: 10px auto; /* 상하 여백과 좌우 중앙 정렬 */
   text-align: center; /* 텍스트 중앙 정렬 */
   font-family: 'Poppins', sans-serif; /* 글꼴 */
   font-size: 1rem; /* 글꼴 크기 */
   color: #333; /* 글자 색상 */
   display: block; /* 블록 레벨 요소로 설정 */
   max-width: 80%; /* 최대 너비 설정 */
}

/* 별점 */
@import
   url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

.rate {
   display: inline-block;
   border: 0;
   margin-right: 15px;
}

.rate>input {
   display: none;
}

.rate>label {
   float: right;
   color: #ddd
}

.rate>label:before {
   display: inline-block;
   font-size: 1rem;
   padding: .3rem .2rem;
   margin: 0;
   cursor: pointer;
   font-family: FontAwesome;
   content: "\f005 ";
}

.rate .half:before {
   content: "\f089 ";
   position: absolute;
   padding-right: 0;
}

.rate input:checked ~ label, .rate label:hover, .rate label:hover ~
   label {
   color: #f73c32 !important;
}

.rate input:checked+.rate label:hover, .rate input input:checked ~ label:hover,
   .rate input:checked ~ .rate label:hover ~ label, .rate label:hover ~
   input:checked ~ label {
   color: #f73c32 !important;
}

/* 별점 */
</style>

</head>
<body>


   <!-- 서브페이지 헤더 -->
   <jsp:include page="../headersub.jsp" flush="false"></jsp:include>

   <%
   String imageData = request.getParameter("imageData2");

   String resultContent = request.getParameter("resultContent");
   String resultKeyword = request.getParameter("resultKeyword");

   System.out.println(imageData);

   UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
   %>
   <c:set var="objectType" value="${param.objectType}" />

   <div class="sub_con">
      <div class="">
         <div class="blue_font">HTP 검사 결과</div>
         <p class="sub_wfont" style="color: #1a1a1a;">맘이음을 이용해 주셔서 감사합니다.</p>
         <div class="blue_bar"></div>
         <div class="sub8_result_box">
            <p class="tit">
               <span>01</span>검사 결과 요약
            </p>
            <p class="con"><%=resultKeyword%></p>
            <p class="tit">
               <span>02</span>검사 결과 상세 내용
            </p>
            <p class="con"><%=resultContent%></p>
         </div>

      </div>

   </div>

   <form id="insertPreset" action="${cpath}/insertPreset" method="post">
      <input type="hidden" id="test_result" name="testResult"
         class="form-control" value="<%=resultContent%>"> <input
         type="hidden" id="username" name="username" class="form-control"
         value="<%=userDetails.getUsername()%>"> <input type="hidden"
         id="image_data" name="imageData" class="form-control"
         value="<%=imageData%>"> <input type="hidden"
         id="objectType" name="objectType" class=form-control
         " value="${param.objectType}">
      <div class="sub_con" style="padding-top: 0;">
         <div class="">
            <div class="htp_btn2">
               <!-- <button type="submit" class="btn btn-primary">처음으로</button> -->
               <!-- 별점 -->
               <div class="">

                  <fieldset class="rate">
                     <input type="radio" id="rating10" name="rating" value="5"><label
                        for="rating10" title="5점"></label> <input type="radio"
                        id="rating9" name="rating" value="4.5"><label
                        class="half" for="rating9" title="4.5점"></label> <input
                        type="radio" id="rating8" name="rating" value="4"><label
                        for="rating8" title="4점"></label> <input type="radio"
                        id="rating7" name="rating" value="3.5"><label
                        class="half" for="rating7" title="3.5점"></label> <input
                        type="radio" id="rating6" name="rating" value="3"><label
                        for="rating6" title="3점"></label> <input type="radio"
                        id="rating5" name="rating" value="2.5"><label
                        class="half" for="rating5" title="2.5점"></label> <input
                        type="radio" id="rating4" name="rating" value="2"><label
                        for="rating4" title="2점"></label> <input type="radio"
                        id="rating3" name="rating" value="1.5"><label
                        class="half" for="rating3" title="1.5점"></label> <input
                        type="radio" id="rating2" name="rating" value="1"><label
                        for="rating2" title="1점"></label> <input type="radio"
                        id="rating1" name="rating" value="0.5"><label
                        class="half" for="rating1" title="0.5점"></label>

                  </fieldset>
               </div>

               <input type="hidden" id="rating" name="rating">
               <script>
        // Get all star labels and hidden input
        const starLabels = document.querySelectorAll('.label_star');
        const hiddenInput = document.getElementById('selectedStar');
      
        // Attach click event listeners to star labels
        starLabels.forEach(label => {
          label.addEventListener('click', function() {
            // Get the title attribute (star value) of the clicked label
            const starValue = this.getAttribute('title');
      
            // Set the value of the hidden input to the selected star value
            hiddenInput.value = starValue;
      
            // Optionally, you can submit a form or perform other actions here
            // For example, you can submit a form using:
            // document.forms['yourFormName'].submit();
          });
        });
      </script>

               <!-- 별점 -->
               <div class="sub_con" style="padding-top: 0; margin-left:-6px;">
                  <div class="">
                     <div class="htp_btn2">
                        <a type="submit" class="btn btn-primary" onclick="document.getElementById('insertPreset').submit();">처음으로</a>
                     </div>
                     <div class="input-group kakao-login">
                        <a href="#n" class="kakaoIco" style="color: #000000; background-color: #fff;"> <img
                           src="${cpath}/resources/images/kakaologo3.png" alt="카카오톡으로 로그인"
                           title=""> 카카오톡 공유하기
                        </a>
                     </div>
                  </div>
               </div>
               
               
            </div>
         </div>
      </div>
   </form>





   <jsp:include page="../footer.jsp" flush="false"></jsp:include>

   <script>
document.getElementById('send_button').addEventListener('click', function() {
    var userMessage = document.getElementById('user_message').value;
    var chatLogs = document.querySelector('.chat-logs');

    // 사용자 메시지 추가
    if(userMessage.trim() !== '') { // 메시지가 비어있지 않은 경우에만 추가
        var userDiv = document.createElement('div');
        userDiv.className = 'user-message';
        userDiv.textContent = userMessage;
        chatLogs.appendChild(userDiv);
    }

    chatLogs.scrollTop = chatLogs.scrollHeight;

    // 입력창 비우기
    document.getElementById('user_message').value = '';

    // 로딩 메시지 추가
    var loadingDiv = document.createElement('div');
    loadingDiv.className = 'bot-reply loading';
    loadingDiv.textContent = 'Loading';
    chatLogs.appendChild(loadingDiv);
    
    var loadingDots = 0;
    var loadingInterval = setInterval(function() {
        if (loadingDots < 10) {
            loadingDiv.textContent += '.';
            loadingDots++;
        } else {
            loadingDiv.textContent = 'Loading';
            loadingDots = 0;
        }
        chatLogs.scrollTop = chatLogs.scrollHeight;
    }, 500);

    // AJAX 요청
    fetch('http://localhost:5011/chat', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({message: userMessage})
    })
    .then(response => {
        if (response.ok) {
            return response.json();
        } else {
            throw new Error('Server response wasn\'t OK');
        }
    })
    .then(data => {
        clearInterval(loadingInterval);
        loadingDiv.remove();

        var botDiv = document.createElement('div');
        botDiv.className = 'bot-reply';
        botDiv.textContent = data.reply;
        chatLogs.appendChild(botDiv);

        chatLogs.scrollTop = chatLogs.scrollHeight;
    })
    .catch(error => {
        clearInterval(loadingInterval);
        loadingDiv.remove();
        console.error('Error:', error);
        alert("오류가 발생했습니다: " + error.message);
    });
});

// 엔터키 입력 이벤트 추가
document.getElementById('user_message').addEventListener('keypress', function(e) {
    if (e.key === 'Enter' && !e.shiftKey) {
        e.preventDefault();
        document.getElementById('send_button').click();
    }
});

</script>




</body>
</html>