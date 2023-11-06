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
		
	  <!-- ***** Preloader Start ***** -->
	  <div id="js-preloader" class="js-preloader">
	    <div class="preloader-inner">
	      <span class="dot"></span>
	      <div class="dots">
	        <span></span>
	        <span></span>
	        <span></span>
	      </div>
	    </div>
	  </div>
	  <!-- ***** Preloader End ***** -->
		
	  <!-- Pre-header Starts -->
	  <div class="pre-header">
	    <div class="container">
	      <div class="row">
	        <div class="col-lg-8 col-sm-8 col-7">
	          <ul class="info">

	          	<a href="${cpath}/member/login"><i class="fa fa-phone"></i>로그인</a>
 			 		<sec:authorize access="hasRole('MEMBER')">
					<%-- <form action="${cpath}/member/logout"> --%>  
						<button type="submit" class="">로그아웃</button>
					<!-- </form>  -->
				</sec:authorize>   
								          	
	          	<a href="${cpath}/member/join"><i class="fa fa-phone"></i>회원가입</a>
				<sec:authorize access="hasRole('MEMBER')">
					<a href="${cpath}/member/mypage"><i class="fa fa-phone"></i>회원정보수정</a>
					<a href="${cpath}/adminPage.do"><i class="fa fa-phone"></i>관리자대시보드</a>
	          		<a href="${cpath}/adminPage.do"><i class="fa fa-phone"></i>관리자회원관리</a>
	          		<a href="${cpath}/test.do"><i class="fa fa-phone"></i>테스트페이지</a>
				</sec:authorize>

	            </li>
	          </ul>
	        </div>
	        <div class="col-lg-4 col-sm-4 col-5">
	          <ul class="social-media">
	            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
	            <li><a href="#"><i class="fa fa-behance"></i></a></li>
	            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
	            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
	          </ul>
	        </div>
	      </div>
	    </div>
	  </div>
	  <!-- Pre-header End -->
	  
	  
	
	  <!-- ***** Header Area Start ***** -->
	  <header class="header-area header-sticky wow slideInDown" data-wow-duration="0.75s" data-wow-delay="0s">
	    <div class="container">
	      <div class="row">
	        <div class="col-12">
	          <nav class="main-nav">
	            <!-- ***** Logo Start ***** -->
	            <a href="${cpath}/" class="logo">
	              <img src="${cpath}/resources/images/logo-v3.png" alt="">
	            </a>
	            <!-- ***** Logo End ***** -->
	            
	            
	            <!-- ***** Menu Start ***** -->
	            <ul class="nav">
		              <li class="scroll-to-section"><a href="#about">서비소소개</a>
		              		<ul class="submenu">
		              			<li><a href="${cpath}/subPage1.do">주요서비스</a></li>
		              			<li><a href="${cpath}/subPage1.do">사용방법</a></li>
		              			<li><a href="${cpath}/subPage1.do">서비스특징</a></li>
		              			<li><a href="${cpath}/subPage1.do">조직도</a></li>
		              		</ul>	   	              
		              </li>
		              <li class="scroll-to-section">
		              	<a href="#services">심리검사</a>
		              		<ul class="submenu">
		              			<li><a href="${cpath}/prompt.do">직접그리기</a></li>
		              			<li><a href="${cpath}/fileUpload.do">파일업로드</a></li>
		              			<li><a href="${cpath}/preset.do">프리셋</a></li>
		              		</ul>		              	
		              </li>
	              <li class="scroll-to-section"><a href="apply.do">상담신청</a></li>
	              <li class="scroll-to-section"><a href="map.do">센터조회</a></li>
	              <li class="scroll-to-section"><a href="${cpath}/board/list">커뮤니티</a></li>
	              <li class="scroll-to-section"><a href="${cpath}/board/list">공지사항</a></li>
	              <li class="scroll-to-section"><div class="border-first-button"><a href="#contact">Free Quote</a></div></li>
	            </ul>    

	            <a class='menu-trigger'>
	                <span>Menu</span>
	            </a>
	            <!-- ***** Menu End ***** -->
	            
	          </nav>
	        </div>
	      </div>
	    </div>
	  </header>
	  <!-- ***** Header Area End ***** -->  


	  	
	  <!-- Scripts -->
	  <script src="${cpath}/resources/jquery/jquery.min.js"></script>
	  <script src="${cpath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>
	  <script src="${cpath}/resources/js/owl-carousel.js"></script>
	  <script src="${cpath}/resources/js/animation.js"></script>
	  <script src="${cpath}/resources/js/imagesloaded.js"></script>
	  <script src="${cpath}/resources/js/custom.js"></script>

</body>
</html>









