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


<!-- 서브페이지 헤더 -->
<jsp:include page="../headersub.jsp" flush="false"></jsp:include>






  <div id="services" class="services section">
    <div class="container">
      <div class="row">
      
        <div class="col-lg-12">
        
          <div class="section-heading  wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.5s">
            <h3>안녕하세요! HTP검사를 시작해볼까요?</h3>
  
             업로드하여 검사하기 <input type="checkbox" id="drawCheckbox" style="margin-left: 10px; margin-top: 30px;">
            
            <div style="margin-top: 10px;">
    		<a href="${cpath}/fileUploadstart.do">시작하기</a>
			</div>
            
          </div>
        </div>
        <div class="col-lg-12">
          <div class="naccs">
            <div class="grid">
              <div class="row">
                <div class="col-lg-12">
                  <div class="menu">
                    <div class="first-thumb active">
                      <div class="thumb">
                        <span class="icon"><img src="${cpath}/resources/images/house.png" alt=""></span>
                        HTP검사
                      </div>
                   
                    </div>
                  </div>
                </div> 
                <div class="col-lg-12">
                  <ul class="nacc">
                    <li class="active">
                      <div>
                        <div class="thumb">
                          <div class="row">
                            <div class="col-lg-6 align-self-center">
                              <div class="left-text">
                                <h4>HTP(House-Tree-Person)집, 나무, 사람 검사란?</h4>
                                <p>집, 나무, 사람 그림을 그려 검사자의 내면세계를 파악하는 검사입니다.</p>
                                <h4>'맘이음'은 3가지 검사 방법을 제공합니다.</h4>
                                <div class="ticks-list"><span><i class="fa fa-check"></i> 파일 업로드</span>    
                                <p><i class="fa fa-check"></i> 직접 그리기</p>
                                
                                 <br>
                                 <p><i class="fa fa-check"></i> 프리셋</p>
                                  
                                <p>그림 파일을 업로드하는 방법으로 검사가 이루어집니다.</p>
                              </div>
                            </div>
                            <div class="col-lg-6 align-self-center">
                              <div class="right-image">
                                <img src="${cpath}/resources/images/upload.png" alt="">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                    
                   
                    
                   
                  </ul>
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
    
  </div>
  
  
  

<!-- 푸터 페이지 -->
<jsp:include page="../footer.jsp" flush="false"></jsp:include>  



</body>
</html>
