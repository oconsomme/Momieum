<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

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

<!-- jQuery UI CSS 추가 -->
<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
@font-face {
   font-family: 'GmarketSansMedium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, label, span {
   font-family: 'GmarketSansMedium', cursive;
}

a img[src$="house.jpg"] {
   width: 155px; /* Set the width as needed */
   height: 150px; /* Keep the height proportional */
}

a img[src$="tree.jpg"] {
   width: 150px; /* Set the width as needed */
   height: auto; /* Keep the height proportional */
}

a img[src$="person.jpg"] {
   width: 150px; /* Set the width as needed */
   height: auto; /* Keep the height proportional */
}

img, fieldset {
   display: inline;
   max-width: 100%;
   border: 0px;
   line-height: 0;
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

html, body, table, input, textarea, select {
   color: #000;
   font-size: 15px;
}

a:link {
   color: #424242;
   text-decoration: none;
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

form, div, p, span, ul, li, dl, dt, textarea, h1, h2, h3, h4 {
   margin: 0px;
   padding: 0px;
   word-break: keep-all;
}

/* 팝업의 위치를 고정하고 화면 중앙에 위치하도록 설정 */
#popup-01 .popup-wrap {
   position: fixed;
   top: 47%;
   left: calc(50% - 230px); /* 페이지 중앙에서 왼쪽으로 550px 옮깁니다 */
   transform: translate(-50%, -50%);
   max-width: 500px;
   max-height: 600px;
   z-index: 1000;
}

#popup-02 .popup-wrap {
   position: fixed;
   top: 60%;
   left: calc(50% + 300px); /* 페이지 중앙에서 오른쪽으로 50px 옮깁니다 */
   transform: translate(-50%, -50%);
   max-width: 500px;
   max-height: 600px;
   z-index: 1000;
}

