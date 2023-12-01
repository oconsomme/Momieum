<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

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
  
<style>


@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2 , .h2, h1, .h1, p, a, b {
font-family : 'GmarketSansMedium', cursive;
}

/* Main navigation bar styling */
.main-nav {
    background-color: #f8f9fa; /* Light background color */
    color: #333; /* Dark text for contrast */
    box-shadow: 0 2px 4px rgba(0,0,0,0.1); /* Subtle shadow for depth */
}

.main-nav .nav {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    justify-content: center; /* Center the menu items */
}

.main-nav .nav li {
    position: relative;
    padding: 10px 15px; /* Spacing around menu items */
}

.main-nav .nav li a {
    color: #333;
    text-decoration: none;
    font-weight: bold;
}

/* Hover effects */
.main-nav .nav li:hover {
    background-color: #e7e7e7; /* Slight change on hover */
}

/* Submenu styling */
.main-nav .nav .submenu {
    display: none;
    position: absolute;
    background-color: #fff;
    box-shadow: 0 2px 4px rgba(0,0,0,0.2);
    z-index: 1000;
    width: 200px; /* Set a width for the submenu */
}

.main-nav .nav .submenu li {
    padding: 8px 12px;
    border-bottom: 1px solid #eee; /* Subtle separators for submenu items */
}

/* Show submenu on hover */
.main-nav .nav li:hover .submenu {
    display: block;
}

/* Responsive adjustments, if necessary */
@media (max-width: 768px) {
    .main-nav .nav {
        flex-direction: column;
    }
    /* More responsive styles */
}

  .pre-header {
        display: flex; /* Flexbox 사용 */
        justify-content: flex-end; /* 오른쪽 정렬 */
        align-items: center; /* 세로 중앙 정렬 */
        margin-right: 30px;
        margin-top : 10px;
      
    }

   .pre-header .container {
        width: 100%; /* 컨테이너의 너비를 100%로 설정 */
        display: flex;
        justify-content: flex-end;
    }

   .pre-header .info {
        list-style: none; /* 리스트 스타일 제거 */
        margin: 0; /* 마진 초기화 */
        padding: 0; /* 패딩 초기화 */
        display: flex; /* Flexbox 사용 */
        align-items: center; /* 세로 중앙 정렬 */
    }

    .pre-header .info li {
        margin-left: 10px; /* 항목 사이 간격 조정 */
    }
    
    b {
    color : #4b81d2;
    
    }
