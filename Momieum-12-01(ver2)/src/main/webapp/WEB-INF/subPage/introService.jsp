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


<style>

body {
    opacity: 0; /* 페이지가 로드될 때 투명하게 설정 */
    transition: opacity 0.5s ease-in-out; /* 부드러운 효과를 위한 전환 설정 */
}


@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2 , .h2, h1, .h1, p, a {
font-family : 'GmarketSansMedium', cursive;
}

.dIkpba {
    position: fixed;
    z-index: 10;
    display: flex;
    flex-wrap: nowrap;
    width: auto;
    overflow: visible;
    background: transparent;
    bottom: 24px;
    right: 24px;
}

button {
    box-sizing: border-box;
    width: auto;
    padding: 0px;
    margin: 0px;
    overflow: visible;
    font-style: inherit;
    font-variant: inherit;
    font-weight: inherit;
    font-stretch: inherit;
    font-size: inherit;
    font-optical-sizing: inherit;
    font-kerning: inherit;
    font-feature-settings: inherit;
    font-variation-settings: inherit;
    font-family: NotoSansKR, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "맑은 고딕", "Segoe UI", Roboto, "system-ui", "sans-serif";
    line-height: inherit;
    color: inherit;
    text-shadow: transparent 0px 0px 0px;
    letter-spacing: inherit;
    background: transparent;
    border: 0px solid transparent;
    box-shadow: transparent 0px 0px 0px;
}


* {
    -webkit-tap-highlight-color: transparent;
}

.cgHhTF {
    position: relative;
    box-sizing: border-box;
    display: flex;
    flex-wrap: nowrap;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 56px;
    height: 56px;
    overflow: initial;
    cursor: pointer;
    backdrop-filter: blur(30px);
    border-radius: 24px;
    will-change: transform, opacity;
    transition: transform 400ms cubic-bezier(0.36, 0, 0, 1) 10ms, box-shadow 200ms ease-out 0s;
    animation: 400ms cubic-bezier(0.36, 0, 0, 1) 0s 1 normal backwards running bBWrYX;
}

.a11y-hidden {
    position: absolute;
    width: 1px;
    height: 1px;
    margin: -1px;
    overflow: hidden;
    clip: rect(0px, 0px, 0px, 0px);
    clip-path: polygon(0px 0px, 0px 0px, 0px 0px);
}

.eFJnEc {
    position: absolute;
    width: 100%;
    height: 100%;
    cursor: pointer;
    visibility: hidden;
    transition: visibility 400ms ease 0s;
    animation: 400ms cubic-bezier(0.36, 0, 0, 1) 0s 1 normal both running jiroXv;
}