/* 미디어 쿼리를 사용하여 화면 크기에 따라 팝업 크기를 조정 */
@media screen and (max-width: 768px) {
   .popup-wrap {
      max-width: 100%; /* 작은 화면에서는 너비를 더 크게 설정 */
   }
}
</style>
</head>
<body>

   <!-- 헤더 페이지 -->
   <jsp:include page="header.jsp" flush="false"></jsp:include>
   <jsp:include page="loading.html" flush="false"></jsp:include>

   <!-- 팝업 코드 -->
   <div id="popupwrap">
      <div id="popup-01" style="display: block;">
         <div class="popup-wrap ui-draggable ui-draggable-handle">
            <div class="pop-con">
               <img src="${cpath}/resources/images/popup5.png">
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

      <div id="popup-02" style="display: block;">
         <div class="popup-wrap ui-draggable ui-draggable-handle">
            <div class="pop-con">
               <img src="${cpath}/resources/images/popup3.png" alt=""
                  onclick="OnClickYouTube()">
            </div>
            <div class="popupfoot">
               <div class="popfleft">
                  <input type="checkbox" id="chk2" name="chk2"> <label
                     for="chk1">오늘 하루 이창 열지 않기</label>
               </div>
               <div class="popfright">
                  <span onclick="check_today('chk2', 'popup-02');">닫기</span>&nbsp;&nbsp;
               </div>
            </div>
         </div>
      </div>
   </div>


   <!-- 팝업 끝 -->


   <div class="main-banner wow fadeIn" id="top" data-wow-duration="1s"
      data-wow-delay="0.5s">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="row">
                  <div class="col-lg-6 align-self-center">
                     <div class="left-content show-up header-text wow fadeInLeft"
                        data-wow-duration="1s" data-wow-delay="1s">
                        <div class="row">
                           <div class="col-lg-12">
                              <h6>아동 심리 검사 솔루션</h6>
                              <h2>'맘이음' MOMIEUM</h2>
                              <p>
                                 그림은 ”지금-여기” 를 반영합니다. 아동의 그림에서 나타나는 표현들은 아동이 현재 상황에서 필요하거나,
                                 원하는것 등 아동 자신의 속마음이 드러난 것입니다. 아동의 그림으로 아동의 마음을 알아차리는 데 도움이 되시기
                                 바랍니다. <br> <br> “아동에게 그림은 아동이 세상을 어떻게 보고, 느끼고, 생각하고
                                 있는지를 나타내주는 세계 공통적인 언어라 할 수 있으며, 자신의 내면을 나타내주는 가장 자연스러운
                                 표현수단이다.”- 코핏츠(Koppitz, 1984)
                              </p>
                           </div>
                           <div class="col-lg-12">
                              <div class="border-first-button scroll-to-section">
                                 <a href="${cpath}/htp.do">검사 바로가기</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-6">
                     <div class="right-image wow fadeInRight" data-wow-duration="1s"
                        data-wow-delay="0.5s">
                        <img src="${cpath}/resources/images/mainchild2.jpg" alt="">
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
            <div class="col-lg-4 offset-lg-4  wow fadeInDown"
               data-wow-duration="1s" data-wow-delay="0.3s">
               <div class="section-heading">
                  <h6>INFANT DRAWING OBSERVATION</h6>
                  <h4>
                     아동그림검사 <em>HTP</em>
                  </h4>
                  <div class="line-dec"></div>
               </div>
            </div>
            <div class="col-lg-6 show-up wow fadeInUp" data-wow-duration="1s"
               data-wow-delay="0.3s">
               <div class="blog-post">
                  <div class="thumb">
                     <a href="#"><img src="${cpath}/resources/images/service.png"
                        alt=""></a>
                  </div>
                  <div class="down-content">
                     <span class="category">HTP 검사</span> <span class="date">HOUSE-TREE-PERSON</span>
                     <a href="#"><h4>피검사자들이 그린 집-나무-사람 그림을 통해 성격 발달과 연합된 정서적인
                           면들과 역동적인 면 등을 파악할 수 있다.</h4></a>
                     <p>존 벅(John Buck)에 의해 개발된 검사로, 그는 기존의 인물화검사(DAP)에 집과 나무를 첨가하여
                        피검자가 중요하게 생각하는 영역들과 관련된 정서적, 표상적 경험을 파악하고자 하였다.</p>
                     <span class="author"><img src="images/author-post.jpg"
                        alt=""></span>
                     <div class="border-first-button">
                        <a href="${cpath}/htp.do">검사 바로가기</a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-6 wow fadeInUp" data-wow-duration="1s"
               data-wow-delay="0.3s">
               <div class="blog-posts">
                  <div class="row">
                     <div class="col-lg-12">
                        <div class="post-item">
                           <div class="thumb">
                              <a href="#"><img src="${cpath}/resources/images/house.jpg"
                                 alt=""></a>
                           </div>
                           <div class="right-content">
                              <span class="category">HOUSE</span> <a href="#"><h4></h4></a>
                              <p>가정 생활과 가족 내 관계에 대한 연상 반영, 가족간 관계, 어린시절 부모상과의 관계, 공상, 자아
                                 등의 정보를 얻을 수 있습니다.</p>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-12">
                        <div class="post-item">
                           <div class="thumb">
                              <a href="#"><img src="${cpath}/resources/images/tree.jpg"
                                 alt=""></a>
                           </div>
                           <div class="right-content">
                              <span class="category">TREE</span> <a href="#"><h4></h4></a>
                              <p>자신에 대한 보다 내면적이고 무의식적인 감정을 반영하고 있어서 자신에 대해 가장 잘 투사되는 경향이
                                 있습니다.</p>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-12">
                        <div class="post-item last-post-item">
                           <div class="thumb">
                              <a href="#"><img
                                 src="${cpath}/resources/images/person.jpg" alt=""></a>
                           </div>
                           <div class="right-content">
                              <span class="category">PERSON</span> <a href="#"><h4></h4></a>
                              <p>사람 그림은 좀 더 쉽게 자신과 관련됨을 의식하고 환경과의 관계 및 타인에게 지각된 이미지 등의
                                 정보를 얻을 수 있습니다.</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>





   <!-- 푸터 페이지 -->
   <jsp:include page="footer.jsp" flush="false"></jsp:include>





   <!-- jQuery 및 jQuery UI 스크립트 추가 -->

   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

   <script>
      // 쿠키 설정 함수
      // 쿠키 설정 함수
      function setCookie(name, value, days) {
         var expires = "";
         if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toUTCString();
         }
         document.cookie = name + "=" + (value || "") + expires + "; path=/";
      }

      // 쿠키 가져오기 함수
      function getCookie(name) {
         var nameEQ = name + "=";
         var ca = document.cookie.split(';');
         for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ')
               c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) == 0)
               return c.substring(nameEQ.length, c.length);
         }
         return null;
      }

      // 페이지 로드 시 실행되는 함수
      $(document).ready(function() {
         // 팝업창 드래그 가능하게 설정
         //$(".popup-wrap").draggable();

         // 팝업창 표시 여부 결정
         checkPopupDisplay("popup-01");
         checkPopupDisplay("popup-02");

         // '닫기' 버튼에 대한 이벤트 리스너 설정
         setupCloseButton("chk1", "popup-01");
         setupCloseButton("chk2", "popup-02");
      });

      // 팝업창 표시 여부를 결정하는 함수
      function checkPopupDisplay(popupId) {
         var popup = document.getElementById(popupId);
         if (getCookie(popupId) !== "closed") {
            popup.style.display = "block";
         }else {
              popup.style.display = "none";
          }
      }

      // '닫기' 버튼 이벤트 리스너 설정 함수
      function setupCloseButton(checkboxId, popupId) {
         var closeButton = document
               .querySelector(`#${popupId} .popfright span`);
         closeButton.addEventListener("click", function() {
            closePopup(checkboxId, popupId);
         });
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
   </script>
</body>
</html>