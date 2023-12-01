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
   
<style>
@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a ,label, btn btn-warning,button,upload-name{
	font-family: 'GmarketSansMedium', cursive;
}


.sub_content {
    text-align: center;
    margin: 0 auto;
    width: 100%;
    min-width: 100%;
    z-index: 2;
}


.sub_con {
    padding: 30px 0;
        text-align: center;
    width: 100%;
    min-width: 100%;
    z-index: 2;
    margin: 0 auto;
}

ul, ol, li, div, dl, dt, dd {
    list-style: none;
    margin: 0px;
    padding: 0;
}

html * {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

.pink_font {
    color: #4b81d2;
    font-size: 1.4em;
    margin-bottom: 20px;
    font-family: "NanumGothicBold";
    margin-left: 0;
}

.sub_wfont {
    color: #e0e0e0;
    font-size: 1em;
    line-height: 1.7em;
    width: 90%;
    margin: 0 auto;
}

.pink_bar {
    width: 90px;
    height: 2px;
    background: #4b81d2;
    margin: 20px auto;
}

.htp_steps2-1 {
    width: 90%;
    margin: 50px auto 0;
}

.htp_steps2-1 > ul {
    width: 100%;
    margin: 0 auto;
}

.htp_steps2-1 > ul > li {
    display: inline-block;
    margin: 20px 10px;
}



.htp_steps2-1 > ul > li > p > a > img {
    border: 1px solid #d9d9d9;
    border-bottom: 5px;
}

img, fieldset {
    border: 0;
    line-height: 0;
    vertical-align: middle;
    
}

.htp_steps2-1 > ul > li > p > a > span {
    display: block;
}

.htp_steps2-1 > ul > li span {
    transition: all 0.4s;
    height: 50px;
    text-align: center;
    color: #ffffff;
    font-size: 1.3em;
    line-height: 50px;
    position: relative;
    z-index: 1;
    background: url(/images/go_btn_0323.png) no-repeat #4b81d2 90% center;
}





 


</style> 	

</head>
<body>


<!-- 서브페이지 헤더 -->
<jsp:include page="../header.jsp" flush="false"></jsp:include>
<br><br><br><br><br>
<div class="sub_con">

		<div class="">
			
			
			<h2 class="a" style="color:#1a1a1a;">프리셋(PRESET) - 받고자하는 HTP 테스트를 선택해주세요!</h2>
			<br>
			<div class="pink_bar"></div>

			<div class="htp_steps2-1">
				<ul>
					<li><p><a href="${cpath}/preset_house.do"><img src="${cpath}/resources/images/choose_house.png"  title=""><span>집(HOUSE)</span></a></p></li>
					<li><p><a href="${cpath}/preset_tree.do"><img src="${cpath}/resources/images/choose_tree.png"  title=""><span>나무(TREE)</span></a></p></li>	
					<li><p><a href="${cpath}/preset_person.do"><img src="${cpath}/resources/images/choose_person.png"  title=""><span>사람(PERSON)</span></a></p></li>	
				</ul>
			</div>

		</div><!--//right_con-->
	</div>
          
            
    


 


<jsp:include page="../footer.jsp" flush="false"></jsp:include>  



</body>
</html>
