<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>DigiMedia - Creative SEO HTML5 Template</title>

    <!-- Bootstrap core CSS -->
    <link href="${cpath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="${cpath}/resources/css/fontawesome.css">
    <link rel="stylesheet" href="${cpath}/resources/css/templatemo-digimedia-v3.css">
    <link rel="stylesheet" href="${cpath}/resources/css/animated.css">
    <link rel="stylesheet" href="${cpath}/resources/css/owl.css">
  
  
</head>
<body>
	<!-- 헤더 페이지 -->
	<!-- 스크롤 내렸을때 상단 고정되는 부분이 안먹힘... 수정하기 -->
	<jsp:include page="header.jsp" flush="false"></jsp:include>
	
	<!-- 서브페이지 타이틀 -->
	  <div id="free-quote" class="free-quote">
	    <div class="container">
	      <div class="row">
	        <div class="col-lg-4 offset-lg-4">
	          <div class="section-heading  wow fadeIn" data-wow-duration="1s" data-wow-delay="0.3s">
	            <h6>엄마와 아이의 마음을 이어주는 플랫폼 ★맘이음★</h6>
	            <h4>서브메뉴명</h4>
	            <div class="line-dec"></div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	  



	  	
	  	
	  	
	  <!-- Scripts -->
	  <script src="${cpath}/resources/jquery/jquery.min.js"></script>
	  <script src="${cpath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>
	  <script src="${cpath}/resources/js/owl-carousel.js"></script>
	  <script src="${cpath}/resources/js/animation.js"></script>
	  <script src="${cpath}/resources/js/imagesloaded.js"></script>
	  <script src="${cpath}/resources/js/custom.js"></script>

</body>
</html>

