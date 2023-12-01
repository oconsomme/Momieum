<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />  
    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 템플릿 -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    
     <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
     <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="stylesheet">
     <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
     <link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="${cpath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="${cpath}/resources/css/fontawesome.css">
    <link rel="stylesheet" href="${cpath}/resources/css/templatemo-digimedia-v3.css">
    <link rel="stylesheet" href="${cpath}/resources/css/animated.css">
    <link rel="stylesheet" href="${cpath}/resources/css/owl.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"/>
	
	<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
   
<style>
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2 , .h2, h1, .h1, p, a, .chat {
font-family : 'GmarketSansMedium', cursive;
}

.sub_con {
    padding: 40px 0;
    text-align: center;
    width: 100%;
    min-width: 100%;
    z-index: 2;
    margin-left : 25px;
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
    background: #4da6e7;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    -o-border-radius: 3px;
    border: none;
    
}

a:link, a:visited {
    text-decoration: none;
    color: #fff;
}

.htp_btn2 > a.kakaoIco {
    width: 75px;
    border: none !important;
    padding: 0 !important;
    background: transparent !important;
    margin-left: 10px;
    
}


@import url("https://fonts.googleapis.com/css?family=Roboto");
@-webkit-keyframes come-in {
  0% {
    -webkit-transform: translatey(100px);
            transform: translatey(100px);
    opacity: 0;
  }
  30% {
    -webkit-transform: translateX(-50px) scale(0.4);
            transform: translateX(-50px) scale(0.4);
  }
  70% {
    -webkit-transform: translateX(0px) scale(1.2);
            transform: translateX(0px) scale(1.2);
  }
  100% {
    -webkit-transform: translatey(0px) scale(1);
            transform: translatey(0px) scale(1);
    opacity: 1;
  }
}
@keyframes come-in {
  0% {
    -webkit-transform: translatey(100px);
            transform: translatey(100px);
    opacity: 0;
  }
  30% {
    -webkit-transform: translateX(-50px) scale(0.4);
            transform: translateX(-50px) scale(0.4);
  }
  70% {
    -webkit-transform: translateX(0px) scale(1.2);
            transform: translateX(0px) scale(1.2);
  }
  100% {
    -webkit-transform: translatey(0px) scale(1);
            transform: translatey(0px) scale(1);
    opacity: 1;
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
.floating-container:hover .element-container .float-element:nth-child(1) {
  -webkit-animation: come-in 0.4s forwards 0.2s;
          animation: come-in 0.4s forwards 0.2s;
}
.floating-container:hover .element-container .float-element:nth-child(2) {
  -webkit-animation: come-in 0.4s forwards 0.4s;
          animation: come-in 0.4s forwards 0.4s;
}
.floating-container:hover .element-container .float-element:nth-child(3) {
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

@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');
body{
	background: #EEEEEE;
	font-family: 'Roboto', sans-serif;
}
.card{
	width: 300px;
	border: none;
	border-radius: 15px;
}
.adiv{
	background: #04b7cb;
	border-radius: 15px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
	font-size: 12px;
	height: 46px;
}
.chat{
	border: none;
	background: #e2f0ff;
	font-size: 10px;
	border-radius: 20px;
}
.bg-white{
	border: 1px solid #E7E7E9;
	font-size: 10px;
	border-radius: 20px;
}
.myvideo img{
	border-radius: 20px
}
.dot{
	font-weight: bold;
}
.form-control{
	border-radius: 12px;
	border: 1px solid #F0F0F0;
	font-size: 8px;
}
.form-control:focus{
	box-shadow: none;
	}
.form-control::placeholder{
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
 
@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
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
body{margin-top:20px;}

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

.chat-message-left,
.chat-message-right {
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
    padding-top: 1rem!important;
    padding-bottom: 1rem!important;
}
.px-4 {
    padding-right: 1.5rem!important;
    padding-left: 1.5rem!important;
}
.flex-grow-0 {
    flex-grow: 0!important;
}
.border-top {
    border-top: 1px solid #dee2e6!important;
}
/**/
/**/


</style>   	
   
</head>
<body>


<!-- 서브페이지 헤더 -->
<jsp:include page="../headersub.jsp" flush="false"></jsp:include>

<%
UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

%>

<div class="sub_con">
<div class="">
	
			<div class="blue_font">HTP 검사 결과</div>
			<p class="sub_wfont" style="color:#1a1a1a;">맘이음을 이용해 주셔서 감사합니다.</p>
			<div class="blue_bar"></div>
			<div class="sub8_result_box">
				<p class="tit"><span>📋</span>검사 결과</p>
				<p class="con">${tbTest.testResult}</p>
			</div>
			
			</div>
			
		</div>

	<form id="insertPreset" action="${cpath}/insertPreset" method="post">

	<div class="sub_con" style="padding-top:0;">
		<div class="">
			<div class="htp_btn2">				
				<!-- <button type="submit" class="btn btn-primary">처음으로</button> -->
				<input type="hidden" id="username" name="username" value="<%= userDetails.getUsername() %>">
				<a href="${cpath}/member/mypage?username=<%= userDetails.getUsername() %>" class="">마이페이지로 돌아가기</a>
				
				<a href="#n" class="kakaoIco"><img src="${cpath}/resources/images/kakaologo3.png" alt="카카오공유" title=""></a>
			</div>
		</div>
	</div>
	</form>

	

<div class="floating-container">
  <div class="floating-button">+</div>
  <div class="element-container">

    <a href="google.com"> <span class="float-element tooltip-left">
      <i class="material-icons">phone
      </i></a>
    </span>
      <span class="float-element">
      <i class="material-icons">email
</i>
    </span>
      <span class="float-element">
      <i class="material-icons">chat</i>
    </span>
  </div>
</div>
<!-- 
<div class="container d-flex justify-content-center">
  <div class="card mt-5">
    <div class="d-flex flex-row justify-content-between p-3 adiv text-white">
      <i class="fas fa-chevron-left"></i>
      <span class="pb-3">ChatGPT-맘이음</span>
      <i class="fas fa-times"></i>
    </div>
      <div class="d-flex flex-row p-3">
        <img src="${cpath}/resources/images/chatgptlogo.png" width="70" height="70">
        <div class="chat ml-2 p-3">검사 결과에 추가로 궁금하신 점이 있으신가요?</div>
      </div>

      <div class="d-flex flex-row p-3">
        <div class="chat ml-2 p-3">아들이 그린 문이 과하게 커요.. 어떻게 해석해야 할까요?</div>
        <img src="${cpath}/resources/images/chatgptlogo2.png" width="70" height="70">
      </div>
      
      <div class="d-flex flex-row p-3">
        <img src="${cpath}/resources/images/chatgptlogo.png" width="70" height="70">
        <div class="chat ml-2 p-3">과하게 큰 문은 의존하려는 강한 욕구를 나타낼 수 있습니다.</div>
      </div>
      
      <div class="d-flex flex-row p-3">
        <div class="chat ml-2 p-3">추가로 더 해석 해주세요. 그리고 작은 창문에 대해서도요!</div>
        <img src="${cpath}/resources/images/chatgptlogo2.png" width="70" height="70">
      </div>
      
      <div class="form-group px-3">
        <textarea class="form-control" rows="5" placeholder="Type your message"></textarea>
      </div>
  </div>
</div>
-->

 


<jsp:include page="../footer.jsp" flush="false"></jsp:include>  



</body>
</html>