.cEbzIH {
    width: 100%;
    height: 100%;
    background-color: rgba(255, 255, 255, 0.9);
    background-image: url(https://cf.channel.io/avatar/emoji/alien.f392e0.png);
    background-repeat: no-repeat;
    background-position: center center;
    background-size: cover;
    border-radius: 24px;
    box-shadow: rgba(255, 255, 255, 0.2) 0px 0px 0px 1px inset, rgba(0, 0, 0, 0.1) 0px 4px 6px, rgba(0, 0, 0, 0.15) 0px 8px 30px;
}

.bpxUzm {
    position: absolute;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 100%;
    height: 100%;
    cursor: pointer;
    visibility: visible;
    border-radius: 24px;
    transition: visibility 400ms ease 0s;
    animation: 400ms cubic-bezier(0.36, 0, 0, 1) 0s 1 normal both running jBcSpD;
    background: linear-gradient(rgb(83, 75, 163) 0%, rgb(98, 75, 163) 100%);
    box-shadow: rgba(255, 255, 255, 0.2) 0px 0px 0px 1px inset, rgba(0, 0, 0, 0.1) 0px 4px 6px, rgba(0, 0, 0, 0.15) 0px 8px 30px;
}

svg[Attributes Style] {
    width: 36;
    height: 36;
    color: rgb(255, 255, 255);
}
user agent stylesheet
svg:not(:root) {
    overflow-clip-margin: content-box;
    overflow: hidden;
}

:not(svg) {
    transform-origin: 0px 0px;
}

.giSWOn {
    position: absolute;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 100%;
    height: 100%;
    cursor: pointer;
    will-change: opacity, visibility;
    visibility: hidden;
    background-color: rgba(247, 247, 248, 0.9);
    border-radius: 24px;
    transition: visibility 400ms ease 0s;
    animation: 400ms cubic-bezier(0.36, 0, 0, 1) 0s 1 normal both running jiroXv;
    box-shadow: rgba(255, 255, 255, 0.2) 0px 0px 0px 1px inset, rgba(0, 0, 0, 0.1) 0px 4px 6px, rgba(0, 0, 0, 0.15) 0px 8px 30px;
}

.pJGcx {
    flex: 0 0 auto;
    margin: 0px;
    color: rgba(0, 0, 0, 0.6);
    transition-delay: 0ms;
    transition-timing-function: cubic-bezier(0.3, 0, 0, 1);
    transition-duration: 150ms;
    transition-property: color;
}

path[Attributes Style] {
    fill: currentcolor;
    fill-rule: evenodd;
    d: path("M 16.95 8.464 a 1 1 0 1 0 -1.414 -1.414 L 12 10.586 L 8.465 7.051 A 1 1 0 0 0 7.05 8.464 L 10.586 12 L 7.05 15.535 a 1 1 0 1 0 1.414 1.414 L 12 13.414 l 3.536 3.536 a 1 1 0 0 0 1.414 -1.415 L 13.414 12 l 3.536 -3.536 Z");
    clip-rule: evenodd;
}











</style>


</head>
<body>


   <!-- 서브페이지 헤더 -->
   <jsp:include page="../headersub.jsp" flush="false"></jsp:include>



   <br><br>
   <div id="about2" class="about2 section">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="row">
                  <div class="col-lg-6">
                     <div class="about2-left-image  wow fadeInLeft"
                        data-wow-duration="1s" data-wow-delay="0.5s">
                        <img src="${cpath}/resources/images/service.png" alt="">
                     </div>
                  </div>
                  <div class="col-lg-6 align-self-center  wow fadeInRight"
                     data-wow-duration="1s" data-wow-delay="0.5s">
                     <div class="about2-right-content">
                        <div class="section-heading">
                           <h6>INFANT DRAWING OBSERVATION</h6>
                           <h4>아동그림관찰</h4>
                           <div class="line-dec"></div>
                        </div>
                        <p>
                           그림은 ”지금-여기” 를 반영합니다. 아동의 그림에서 나타나는 표현들은 아동이 현재 상황에서 필요하거나, 원하는것
                           등 아동 자신의 속마음이 드러난 것입니다. 아동의 그림으로 아동의 마음을 알아차리는 데 도움이 되시기 바랍니다.
                           <br> <br> “아동에게 그림은 아동이 세상을 어떻게 보고, 느끼고, 생각하고 있는지를
                           나타내주는 세계 공통적인 언어라 할 수 있으며, 자신의 내면을 나타내주는 가장 자연스러운 표현수단이다.”-
                           코핏츠(Koppitz, 1984)
                        </p>
                        <div class="row">
                           <div class="col-lg-4 col-sm-4">
                              <div class="skill-item first-skill-item wow fadeIn"
                                 data-wow-duration="1s" data-wow-delay="0s">
                                 <div class="progress" data-percentage="90">
                                    <span class="progress-left"> <span
                                       class="progress-bar"></span>
                                    </span> <span class="progress-right"> <span
                                       class="progress-bar"></span>
                                    </span>
                                    <div class="progress-value">
                                       <div>
                                          H<br> <span>House</span>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="skill-item second-skill-item wow fadeIn"
                                 data-wow-duration="1s" data-wow-delay="0s">
                                 <div class="progress" data-percentage="80">
                                    <span class="progress-left"> <span
                                       class="progress-bar"></span>
                                    </span> <span class="progress-right"> <span
                                       class="progress-bar"></span>
                                    </span>
                                    <div class="progress-value">
                                       <div>
                                          T<br> <span>Tree</span>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="skill-item third-skill-item wow fadeIn"
                                 data-wow-duration="1s" data-wow-delay="0s">
                                 <div class="progress" data-percentage="80">
                                    <span class="progress-left"> <span
                                       class="progress-bar"></span>
                                    </span> <span class="progress-right"> <span
                                       class="progress-bar"></span>
                                    </span>
                                    <div class="progress-value">
                                       <div>
                                          P<br> <span>Person</span>
                                       </div>
                                    </div>
                                 </div>
                              </div>
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
   <jsp:include page="../footer.jsp" flush="false"></jsp:include>

<script>
window.addEventListener('load', function() {
    document.body.style.opacity = '1'; /* 페이지 로드 완료 시 투명도를 1로 변경 */
});

</script>

</body>
</html>