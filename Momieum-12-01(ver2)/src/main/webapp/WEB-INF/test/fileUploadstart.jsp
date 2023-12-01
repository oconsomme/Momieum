<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
    
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

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a ,label, btn btn-warning,button,upload-name {
   font-family: 'GmarketSansMedium', cursive;
}

@import "reset.css";
body {
  background-color: #f6f9fc;
  font-family: 'Poppins', sans-serif;
}

.canvas {
   width: 700px;
   height: 700px;
   background-color: white;
   border-radius: 15px;
   box-shadow: 0 4px 6px rgba(50, 50, 93, 0.11), 0 1px 3px
      rgba(0, 0, 0, 0.08);
}

.filebox {
  text-align: center;
  margin-bottom: 1rem;
}

.filebox label {
  display: inline-block;
  padding: 10px 20px;
  color: #fff;
  vertical-align: middle;
  background-color: #ccd4dd; /* Bootstrap primary color */
  cursor: pointer;
  border-radius: 5px;
  margin-right: 10px;
}

.filebox input[type="file"] {
  display: none;
}

.upload-name {
  display: inline-block;
  padding: 10px;
  border: 1px solid #ced4da; /* Bootstrap input border color */
  border-radius: 5px;
  vertical-align: middle;
  width: 30%;
}

.card-footer {
  text-align: center;
}

.btn {
  margin: 0 8px;
}


#people {
    position: fixed; /* 고정된 위치 */
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.8); /* 반투명 배경 */
    display: flex;
    align-items: center; /* 수직 중앙 정렬 */
    justify-content: center; /* 수평 중앙 정렬 */
    z-index: 9999;
}

#people > img {
    max-width: 130px; /* 이미지 최대 너비 */
    max-height: 130px; /* 이미지 최대 높이 */

  
}

.btn-primary {
    background-color: #0069d9; /* 버튼 배경 색상 */
    color: white; /* 텍스트 색상 */
    border: none; /* 테두리 제거 */
    padding: 10px 20px; /* 버튼 내부 여백 */
    border-radius: 5px; /* 테두리 둥글게 */
    font-family: 'GmarketSansMedium', sans-serif; /* 폰트 */
    font-size: 16px; /* 폰트 크기 */
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
    transition: background-color 0.3s, box-shadow 0.3s; /* 전환 효과 */
}

.btn-primary:hover {
    background-color: #3788d8; /* 호버 시 배경 색상 */
    box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.15); /* 호버 시 그림자 효과 */
}

.btn-primary:active {
    background-color: #2c6cb0; /* 클릭 시 배경 색상 */
}


section { 
   width: 1000px; 
   height: 400px; 
   position: absolute; 
   top: 50%; 
   left: 50%; 
   transform: translate(-50%,-50%); 
}

section .people {   
   width: 100%; 
   height: 100%; 
   position: absolute; 
   top: 0px;
   left: 0px;
   animation: day linear 20s infinite;   
}

section .people .man {
   position: absolute;
   left: 0%;
   bottom: 0px;
   animation: flow linear 6s infinite;
   width:50%
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
}

</style>  
</head>
<body>

