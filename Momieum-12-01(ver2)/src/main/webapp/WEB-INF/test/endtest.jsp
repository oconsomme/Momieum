<%@page import="org.springframework.web.bind.annotation.RequestParam"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.google.gson.Gson" %>
    
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
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2 , .h2, h1, .h1, p, a {
font-family : 'GmarketSansMedium', cursive;
}

.sub_con {
    padding: 40px 0;
    text-align: center;
    width: 100%;
    min-width: 100%;
    z-index: 2;
    margin: 0 auto;
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

.sub8_comple_box {
    width: 600px;
    height: 383px;
    margin: 0 auto;
    border: 1px solid #d9d9d9;
    background: url(/images/comple_img.png) no-repeat center 50px #fff;
    padding-top: 265px;
}

.htp_btn2 {
    margin-top: 40px;
}

a:link, a:visited {
    text-decoration: none;
    color:  #4b81d2;
}


.htp_btn2 a, .htp_btn2 input[type=submit] {
    font-size: 1.6em;
    font-family: 'GmarketSansMedium';
    color: #fff;
    display: inline-block;
    width: 312px;
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



 .sub8_comple_box {
        position: relative; /* 포지셔닝 컨텍스트 설정 */
        /* 기존 스타일 유지 */
    }

    .sub8_comple_box img {
        position: absolute; /* 절대 위치 설정 */
        top: 40%; /* 상단에서 50% 위치 */
        left: 50%; /* 왼쪽에서 50% 위치 */
        transform: translate(-50%, -50%); /* 중앙 정렬 */
        max-width: 100%; /* 최대 너비 조정 */
        height: auto; /* 높이 자동 조정 */
    }

	.Canvas-image{
	width: 250px;
	height: auto;
	marign: 0 auto;

}    
  
</style>   	
   
</head>
<body>

<!-- 서브페이지 헤더 -->
<jsp:include page="../headersub.jsp" flush="false"></jsp:include>

<%
String imageData = request.getParameter("imageData");
String imageData2 = imageData;
String[] selectedValues = request.getParameterValues("selectedValues[]");
List<String> selectedValuesList = (selectedValues != null) ? Arrays.asList(selectedValues) : new ArrayList<>();
List<Integer> selectedIntValuesList = new ArrayList<>();

String firstValue = selectedValuesList.isEmpty() ? "" : selectedValuesList.get(0);

for (String value : selectedValuesList) {
    try {
        // 문자열을 정수로 변환하여 리스트에 추가
        int intValue = Integer.parseInt(value);
        selectedIntValuesList.add(intValue);
    } catch (NumberFormatException e) {
        // 변환 중 오류가 발생하면 처리
        e.printStackTrace(); // 또는 로깅 등의 적절한 처리를 수행
    }
}

for (int intValue : selectedIntValuesList) {
    System.out.println(intValue);
}

%>

	<div class="sub_con">
	<div class="">
			<div class="blue_font">HTP 검사 완료</div>
			<p class="sub_wfont" style="color:#1a1a1a;">맘이음을 이용해 주셔서 감사합니다.</p>
			<div class="blue_bar"></div>
			<div class="sub8_comple_box">
			    <% if (imageData != null) { %>
			        <img src="<%= imageData %>" alt="Canvas Drawing" class="Canvas-image"/>
			        
			    <% } else { %>
			        <p>이미지가 없습니다.</p>
		    	<% } %>
				<p>집 검사를 완료하였습니다.<br>아래의 결과보기 버튼을 누르시면 바로결과 확인이 가능합니다. </p>
				
			</div>
			<div class="htp_btn2">
				<a href="javascript:sendResult()" class="house_result">검사 결과보기</a>
			</div>
		</div>
		
		<c:set var="objectType" value="${param.objectType}" />

</div>

<jsp:include page="../footer.jsp" flush="false"></jsp:include>  

<script>
function sendResult() {
    var selectedValues = <%= new Gson().toJson(selectedIntValuesList) %>;

    // 첫 번째 AJAX 호출
    var ajax1 = $.ajax({
        type: "POST",
        url: "${cpath}/getPresetContent",
        data: JSON.stringify(selectedValues),
        contentType: "application/json",
        dataType: "text"
    });

    // 두 번째 AJAX 호출
    var ajax2 = $.ajax({
        type: "POST",
        url: "${cpath}/getPresetKeyword",
        data: JSON.stringify(selectedValues),
        contentType: "application/json",
        dataType: "text"
    });

    // $.when()을 사용하여 두 AJAX 호출이 모두 완료될 때까지 기다림
    $.when(ajax1, ajax2).done(function(response1, response2) {
        // 서버 응답 처리
        console.log(response1, response2);

        // 여기에 서버 응답을 처리하는 추가적인 코드 작성
        var form = document.createElement("form");
        form.method = "POST";
        form.action = "${cpath}/testresult.do?objectType=${objectType}";

        // 테스트 결과 상세 내용을 폼에 추가
        var content = document.createElement("input");
        content.type = "hidden";
        content.name = "resultContent";
        content.value = response1[0]; // response1은 배열 형태로 반환됨
        form.appendChild(content);

        // 테스트 결과 키워드 내용을 폼에 추가
        var keyword = document.createElement("input");
        keyword.type = "hidden";
        keyword.name = "resultKeyword";
        keyword.value = response2[0]; // response2는 배열 형태로 반환됨
        form.appendChild(keyword);
        
        var imageDataInput = document.createElement("input");
        imageDataInput.type = "hidden";
        imageDataInput.name = "imageData2";
        imageDataInput.value = "<%= imageData %>"; // 이미지 데이터의 값을 여기에 설정
        form.appendChild(imageDataInput);
        
        // 폼을 body에 추가하고 전송
        document.body.appendChild(form);
        form.submit();
    }).fail(function(error1, error2) {
        // 에러 처리
        console.error(error1, error2);
    });
}

</script>


</body>
</html>
