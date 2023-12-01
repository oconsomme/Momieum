<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 템플릿 -->
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
   rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="${cpath}/resources/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="${cpath}/resources/css/fontawesome.css">
<link rel="stylesheet"
   href="${cpath}/resources/css/templatemo-digimedia-v3.css">
<link rel="stylesheet" href="${cpath}/resources/css/animated.css">
<link rel="stylesheet" href="${cpath}/resources/css/owl.css">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="styles.css">
<!-- Font Awesome 아이콘 라이브러리 추가 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

<style>
@font-face {
   font-family: 'GmarketSansMedium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a {
   font-family: 'GmarketSansMedium', cursive;
}

@import "reset.css";

body {
   background-color: #f6f9fc;
   font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
      Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
   display: flex;
   flex-direction: column;
   align-items: center;
   padding: 50px 0px;
   
}

.canvas {
   width: 780px;
   height: 700px;
   background-color: white;
   border-radius: 15px;
   box-shadow: 0 4px 6px rgba(50, 50, 93, 0.11), 0 1px 3px
      rgba(0, 0, 0, 0.08);
}

.controls {
   margin-top: 25px;
   display: flex;
   flex-direction: column;
   align-items: center;
}

.controls .controls__colors {
   display: flex;
   margin-top: 30px;
}

.controls__colors .controls__color {
   width: 60px;
   height: 60px;
   border-radius: 20px;
   cursor: pointer;
   box-shadow: 0 4px 6px rgba(50, 50, 93, 0.11), 0 1px 3px
      rgba(0, 0, 0, 0.08);
}

.controls .controls__btns {
   margin-bottom: 30px;
}

.controls__btns button {
   all: unset;
   cursor: pointer;
   background-color: white;
   padding: 5px 0px;
   width: 80px;
   text-align: center;
   border-radius: 5px;
   box-shadow: 0 4px 6px rgba(50, 50, 93, 0.11), 0 1px 3px
      rgba(0, 0, 0, 0.08);
   border: 2px solid rgba(0, 0, 0, 0.2);
   color: rgba(0, 0, 0, 0.7);
   text-transform: uppercase;
   font-weight: 800;
   font-size: 12px;
}

.controls__btns button:active {
   transform: scale(0.98);
}

.controls .controls__range {
   margin-bottom: 30px;
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

.back-button-container {
    position: absolute; /* 절대 위치 설정 */
    top: 43px; /* 화면 상단에서부터의 거리 */
    left: 27% /* 화면 왼쪽에서부터의 거리 */
}

.back-button {
    background-color: transparent; /* 투명 배경 */
    border: none; /* 테두리 없음 */
    cursor: pointer; /* 커서 스타일 */
    font-size: 24px; /* 아이콘 크기 */
    color: #333; /* 아이콘 색상 */
}

.back-button:hover {
    color: #666; /* 호버 시 아이콘 색상 변경 */
}

#popup-01 .popup-wrap {
   position: fixed;
   top: 47%;
   left: calc(50% - 0px); /* 페이지 중앙에서 왼쪽으로 550px 옮깁니다 */
   transform: translate(-50%, -50%);
   max-width: 500px;
   max-height: 600px;
   z-index: 1000;
}

.popupfoot .popfright {
   float: right;
   margin-right: 20px;
}

.popupfoot:after {
   display: block;
   content: "";
   clear: both;
}

.popup-wrap .pop-con {
   background: #fff;
}

.popupfoot {
   padding: 10px 0;
    border : 1px solid gray;
    background: #fffcfc;
}

.popupfoot .popfleft {
   float: left;
   margin-left: 20px;
}

.eraser-button {
   background-size: cover; /* 지우개 아이콘 크기 조절 */
}

