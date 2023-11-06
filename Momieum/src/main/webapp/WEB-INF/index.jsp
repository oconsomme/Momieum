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
  
</head>
<body>

	<!-- 헤더 페이지 -->
	<jsp:include page="header.jsp" flush="false"></jsp:include>
	
	  <div class="main-banner wow fadeIn" id="top" data-wow-duration="1s" data-wow-delay="0.5s">
	    <div class="container">
	      <div class="row">
	        <div class="col-lg-12">
	          <div class="row">
	            <div class="col-lg-6 align-self-center">
	              <div class="left-content show-up header-text wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
	                <div class="row">
	                  <div class="col-lg-12">
	                    <h6>Digital Media Agency</h6>
	                    <h2>We Boost Your Website Traffic</h2>
	                    <p>This template is brought to you by TemplateMo website. Feel free to use this for a commercial purpose. You are not allowed to redistribute the template ZIP file on any other template website. Thank you.</p>
	                  </div>
	                  <div class="col-lg-12">
	                    <div class="border-first-button scroll-to-section">
	                      <a href="#contact">Free Quote</a>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	            <div class="col-lg-6">
	              <div class="right-image wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
	                <img src="${cpath}/resources/images/slider-dec-v3.png" alt="">
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div> 
	
	
	  
	  <div id="blog" class="blog">
	    <div class="container">
	      <div class="row">
	        <div class="col-lg-4 offset-lg-4  wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.3s">
	          <div class="section-heading">
	            <h6>Recent News</h6>
	            <h4>Check Our Blog <em>Posts</em></h4>
	            <div class="line-dec"></div>
	          </div>
	        </div>
	        <div class="col-lg-6 show-up wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">
	          <div class="blog-post">
	            <div class="thumb">
	              <a href="#"><img src="${cpath}/resources/images/blog-post-01.jpg" alt=""></a>
	            </div>
	            <div class="down-content">
	              <span class="category">SEO Analysis</span>
	              <span class="date">03 August 2021</span>
	              <a href="#"><h4>Lorem Ipsum Dolor Sit Amet, Consectetur Adelore
	                Eiusmod Tempor Incididunt</h4></a>
	              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.</p>
	              <span class="author"><img src="images/author-post.jpg" alt="">By: Andrea Mentuzi</span>
	              <div class="border-first-button"><a href="#">Discover More</a></div>
	            </div>
	          </div>
	        </div>
	        <div class="col-lg-6 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">
	          <div class="blog-posts">
	            <div class="row">
	              <div class="col-lg-12">
	                <div class="post-item">
	                  <div class="thumb">
	                    <a href="#"><img src="${cpath}/resources/images/blog-post-02.jpg" alt=""></a>
	                  </div>
	                  <div class="right-content">
	                    <span class="category">SEO Analysis</span>
	                    <span class="date">24 September 2021</span>
	                    <a href="#"><h4>Lorem Ipsum Dolor Sit Amei Eiusmod Tempor</h4></a>
	                    <p>Lorem ipsum dolor sit amet, cocteturi adipiscing eliterski.</p>
	                  </div>
	                </div>
	              </div>
	              <div class="col-lg-12">
	                <div class="post-item">
	                  <div class="thumb">
	                    <a href="#"><img src="${cpath}/resources/images/blog-post-03.jpg" alt=""></a>
	                  </div>
	                  <div class="right-content">
	                    <span class="category">SEO Analysis</span>
	                    <span class="date">24 September 2021</span>
	                    <a href="#"><h4>Lorem Ipsum Dolor Sit Amei Eiusmod Tempor</h4></a>
	                    <p>Lorem ipsum dolor sit amet, cocteturi adipiscing eliterski.</p>
	                  </div>
	                </div>
	              </div>
	              <div class="col-lg-12">
	                <div class="post-item last-post-item">
	                  <div class="thumb">
	                    <a href="#"><img src="${cpath}/resources/images/blog-post-04.jpg" alt=""></a>
	                  </div>
	                  <div class="right-content">
	                    <span class="category">SEO Analysis</span>
	                    <span class="date">24 September 2021</span>
	                    <a href="#"><h4>Lorem Ipsum Dolor Sit Amei Eiusmod Tempor</h4></a>
	                    <p>Lorem ipsum dolor sit amet, cocteturi adipiscing eliterski.</p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>  
	
  <div id="portfolio" class="our-portfolio section">
    <div class="container">
      <div class="row">
        <div class="col-lg-5">
        </div>
      </div>
    </div>
    <div class="container-fluid wow fadeIn" data-wow-duration="1s" data-wow-delay="0.7s">
      <div class="row">
        <div class="col-lg-12">
          <div class="loop owl-carousel">
            <div class="item">
              <a href="#">
                <div class="portfolio-item">
                <div class="thumb">
                  <img src="${cpath}/resources/images/portfolio-01.jpg" alt="">
                </div>
                <div class="down-content">
                  <h4>Website Builder</h4>
                  <span>Marketing</span>
                </div>
              </div>
              </a>  
            </div>
            <div class="item">
              <a href="#">
                <div class="portfolio-item">
                <div class="thumb">
                  <img src="${cpath}/resources/images/portfolio-01.jpg" alt="">
                </div>
                <div class="down-content">
                  <h4>Website Builder</h4>
                  <span>Marketing</span>
                </div>
              </div>
              </a>  
            </div>
            <div class="item">
              <a href="#">
                <div class="portfolio-item">
                <div class="thumb">
                  <img src="${cpath}/resources/images/portfolio-02.jpg" alt="">
                </div>
                <div class="down-content">
                  <h4>Website Builder</h4>
                  <span>Marketing</span>
                </div>
              </div>
              </a>  
            </div>
            <div class="item">
              <a href="#">
                <div class="portfolio-item">
                <div class="thumb">
                  <img src="${cpath}/resources/images/portfolio-03.jpg" alt="">
                </div>
                <div class="down-content">
                  <h4>Website Builder</h4>
                  <span>Marketing</span>
                </div>
              </div>
              </a>  
            </div>
            <div class="item">
              <a href="#">
                <div class="portfolio-item">
                <div class="thumb">
                  <img src="${cpath}/resources/images/portfolio-04.jpg" alt="">
                </div>
                <div class="down-content">
                  <h4>Website Builder</h4>
                  <span>Marketing</span>
                </div>
              </div>
              </a>  
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>	

	<!-- 푸터 페이지 -->
	<jsp:include page="footer.jsp" flush="false"></jsp:include>  

	  


</body>
</html>
