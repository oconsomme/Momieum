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
  
  <style type="text/css">
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2 , .h2, h1, .h1, p, a {
font-family : 'GmarketSansMedium', cursive;
color: #fff;
}

.image-text-container {
    display: flex;
    align-items: center;
    justify-content: center; /* 이미지와 텍스트를 중앙에 위치 */
}

.resized-image {
    width: 190px;
    height: auto;
    margin-right: 20px; /* 이미지와 텍스트 사이 간격 조정 */
}

.bold-text {
    font-weight: bold;
}


  </style>
</head>
<body>
   <!-- 헤더 페이지 -->
   <jsp:include page="header.jsp" flush="false"></jsp:include>
   
   <!-- 서브페이지 타이틀 -->
     <div id="free-quote" class="free-quote">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="image-text-container">
                        <img src="${cpath}/resources/images/subheader.png" class="resized-image">
                        <div>
                           <h1 class="bold-text">'맘-이음'</h1>
                            <h4 >궁금한 아이의 마음을 확인할 수 있어요!</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> 
</body>
</html>