</style>
</head>
<body>
<% 
UserDetails userDetails = (UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
String username = userDetails.getUsername();   
%>


<div id="popupwrap">

      <div id="popup-01" style="display: block;">
         <div class="popup-wrap ui-draggable ui-draggable-handle">
            <div class="pop-con">
               <img src="${cpath}/resources/images/drawingpopup.png">
            </div>

            <div class="popupfoot">
               <div class="popfleft">
                  <input type="checkbox" id="chk1" name="chk1"> <label
                     for="chk1">오늘 하루 이창 열지 않기</label>
               </div>
               <div class="popfright">
                  <span onclick="check_today('chk1', 'popup-01');">닫기</span>&nbsp;&nbsp;
               </div>
            </div>
         </div>
      </div>
</div>


<div class="back-button-container">
    <button id="jsBackButton" class="back-button"><i class="fas fa-arrow-left"></i></button>
</div>
   <h6>HTP검사-그리기</h6>
   
   <input type="hidden" id="username" name="username" class="form-control" value="<%=userDetails.getUsername()%>">
   
   <br>
   
   <canvas id="jsCanvas" class="canvas"></canvas>
   <br>

   <h2>집,나무,사람을 그려주세요!</h2>
   <div class="controls">
      <div class="controls__range">
         <input type="range" id="jsRange" min="0.1" max="5" value="2.5"
            step="0.1" />
      </div>
      <div class="text-right">
         <a href="javascript:clearCanvas()" class="redraw-link">전체 지우기</a> <a
            href="javascript:sendDrawing()" class="redraw-link">다 그렸어요</a>
      </div>
      <div class="controls__colors" id="jsColors">
         <div class="controls__color jsColor"
            style="background-color: #2c2c2c"></div>
         <div class="controls__color jsColor" style="background-color: white"></div>
         <div class="controls__color jsColor"
            style="background-color: #FF3B30"></div>
         <div class="controls__color jsColor"
            style="background-color: #FF9500"></div>
         <div class="controls__color jsColor"
            style="background-color: #FFCC00"></div>
         <div class="controls__color jsColor"
            style="background-color: #4CD963"></div>
         <div class="controls__color jsColor"
            style="background-color: #5AC8FA"></div>
         <div class="controls__color jsColor"
            style="background-color: #0579FF"></div>
         <div class="controls__color jsColor"
            style="background-color: #5856D6"></div>
         <div class="controls__color jsColor eraser-button" style="background-image: url('eraser_icon.png');"></div>
            
      </div>
   </div>
   <script src="app.js"></script>
   <script>
       const username = "<%=userDetails.getUsername()%>";

      // 마우스 움직임(좌표) 확인 할 수 있는 function!!
      const canvas = document.getElementById("jsCanvas");
      const ctx = canvas.getContext("2d");
      
      canvas.width = 780;
      canvas.height = 700;
      
      // 캔버스 배경색을 흰색으로 설정
      ctx.fillStyle = "white";
      ctx.fillRect(0, 0, canvas.width, canvas.height);

      ctx.strokeStyle = "#2c2c2c"; // 우리가 그릴 선들은 모두 이 색을 갖는다
      ctx.lineWidth = 2.5; // 라인의 너비가 2.5
      
      let painting = false;

      function stopPainting() {
         painting = false;
      }

      function onMouseMove(event){
          const x = event.offsetX;
          const y = event.offsetY;
          if (!painting) {
              ctx.beginPath(); // path는 선이다, path를 만들면 마우스의 x,y, 좌표로 path를 옮긴다
              ctx.moveTo(x, y);
            } else {
              ctx.lineTo(x, y); // lineTo는 path의 이전 위치에서 지금 위치까지 선을 만드는 것
              ctx.stroke();
            } // lineTo()와 stroke()는 마우스를 움직이는 내내 발생한다! 마우스를 움직이는 동안 계속 발생한다!
      }

      function onMouseDown(event){
          painting = true;
      }

      function onMouseUp(event){
          painting = false;
      }

      function onMouseLeave(event){
          painting = false;
      }

      if(canvas){
          canvas.addEventListener("mousemove", onMouseMove);
          canvas.addEventListener("mousedown", onMouseDown);
          canvas.addEventListener("mouseup", onMouseUp);
          canvas.addEventListener("mouseleave", onMouseLeave);
      }
      
      // 색상 바뀌는 코드!!
      const colors = document.getElementsByClassName("jsColor");

      function handleColorClick(event) {
          const color = event.target.style.backgroundColor;
          ctx.strokeStyle = color;
          ctx.fillStyle = color;
        }
        
        Array.from(colors).forEach(color =>
          color.addEventListener("click", handleColorClick)
        );
        
      // 붓 사이즈 조절 기능!!
      const range = document.getElementById("jsRange");

      if (range) {
             range.addEventListener("input", handleRangeChange);
         }

      function handleRangeChange(event) {
        const size = event.target.value;
        ctx.lineWidth = size;
      } 
      
      // 파일로 저장하기 기능!!
      canvas.addEventListener("contextmenu", handleCM); // 이벤트 추가
      const saveBtn = document.getElementById("jsSave");
      function handleCM(event) {
        event.preventDefault();
      }

      function handleSaveClick() {
        const image = canvas.toDataURL();
        const link = document.createElement("a");
        link.href = image;
        link.download = "PaintJS";
        link.click();
      }

      if (saveBtn) {
        saveBtn.addEventListener("click", handleSaveClick);
      }
      
      // 다시 그릴게요 함수
      function clearCanvas() {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
      }

      // 파일 업로드 및 로딩 화면 관련 함수
      function captureCanvas() {
        var canvas = document.getElementById('canvas');
        var imageData = canvas.toDataURL("image/jpg"); // 캔버스 내용을 이미지 데이터로 변환
        return imageData;
      }

      function sendDrawing() {
        var canvas = document.getElementById('jsCanvas');
        var testType = 'DRAW';

        // 로딩 화면 표시
        var loadElement = document.getElementById('load');
        if (loadElement) {
          loadElement.style.display = 'flex'; // 로딩 화면을 보이도록 설정
        }

        canvas.toBlob(function(blob) {
            var formData = new FormData();
            formData.append('file', blob, 'canvas_image.jpg');
            formData.append('testType', testType);
            formData.append('username', username); // 사용자 이름 추가
            
            fetch('http://127.0.0.1:5011/upload', {
                method: 'POST',
                body: formData
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(data => {
                // 성공 메시지 표시
                alert('이미지 업로드 및 처리 성공');

                // 로딩 화면 숨기기
                if (loadElement) {
                    loadElement.style.display = 'none'; 
                }

                // testresult2 페이지로 이동
                window.location.href = '${cpath}/getUploadResult?username=<%= userDetails.getUsername() %>';

                // ... 추가적인 성공 처리 로직 ...
            })
            .catch(error => {
                console.error('Error:', error);

                // 로딩 화면 숨기기
                if (loadElement) {
                    loadElement.style.display = 'none'; 
                }

                // 실패 시 처리 로직
                alert('이미지 업로드 및 처리 실패');

                // 결과 페이지로 리디렉션
                window.location.href = '${cpath}/getUploadResult?username=<%= userDetails.getUsername() %>';
            });
        }, 'image/jpeg');
    }

   
   // 팝업창을 닫는 함수
   function closePopup(checkboxId, popupId) {
      var checkbox = document.getElementById(checkboxId);
      var popup = document.getElementById(popupId);

      if (checkbox && checkbox.checked) {
           setCookie(popupId, "closed", 1); // 쿠키 설정
       }

       popup.style.display = "none"; // 팝업창 숨기기
   }
   
     function check_today(checkboxId, popupId) {
       var checkbox = document.getElementById(checkboxId);
       var popup = document.getElementById(popupId);

       if (checkbox && checkbox.checked) {
           setCookie(popupId, "closed", 1); // 쿠키 설정
       }

       if (popup) {
           popup.style.display = "none"; // 팝업창 숨기기
       }
   }
           
     const eraser = document.querySelector(".eraser-button");

     let isErasing = false;
     eraser.addEventListener("click", function() {
        ctx.globalCompositeOperation = "destination-out"; // 지우개 모드 설정
        ctx.lineWidth = 10; // 지우개 두께 설정
     });

     // 기존 색상 버튼 클릭 시 동작 변경
     function handleColorClick(event) {
        ctx.globalCompositeOperation = "source-over"; // 기본 그리기 모드로 변경
        const color = event.target.style.backgroundColor;
        ctx.strokeStyle = color;
        ctx.fillStyle = color;
     }

      </script>


</body>
</html>