<% 
UserDetails userDetails = (UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
String username = userDetails.getUsername();   
%>

<div class="container mt-5">
  

  <!-- 파일 업로드 폼 추가 -->
  <div class="text-center">
  <h6>HTP검사-파일업로드</h6>
  
    <canvas id="jsCanvas" class="canvas"></canvas>
  </div>
  
  <form id="fileUploadForm" enctype="multipart/form-data" method="post" class="mb-4">
    <input type="hidden" id="username" name="username" class="form-control" value="<%=userDetails.getUsername()%>">
    <div class="filebox text-center">
    <br>
    <h2 class="upload">그림 파일을 업로드 해주세요!</h2>
    <br>
      <label for="file">파일찾기</label>
      <input type="file" id="file" name="file" onchange="loadImage(event)">

     
      
     <input class="upload-name" id="upload-name" placeholder="첨부파일" disabled="disabled">
    </div>
    
      <div class="text-center">
        <!-- 취소 버튼 (필요에 따라 적절한 링크나 기능 추가) -->
        
        <!-- 제출 버튼 -->
      <button type="button" class="btn btn-primary" onclick="uploadFile(event)">
           제출하기
        </button>
      </div>
    
  </form>
</div>
<!-- 로딩창  -->


<section>   
      <article class="people">
<!--<div id="load"> -->
  <img src="${cpath}/resources/images/loadingcatdog.gif" id="load" class="man" />
<!--</div>-->
</article>
</section>



<script >
  const loading_page = document.getElementById("load");
  window.onload = function(){
    loading_page.style.display = 'none';
  }
</script>

<!-- 푸터 페이지 -->
<jsp:include page="../footer.jsp" flush="false"></jsp:include>  

<script>
  // 이미지를 캔버스에 로드하는 함수
function loadImage(event) {
  const file = event.target.files[0];
  if (file) {
    const reader = new FileReader();
    reader.onload = function(e) {
      const img = new Image();
      img.onload = function() {
        const canvas = document.getElementById('jsCanvas');
        const ctx = canvas.getContext('2d');
        const maxWidth = 640;

        let width = img.width;
        let height = img.height;

        if (width > maxWidth) {
          height = Math.floor((height * maxWidth) / width);
          width = maxWidth;
        }

        canvas.width = width;
        canvas.height = height;
        ctx.drawImage(img, 0, 0, width, height);

        // 이미지를 Base64 문자열로 변환하여 세션 스토리지에 저장
        const imageData = canvas.toDataURL('image/png');
        sessionStorage.setItem('uploadedImage', imageData);
      };
      img.src = e.target.result;
    };
    reader.readAsDataURL(file);
  }
}

  // 파일 업로드 처리를 담당하는 함수
 
  // 파일 업로드 처리를 담당하는 함수
  function uploadFile(event) {
    event.preventDefault(); // 폼의 기본 제출 이벤트를 중단


    // 로딩 화면 표시
    document.getElementById('load').style.display = 'flex';
    var testType = 'UPLOAD';
    const formData = new FormData(document.getElementById('fileUploadForm'));
    const fileInput = document.getElementById('file');
    formData.append('file', fileInput.files[0]);
    formData.append('testType', testType);

    fetch('http://127.0.0.1:5011/upload', {
         method: 'POST',
         body: formData
       })
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok: ' + response.statusText);
      }
      return response.text(); // 응답이 텍스트 형식이라고 가정, 필요에 따라 수정 가능
    })
    .then(data => {
      // 성공적인 응답 처리
      alert('파일 업로드 성공');
      // 추가적인 성공 처리 로직을 여기에 작성하세요.

      // 로딩 화면 숨기기
      document.getElementById('load').style.display = 'none';
      window.location.href = '${cpath}/getUploadResult?username=<%= userDetails.getUsername() %>';
    })
    .catch(error => {
      console.error('There was an error!', error);
      alert('파일 업로드 실패');

      // 로딩 화면 숨기기
      document.getElementById('load').style.display = 'none';
      window.location.href = '${cpath}/getUploadResult?username=<%= userDetails.getUsername() %>';
    });
  }

   // 첨부 파일 명 표기되는 코드 !!
  document.getElementById('file').addEventListener('change', function(e) {
       var fileName = e.target.files[0].name; // 선택된 파일의 이름을 가져옵니다.
       document.getElementById('upload-name').value = fileName; // 'upload-name' 필드에 파일 이름을 설정합니다.
   });

  function uploadCanvasImage() {
     var canvas = document.getElementById('jsCanvas');
     var imageData = canvas.toDataURL('image/png');

     var xhr = new XMLHttpRequest();
     xhr.open('POST', '${cpath}/uploadImage', true);
     xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
     xhr.send('imageData=' + encodeURIComponent(imageData));

     xhr.onload = function() {
       if (xhr.status === 200) {
         alert('이미지가 성공적으로 업로드되었습니다.');
       } else {
         alert('이미지 업로드에 실패했습니다.');
       }
     };
   }


</script>


</body>
</html>