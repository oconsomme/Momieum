<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />  

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Document</title>
	<link rel="icon" href="favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/style.css">
	<script defer src="js/ie.js"></script>

<style>
@charset "utf-8";
@import url('https://fonts.googleapis.com/css?family=Poiret+One');
@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a {
	font-family: 'GmarketSansMedium', cursive;
}
* {
	margin: 0px;
	padding: 0px;
}
body { 
	width: 100%;
	height: 100vh;
	overflow: hidden;
	animation: sky linear 20s infinite;
}
h1 { 
	width: 1000px; 
	position: absolute; 
	top: 50%; 
	left: 50%; 
	transform: translate(-50%,150%);	
	font: 92px/1 "Poiret one"; 
	color: #fff;
	text-align: center; 
	animation: day linear 20s infinite;
}
section { 
	width: 1000px; 
	height: 400px; 
	position: absolute; 
	top: 50%; 
	left: 50%; 
	transform: translate(-50%,-70%); 
}
section .sky {
	position: absolute; 
	width: 100%; 
	height: 100%;
}
section .sky .sun {
	position: absolute; 
	top: -150px; 
	left: 50%; 
	margin-left: -100px; 
	transform-origin: center 500px; 
	animation: sun linear 20s infinite;
}
section .sky .cloud1 {
	position: absolute; 
	top: -30px; 
	left: 10%; 
	animation: flow linear 10s infinite;
}
section .sky .cloud2 {
	position: absolute; 
	top: 20px; 
	left: 0%; 	
	animation: flow linear 20s infinite;
}
section .town .night { 
	position: absolute; 
	bottom: 0px; 
	left: 40px;
}
section .town .day { 
	position: absolute; 
	bottom: 0px; 
	left: 40px;
	animation: day linear 20s infinite;
}
section .town .circle {
	position: absolute; 
	bottom: 104px; 
	left: 50%; 
	margin-left: -165px; 
	opacity: 0.7;
	animation: rotation linear 20s infinite; 	
}

section .people .man {
	position: absolute;
	left: 0%;
	bottom: 0px;
	animation: flow linear 7s infinite;
}
section .people .family {
	position: absolute;
	left: 0%;
	bottom: 0px;
	animation: flow linear 20s infinite;
}

@keyframes rotation {
	0% {transform: rotate(0deg);}
	100% {transform: rotate(360deg);}
}
@keyframes sky {
	0% {background-color: #b08fcc;}
	25% {background-color: #b1e1e2;}
	50% {background-color: #fcd2e2;}
	75% {background-color: #636888;}
	100% {background-color: #b08fcc;}
}
@keyframes sun {
	0% {opacity:0; transform: rotate(-90deg);}
	25% {opacity:1; transform: rotate(-30deg);}
	50% {opacity:1; transform: rotate(30deg);}
	75% {opacity:0; transform: rotate(90deg);}
	100% {opacity:0; transform: rotate(-90deg);}
}
@keyframes day {
	0% {opacity: 0;}
	25% {opacity: 1;}
	50% {opacity: 1;}
	75% {opacity: 0;}
	100% {opacity: 0;}
}
@keyframes flow {
	0% { left: 0%; opacity: 0;}
	10% { opacity: 1; }
	80% { opacity: 1; }
	100% { left: 90%; opacity: 0;}
}

.center-text {
    position: absolute;
    margin-top : 5%;
    left: 50%; /* 가로 중앙 정렬 */
    transform: translate(-50%, -50%); /* 정확한 중앙 정렬을 위한 조정 */
    font-size: 24px; /* 폰트 크기 */
    color: #fff; /* 텍스트 색상 */
    text-align: center; /* 텍스트 중앙 정렬 */
    /* 추가 스타일링 필요 시 여기에 작성 */
}

.resized-image {	
	width: 340px;
	height: 340px;
	margin-left : 34%;
	margin-top : 100px;
}

</style>


</head>
<body>
	
	<section>	
		<article class="sky">			
			<img src="${cpath}/resources/images/sun.png" class="sun" />
			<img src="${cpath}/resources/images/cloud1.png" class="cloud1" />
			<img src="${cpath}/resources/images/cloud2.png" class="cloud2" />
		</article>	
		
		
		<article class="people">
			<img src="${cpath}/resources/images/subheader.png" class="resized-image">
		</article>	
		
			  <div class="center-text"><h2>아이의 마음을 확인해보세요!</h2></div>	
	</section>
	

 <script>
        // 페이지 로드 시 이벤트 리스너 추가
        document.addEventListener('DOMContentLoaded', function() {
            // body 태그에 클릭 이벤트 리스너 추가
            document.body.addEventListener('click', function() {
                // 지정된 URL로 이동
                window.location.href = "${cpath}/index2.do"; // 여기에 이동하고 싶은 경로를 넣으세요
            });
            
            setTimeout(function() {
                window.location.href = "${cpath}/index2.do"; // 여기에 이동하고 싶은 경로를 넣으세요
            }, 3000); // 2000밀리초 = 2초
            
            
        });
    </script>
</body>
</html>














