<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script> 
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

	<!-- 템플릿 -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Bootstrap core CSS -->
    <link href="${cpath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="${cpath}/resources/css/fontawesome.css">
    <link rel="stylesheet" href="${cpath}/resources/css/templatemo-digimedia-v3.css">
    <link rel="stylesheet" href="${cpath}/resources/css/animated.css">
    <link rel="stylesheet" href="${cpath}/resources/css/owl.css">
   
    <style>
    .card-title {
        text-align: center;
        margin: 0;
    }
    
    @font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, span, button span,
	div>strong, td, th, form-control float-left {
	font-family: 'GmarketSansMedium', cursive;
}


.card-title {
	text-align: center; /* 텍스트를 가운데 정렬합니다. */
	color:#000000;
}

.card-name {
	text-align: center; /* 텍스트를 가운데 정렬합니다. */
}

.bg {
	margin: 1em 0;
	display: block;
	background: rgb(255, 255, 255);
	border: 1px solid rgb(0, 0, 0);
}

#overlay {
	position: absolute;
	top: 0;
	left: 0;
	display: none;
}

#overlay img {
	width: 100%;
	height: 100%;
}

.redraw-link {
	font-size: 18px; /* 폰트 크기 */
	color: #4b81d2; /* 글자 색상 */
	text-decoration: none; /* 밑줄 제거 */
	padding: 10px 15px; /* 패딩 */
	border: 2px solid #4b81d2; /* 테두리 */
	border-radius: 5px; /* 테두리 둥글게 */
	transition: all 0.3s; /* 부드러운 전환 효과 */
}

.redraw-link:hover {
	background-color: #4b81d2; /* 호버 시 배경 색상 */
	color: white; /* 호버 시 글자 색상 */
}

#canvas-container {
	display: flex; /* Flexbox 레이아웃 사용 */
	justify-content: center; /* 가로축 중앙 정렬 */
	align-items: center; /* 세로축 중앙 정렬 */
	height: 100%; /* 컨테이너 높이 설정 */
	margin-left: 450px;
	margin-top: 20px;
}

.canvas {
	margin: auto; /* 자동 여백으로 중앙 정렬 */
}

.btn-group a {
	background-color: #4b81d2; /* 배경색 설정 */
	color: white; /* 텍스트 색 설정 */
}

.text-center {
	margin-top: 25px;
}

body {
  font-size: 13px; /* 폰트 크기 줄이기 */
}

.container, .container-fluid {
  max-width: 80%; /* 컨테이너 최대 너비 조정 */
  margin-top: 30px;
}

.card {
  margin: 10px 0; /* 카드의 마진 축소 */
}

.table th, .table td {
  padding: 10px; /* 테이블 셀 패딩 줄이기 */
}

.btn {
  padding: 5px 10px; /* 버튼 패딩 줄이기 */
  font-size: 12px; /* 버튼 폰트 크기 줄이기 */
}

@media (max-width: 768px) {
  .container, .container-fluid {
    max-width: 100%; /* 모바일에서는 컨테이너를 확장 */
  }
}

.notice{
	color:#4b81d2;
}

.pagination-wrapper {
	text-align: center;
	margin-left: 315px;
	margin-bottom: 60px;
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

.btn-write{
	background-color: #787f89;
	color: #fff;
	padding: 10px;
	border-radius: 5px;
	
}
    
    
    
    </style>   
   
   
</head>
<body>


    <script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		integrity="sha256-oP6HI/tf5xNspeXnOqO8p8MqTmVl6o7BmHr9v+L6tI="
		crossorigin="anonymous"></script>
	<script
		src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-44fe83e49b63affec96918c9af88c0d80b209a862cf87ac46bc933074b8c557d.js"></script>



<!-- 서브페이지 헤더 -->
<jsp:include page="../headersub.jsp" flush="false"></jsp:include>




<!-- Main content -->
    <section class="content">

<!-- 여기부터 Default box -->
   <div class="card">
    
    <div class="card-body"><!--시작 바디-->
       <div class="row"><!--시작 row: 한줄로 전체를 감싼다-->
       
          <div class="col-lg-2"><!--1구역--><!--비율 총합이 12되도록 나눠라-->        
          </div><!--끝1구역-->
          
     
         
                
           <div class="col-lg-8"><!--3구역--><!--글쓰기 상세보기-->
             <div class="card" style="min-height: 500px; max-height: 1000px;">
                <div class="card-body">
                
                
                   <form action ="../modify" method="post">
  		              <input type="hidden" name="idx" value="${vo.idx}">
                      <div class="form-group">
                         <label for="title">제목</label> <!--label요소의 for속성은 해당 레이블이 어떤 입력 요소와 연결되어 있는지를 나타냅니다-->
                         <td><input value="${vo.title}" type="text" name="title" class="form-control"> </td>
                      </div>
                      
                      
                      <div class="form-group">
                         <label for="content">내용</label>
                         <td><textarea class="form-control" name="content" rows="7" cols="">${vo.content}</textarea></td> 
                      </div>
                      
                      
                      <div class="form-group">
                         <label for="writer">작성자</label>
                         <td><input value="${vo.writer}" type="text" name="writer" class="form-control" readonly></td> 
                      </div>
                      
                      
                      <div>
                      	<button class = "btn btn-secondary" type="submit">수정하기</button>
                      	<button type ="reset" class="btn btn-secondary">복구하기</button>	
                      	<a href="../list" class="btn btn-secondary">목록</a>
                      </div>
 
                   </form>
                   
                </div>
             </div>
          </div><!--끝3구역--> 
          
          
          
          <div class="col-lg-2"><!--4구역-->      
          </div><!--끝4구역-->
          

       </div><!--row끝-->
    </div><!--끝바디-->




      <footer><!--시작푸터-->
	    <div class="container">
	      <div class="row">
	        <div class="col-lg-12">
	          <p>Copyright © 2022 DigiMedia Co., Ltd. All Rights Reserved. 
	          <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates">Momeium</a>
	          <br>Distributed By: <a href="https://themewagon.com" target="_blank" title="free css templates">Momieum</a>
	        </p>
	        </div>
	      </div>
	    </div>
	  </footer><!--끝푸터-->
    
  </div>




  
  
  




  


</body>


</html>