</style>
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
	         <ul class="info">
	          
	          <sec:authorize access="isAnonymous()">
	          	<a href="${cpath}/member/login"><i class="fa fa-sign-in"></i>&nbsp;로그인&nbsp;</a>
	          </sec:authorize>
 			 
 			  <sec:authorize access="hasRole('MEMBER')">
				<%-- <form action="${cpath}/member/logout"> --%>
				<% UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal(); %>
				<b>안녕하세요, <%= userDetails.getUsername() %>님!&nbsp;&nbsp; </b><a href="${cpath}/member/logout"><i class="fa fa-sign-out"></i>&nbsp;로그아웃&nbsp;</a>
			 </sec:authorize>   
	         <sec:authorize access="isAnonymous()">
	         	<a href="${cpath}/member/userstep"><i class="fa fa-user-plus"></i>&nbsp;회원가입&nbsp;</a>
	         </sec:authorize>
	         
			<sec:authorize access="hasRole('MEMBER')">
				<% UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal(); %>
				<a href="${cpath}/member/mypage?username=<%= userDetails.getUsername() %>"><i class="fa fa-child"></i>&nbsp;마이페이지&nbsp;</a>
			</sec:authorize>
			<sec:authorize access="hasRole('ADMIN')">
				<% UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal(); %>
				<b>안녕하세요, <%= userDetails.getUsername() %>님! </b><a href="${cpath}/member/logout"><i class="fa fa-sign-out"></i>&nbsp;로그아웃&nbsp;</a>
				<a href="${cpath}/admin/dashBoard.do"><i class="fa fa-cog"></i>&nbsp;관리자</a>
			</sec:authorize>	
				
				
	          </ul>
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
	            <a href="${cpath}/index2.do" class="logo" >
	              <img src="${cpath}/resources/images/MomieumLogo5.png" alt="" width=300px; height=60px;>
	            </a>
	            <!-- ***** Logo End ***** -->
	            
	            
	            <!-- ***** Menu Start ***** -->
	            <ul class="nav">
		              <li class="scroll-to-section"><a href="#about">서비스소개</a>
		              		<ul class="submenu">
		              			<li><a href="${cpath}/introService.do">주요서비스</a></li>
		              			<li><a href="${cpath}/howtouseService.do">이용방법</a></li>
		              			<li><a href="${cpath}/charService.do">서비스특징</a></li>
		              		</ul>	   	              
		              </li>
		              <li class="scroll-to-section">
		              	<a href="${cpath}/htp.do">심리검사</a>
		              </li>
	              <li class="scroll-to-section"><a href="${cpath}/apply">상담신청</a></li>
	              <li class="scroll-to-section"><a href="${cpath}/map">센터조회</a></li>
	              <li class="scroll-to-section"><a href="${cpath}/faq">FAQ</a></li>
	              <li class="scroll-to-section"><a href="${cpath}/community">커뮤니티</a></li>
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

		  <script type="text/javascript">
        $(function(){
            $("#header").load("/p9net-page/header.html");
            $(".quick").load("/p9net-page/quick.html");
            $("#footer").load("/p9net-page/footer.html");

        });
    </script>

    <script>
        $(document).ready(function(){
            //init_speech();

            //달력폼
            JITAPP.datepicker.init({id_arr:['.datepick'], yearRange: "2017:2025"});

            //전화폼
            $( ".phone" ).on( "keyup", function() {
                $(this).val( autoHypenPhone($(this).val()))
            });

            //파일 폼테그
            var fileTarget = $('.filebox .upload-hidden');
            fileTarget.on('change', function(){
                if(window.FileReader){
                    var filename = $(this)[0].files[0].name;
                } else {
                    var filename = $(this).val().split('/').pop().split('\\').pop();
                }
                $(this).siblings('.upload-name').val(filename);
            });

            jQuery("#visual-wrap").imgFade({target:".visual-slide > li", play:5000, fadeSpeed:1500});

            $(".pop-close").on("click", function(){
                $("div[id^='pop']").removeClass("in").hide(0);
            });

            $("#login_btn").on("click", function(){
                $("#pop-login").show(100).addClass("in");
            });

            var $body = $("body");
            $moHeadr = $(".mo-menu");
            $moBak = $(".bodyBg");

            $(".mo-btn").on("click", function(){
                $body.addClass("action");
                $moBak.addClass("action");
                $moHeadr.addClass("action");
            });

            $(".mo-close, .bodyBg").on("click", function(){
                $body.removeClass("action");
                $moHeadr.removeClass("action");
                $moBak.removeClass("action");
            });

            $('.mo-slide').bxSlider({
                mode: "fade",
                speed: 1000,
                pause: 5000,
                pager: false,
                controls: true,
                auto: true
            });

            // var moContop = $(".mo-menu-list").offset().top; // top 오류나옴
            // $(".mouse-icon").on("click", function(){
            //     $('html, body').stop().animate({ scrollTop : moContop });
            // });
            //
            // $(".mouse-up-btn").on("click", function(){
            //     $('html, body').stop().animate({ scrollTop : "0" });
            // });
            //
            // $(window).on("load scroll", function(){
            //     var wScroll = $(window).scrollTop();
            //
            //     if(wScroll > moContop){
            //         $(".mouse-up-btn").addClass("on");
            //     }else{
            //         $(".mouse-up-btn").removeClass("on");
            //     }
            // });
			
			
        });
        
 	}
    </script>


</body>
</html>









