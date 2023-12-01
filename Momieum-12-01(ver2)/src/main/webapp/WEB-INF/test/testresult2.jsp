<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>

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

<style>
@font-face {
   font-family: 'GmarketSansMedium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, .chat, div > button, .chatbot-toggle-btn {
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


translateX
(


-50px


)


scale
(


0
.4


)
;


transform


:


translateX
(


-50px


)


scale
(


0
.4


)
;


}
70


%
{
-webkit-transform


:


translateX
(


0px


)


scale
(


1
.2


)
;


transform


:


translateX
(


0px


)


scale
(


1
.2


)
;


}
100


%
{
-webkit-transform


:


translatey
(


0px


)


scale
(


1


)
;


transform


:


translatey
(


0px


)


scale
(


1


)
;


opacity


:


1
;


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


translateX
(


-50px


)


scale
(


0
.4


)
;


transform


:


translateX
(


-50px


)


scale
(


0
.4


)
;


}
70


%
{
-webkit-transform


:


translateX
(


0px


)


scale
(


1
.2


)
;


transform


:


translateX
(


0px


)


scale
(


1
.2


)
;


}
100


%
{
-webkit-transform


:


translatey
(


0px


)


scale
(


1


)
;


transform


:


translatey
(


0px


)


scale
(


1


)
;


opacity


:


1
;


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

.sub8_comple_box {
    width: 600px;
    height: 383px;
    margin: 0 auto;
    border: 1px solid #fff;
    background: url(/images/comple_img.png) no-repeat center 50px #fff;
    padding-top: 265px;
}

.sub8_comple_box {
   position: relative; /* 포지셔닝 컨텍스트 설정 */
   /* 기존 스타일 유지 */
}

.sub8_comple_box img {
   position: absolute; /* 절대 위치 설정 */
   top: 45%; /* 상단에서 50% 위치 */
   left: 50%; /* 왼쪽에서 50% 위치 */
   transform: translate(-50%, -50%); /* 중앙 정렬 */
   max-width: 100%; /* 최대 너비 조정 */
   height: auto; /* 높이 자동 조정 */
}

/* 만약 testresult2.do에서 그림이 comple_box에 안맞으면 여기서 조정 */
.canvas-image {
   width: 350px; /* 원하는 너비로 설정 */
   height: auto; /* 높이를 자동으로 조정 */
   display: block; /* 블록 레벨 요소로 만들기 */
   margin: 0 auto; /* 중앙 정렬 */
}

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
/* 챗봇 컨테이너 스타일 */
.chat-container {
    position: fixed;
    bottom: 20px;
    right: 20px;
    width: 300px;
    background-color: #fff;
    border-radius: 15px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    overflow: hidden;
    z-index: 1000;
     transition: max-height 0.4s ease-out;
     max-height: 500px; /* 챗봇 열린 상태의 최대 높이 */
    margin-bottom: 50px;
}

.chat-container.closed {
    max-height: 0; /* 챗봇 닫힌 상태 */
}

.chat-header {
    background-color: #414685;
    color: #fff;
    padding: 10px 20px;
    text-align: center;
    display: flex; /* Flex 컨테이너 설정 */
    align-items: center; /* 수직 방향으로 중앙 정렬 */
    justify-content: flex-start; /* 수평 방향으로 왼쪽 정렬 */
}

/* 챗봇 로그스 */
.chat-logs {
    height: 300px;
    overflow-y: auto;
    padding: 10px;
    background-color: #f2f2f7;
}

.user-message {
    background-color: #4d7095;
    color: #fff;
    padding: 8px 12px;
    margin: 5px 0 5px auto;
    border-radius: 20px;
    border-bottom-right-radius: 0;
    max-width: 70%;
}

/* 봇의 답변 */
.bot-reply {
    background-color: #e5e6e6;
    color: #333;
    padding: 8px 12px;
    margin: 5px auto 5px 0;
    border-radius: 20px;
    border-bottom-left-radius: 0;
    max-width: 70%;
}

.user-message {
    background-color: #6486ac;
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
    background-color: #e5e6e6; /* 연한 배경색 */
    border-radius: 20px; /* 모서리 둥글게 */
    padding: 10px 15px; /* 패딩 */
    margin: 10px auto; /* 상하 여백과 좌우 중앙 정렬 */
    font-family: 'Poppins', sans-serif; /* 글꼴 */
    font-size: 1rem; /* 글꼴 크기 */
    color: #333; /* 글자 색상 */
    display: block; /* 블록 레벨 요소로 설정 */
    max-width: 95%; /* 최대 너비 설정 */
}

/* 입력창 */
.chat-input {
    border-top: 1px solid #ddd;
    padding: 10px;
}

/* 텍스트 입력창 */
.chat-input textarea {
    width: 100%;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 8px;
}

/* 전송 버튼 */
.chat-input button {
    width: 100%;
    padding: 8px 0;
    margin-top: 5px;
    background-color:  #414685;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

/* 스크롤바 스타일 */
.chat-logs::-webkit-scrollbar {
    width: 5px;
}

.chat-logs::-webkit-scrollbar-thumb {
    background:  #bababa;
    border-radius: 10px;
}

.resized-image2 {
    width: 30px; /* 예시 크기, 필요에 따라 조절 */
    height: auto;
    margin-right: 30px; /* 이미지와 텍스트 사이의 간격 */
}

.chatbtn {
   background-color : #bababa;
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


body {
    opacity: 0; /* 페이지가 로드될 때 투명하게 설정 */
    transition: opacity 0.5s ease-in-out; /* 부드러운 효과를 위한 전환 설정 */
}

.chatbot-toggle-btn {
    position: fixed;
    bottom: 10px;
    right: 10px;
    background-color: #414685; /* 버튼 배경 색상 */
    color: white; /* 텍스트 색상 */
    border: none;
    border-radius: 15px;
    padding: 5px 15px;
    cursor: pointer;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
    margin-right:9px;
   margin-bottom:12px;
}

/* 별점 */
@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
       .rate { display: inline-block;border: 0;margin-right: 15px;}
.rate > input {display: none;}
.rate > label {float: right;color: #ddd}
.rate > label:before {display: inline-block;font-size: 5rem;padding: .3rem .2rem;margin: 0;cursor: pointer;font-family: FontAwesome;content: "\f005 ";}
.rate .half:before {content: "\f089 "; position: absolute;padding-right: 0;}
.rate input:checked ~ label, 
.rate label:hover,.rate label:hover ~ label { color: #f73c32 !important;  } 
.rate input:checked + .rate label:hover,
.rate input input:checked ~ label:hover,
.rate input:checked ~ .rate label:hover ~ label,  
.rate label:hover ~ input:checked ~ label { color: #f73c32 !important;  } 

/* 별점 */ 

</style>

</head>
<body>


   <!-- 서브페이지 헤더 -->
   <jsp:include page="../headersub.jsp" flush="false"></jsp:include>

   <%
   String imageData = (String) request.getParameter("imageData");
   String testType = request.getParameter("testType");
   String testTitle = "";
      if ("tree".equals(testType)) {
          testTitle = "나무(TREE) 검사 결과 상세 내용";
      } else if ("house".equals(testType)) {
          testTitle = "집(HOUSE) 검사 결과 상세 내용";
      } else if ("person".equals(testType)) {
          testTitle = "사람(PERSON) 검사 결과 상세 내용";
      }
      
   UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
   String username = userDetails.getUsername();   
   %>

   <div class="sub_con">
      <div class="">
         <div class="blue_font">HTP 검사 결과</div>
         <p class="sub_wfont" style="color: #1a1a1a;">맘이음을 이용해 주셔서 감사합니다.</p>
         <div class="blue_bar"></div>
         <div class="sub8_comple_box">
               <c:if test="${not empty imageData}">
                   <img src="data:image/jpeg;base64,${imageData}" class="canvas-image" alt="Test Image"/>
               </c:if>
               <c:if test="${empty imageData}">
                   <p>이미지가 없습니다.</p>
               </c:if>
           </div>
         <div class="sub8_result_box">
            <p class="tit">
             <%= testTitle %>
            </p>
              <c:if test="${not empty result}">
                 <p class="con">${result.testResult}</p>
             </c:if>
             <c:if test="${empty result}">
                null
             </c:if>
            
         </div>

      </div>

   </div>

   <div class="sub_con" style="padding-top: 0;">
      <div class="">
         <!-- 별점 부분 -->
			<div class="htp_btn2">
			    <div class="">
			        <fieldset class="rate">
			            <input type="radio" id="rating10" name="rating" value="5" onclick="submitRating()"><label for="rating10" title="5점"></label>
			            <input type="radio" id="rating9" name="rating" value="4.5" onclick="submitRating()"><label class="half" for="rating9" title="4.5점"></label>
			            <input type="radio" id="rating8" name="rating" value="4" onclick="submitRating()"><label for="rating8" title="4점"></label>
			            <input type="radio" id="rating7" name="rating" value="3.5" onclick="submitRating()"><label class="half" for="rating7" title="3.5점"></label>
			            <input type="radio" id="rating6" name="rating" value="3" onclick="submitRating()"><label for="rating6" title="3점"></label>
			            <input type="radio" id="rating5" name="rating" value="2.5" onclick="submitRating()"><label class="half" for="rating5" title="2.5점"></label>
			            <input type="radio" id="rating4" name="rating" value="2" onclick="submitRating()"><label for="rating4" title="2점"></label>
			            <input type="radio" id="rating3" name="rating" value="1.5" onclick="submitRating()"><label class="half" for="rating3" title="1.5점"></label>
			            <input type="radio" id="rating2" name="rating" value="1" onclick="submitRating()"><label for="rating2" title="1점"></label>
			            <input type="radio" id="rating1" name="rating" value="0.5" onclick="submitRating()"><label class="half" for="rating1" title="0.5점"></label>
			        </fieldset>
			    </div>
			    
			    

		<input type="hidden" id="rating" name="rating">

            <a href="${cpath}/htp.do" class="">처음으로</a> 

      
      </div>
         <div class="input-group kakao-login">
            <a href="#n" class="kakaoIco" style="color:#000000;"> <img src="${cpath}/resources/images/kakaologo3.png" alt="카카오톡으로 로그인" title=""> 카카오톡 공유하기</a>
      	</div>
      </div>
   </div>

<!-- 챗봇 디자인 -->
<button id="chatbot-toggle" class="chatbot-toggle-btn">챗봇 닫기</button>
<div class="container d-flex justify-content-center">
    <div class="chat-container">
    <div class="chat-header"><img src="${cpath}/resources/images/gptlogo.png" class="resized-image2"><h6>맘이음 결과 상담 챗봇</h6></div>
    <div class="chat-logs">
            <div class='bot-reply initial-message'><div class='bot-reply initial-message'>
    <p> 검사 결과에 대하여 궁금한 점을 물어보세요! HTP 심리검사와 관련된 질문에 대해서만 답변드릴 수 있습니다. 
    ex.<u><p>'나무 그림의 의미는 무엇인가요?', '집 그림이 나타내는 심리적 특성은?', '사람 그림 분석에 대해 알려주세요'</u></p><p>와 같은 질문들을 하실 수 있습니다.</p>
</div>
</div> <!-- 초기 메시지 -->
        </div>
        <!-- 사용자 메시지 입력 -->
        <div class="chat-input form-group px-3">
           <textarea class="form-control" id="user_message" rows="3" placeholder="여기에 메시지를 입력하세요..."></textarea>
        <button class="chatbtn" id="send_button">보내기</button>
        </div>
    </div>
</div>








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
window.addEventListener('load', function() {
    document.body.style.opacity = '1'; /* 페이지 로드 완료 시 투명도를 1로 변경 */
});


document.addEventListener('DOMContentLoaded', function() {
    var chatbot = document.querySelector('.chat-container');
    var toggleButton = document.getElementById('chatbot-toggle');

    toggleButton.addEventListener('click', function() {
        // 챗봇 열기/닫기 상태 토글
        chatbot.classList.toggle('closed');

        if (chatbot.classList.contains('closed')) {
            toggleButton.textContent = '챗봇 열기';
        } else {
            toggleButton.textContent = '챗봇 닫기';
        }
    });
});

//별점을 선택하고 저장하는 함수
function submitRating() {
    var rating = document.querySelector('input[name="rating"]:checked').value;
    var username = '<%=username%>';  // 실제 사용자 이름 또는 ID

    fetch('saveRating', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: 'rating=' + encodeURIComponent(rating) + '&username=' + encodeURIComponent(username)
    })
    .then(response => {
        if (response.ok) {
            return response.text();
        } else {
            throw new Error('Network response was not ok.');
        }
    })
    .then(result => {
        alert('별점이 저장되었습니다!');
    })
    .catch(error => {
        console.error('오류가 발생했습니다:', error);
    });
}

</script>