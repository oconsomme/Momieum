<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.core.userdetails.UserDetails"%>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>

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


<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="${cpath}/resources/admin/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="${cpath}/resources/admin/dist/css/adminlte.min.css">


<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<style>
@font-face {
   font-family: 'GmarketSansMedium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, label, btn btn-warning,
   button, upload-name, div>button, div>input {
   font-family: 'GmarketSansMedium', cursive;
}

.test-sec01 {
   width: 100%;
   min-height: 100vh;
   max-width: 768px;
   margin: 0 auto;
   padding: 16px 24px;
   box-sizing: border-box;
   display: flex;
   justify-content: flex-start;
   gap: 16px;
   align-items: center;
   flex-direction: column;
}

section {
   position: relative;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
   menu, nav, section {
   display: block;
}

* {
   margin: 0;
   padding: 0;
   word-break: keep-all;
}

user agent stylesheet
section {
   display: block;
}

.wrap {
   width: 100%;
   max-width: 768px;
   margin: 0 auto;
   /* border: 1px solid var(--color-line); */
   background-color: #fff;
   position: relative;
   font-family: "Noto Sans KR", sans-serif;
}

html, body {
   font-size: 20px;
   overflow-x: hidden;
   font-family: 'Noto Sans', 'Noto Sans KR', sans-serif;
}

:root { -
   -color-main: #ef4967; -
   -color-bg: #f1f5f9; -
   -color-icon: #94a3b8; -
   -color-line: #e2e8f0; -
   -color-alert: #ef4444; -
   -color-font: #0f172a; -
   -color-text-btn: #64748b; -
   -text-20: 1.25rem; -
   -text-16: 1rem; -
   -text-14: 0.875rem; -
   -text-12: 0.75rem; -
   -text-10: 0.625rem;
}

:root { -
   -color-main: #ef4967; -
   -color-bg: #f1f5f9; -
   -color-icon: #94a3b8; -
   -color-line: #e2e8f0; -
   -color-alert: #ef4444; -
   -color-font: #0f172a; -
   -color-text-btn: #64748b; -
   -text-20: 1.25rem; -
   -text-16: 1rem; -
   -text-14: 0.875rem; -
   -text-12: 0.75rem; -
   -text-10: 0.625rem;
}

::selection {
   background: #F27A79;
   color: #fff;
}

.test-sec01-box {
   padding: 0;
}

.test-sec01-box {
   width: 100%;
   padding: 16px;
   box-sizing: border-box;
   border-radius: 8px;
   position: relative;
   border: 1px solid var(- -color-line);
   background-color: #f1f1f1;
   text-align: center;
   box-shadow: 0px 0px 8px 0px #00000026;
   cursor: pointer;
   height: 130px;
}

a {
   text-decoration: none;
   color: inherit;
}

* {
   margin: 0;
   padding: 0;
   word-break: keep-all;
}

.test-sec01 {
   width: 100%;
   min-height: 100vh;
   max-width: 768px;
   margin: 0 auto;
   padding: 16px 24px;
   box-sizing: border-box;
   display: flex;
   justify-content: flex-start;
   gap: 16px;
   align-items: center;
   flex-direction: column;
   margin-bottom: 20px;
}

section {
   position: relative;
}

.wrap {
   width: 100%;
   max-width: 768px;
   margin: 0 auto;
   /* border: 1px solid var(--color-line); */
   background-color: #fff;
   position: relative;
   font-family: "Noto Sans KR", sans-serif;
}

* {
   margin: 0;
   padding: 0;
   word-break: keep-all;
}

user agent stylesheet
div {
   display: block;
}

html, body {
   font-size: 20px;
   overflow-x: hidden;
   font-family: 'Noto Sans', 'Noto Sans KR', sans-serif;
}

:root { -
   -color-main: #ef4967; -
   -color-bg: #f1f5f9; -
   -color-icon: #94a3b8; -
   -color-line: #e2e8f0; -
   -color-alert: #ef4444; -
   -color-font: #0f172a; -
   -color-text-btn: #64748b; -
   -text-20: 1.25rem; -
   -text-16: 1rem; -
   -text-14: 0.875rem; -
   -text-12: 0.75rem; -
   -text-10: 0.625rem;
}

:root { -
   -color-main: #ef4967; -
   -color-bg: #f1f5f9; -
   -color-icon: #94a3b8; -
   -color-line: #e2e8f0; -
   -color-alert: #ef4444; -
   -color-font: #0f172a; -
   -color-text-btn: #64748b; -
   -text-20: 1.25rem; -
   -text-16: 1rem; -
   -text-14: 0.875rem; -
   -text-12: 0.75rem; -
   -text-10: 0.625rem;
}

:root { -
   -color-main: var(- -color-main); -
   -color-bg: var(- -color-bg); -
   -color-icon: var(- -color-icon); -
   -color-line: var(- -color-line); -
   -color-alert: var(- -color-alert); -
   -color-font: var(- -color-font); -
   -color-text-btn: var(- -color-text-btn);
}

::selection {
   background: #F27A79;
   color: #fff;
}

.list__wrapping {
   padding: 16px 16px;
}

.test__category-wrap {
   width: 100%;
   display: flex;
   justify-content: start;
   align-items: center;
   gap: 8px;
   margin-bottom: 5px;
}

.test__category-tag.recomand {
   background-color: #ef4967;
}

.test__category-tag {
   padding: 4px;
   width: fit-content;
   border-radius: 8px;
   font-size: var(- -text-10);
   font-weight: 500;
   color: #fff;
}

.test__category-tag.package {
   background-color: #14b8a6;
}

.test__category-wrap {
   width: 100%;
   display: flex;
   justify-content: start;
   align-items: center;
   gap: 8px;
   margin-bottom: 5px;
}

.test-sec01-box__modfy .best-top {
   text-align: left;
}

.test-box-tit {
   font-size: var(- -text-16);
   font-weight: bold;
   color: #4b81d2;
}

.test__info-text02 {
   font-size: var(- -text-12);
   color: #212529;
   font-weight: 500;
   text-align: left;
   margin-top: 8px;
}

element.style {
   font-weight: 400;
}

.test-sec01-box__modfy .test-hash-tag-wrap {
   justify-content: start;
   width: 100%;
   flex-flow: wrap;
}

.test-hash-tag-wrap {
   display: flex;
   justify-content: center;
   gap: 4px;
   margin-top: 10px;
}

.tag-gray {
   background-color: #e2e8f0;
   color: #94a3b8;
}

.test-hash-tag {
   width: fit-content;
   text-align: center;
   font-size: var(- -text-12);
   border-radius: 13px;
   padding: 4px 8px;
   box-sizing: border-box;
   white-space: nowrap;
   overflow: hidden;
}

.test-sec01-box__modfy .test-box-bottom {
   justify-content: end;
}

.test-box-bottom {
   display: flex;
   justify-content: center;
   margin-top: 15px;
   gap: 35px;
}

.test-time {
   align-items: end;
}

.test-time {
   font-size: var(- -text-12);
   text-align: center;
   display: flex;
   justify-content: center;
   align-items: center;
   flex-direction: column;
   color: #5e5e5e;
   line-height: 16px;
}

.test-time .red-text {
   font-size: var(- -text-16);
   margin-top: 4px;
}

.red-text {
   color: var(- -color-alert);
   font-weight: bold;
}

.test-box-bottom {
   justify-content: end;
}

.test-box-bottom {
   display: flex;
   justify-content: center;
   margin-top: 15px;
   gap: 35px;
}

.radio-buttons-container {
   display: flex;
   align-items: center;
   gap: 24px;
}

.radio-button {
   display: inline-block;
   position: relative;
   cursor: pointer;
}

.radio-button__input {
   position: absolute;
   opacity: 0;
   width: 0;
   height: 0;
}

.radio-button__label {
   display: inline-block;
   padding-left: 30px;
   margin-bottom: 10px;
   position: relative;
   font-size: 16px;
   color: #000000;
   cursor: pointer;
   transition: all 0.3s cubic-bezier(0.23, 1, 0.320, 1);
}

.radio-button__custom {
   position: absolute;
   top: 50%;
   left: 0;
   transform: translateY(-50%);
   width: 20px;
   height: 20px;
   border-radius: 50%;
   border: 2px solid #555;
   transition: all 0.3s cubic-bezier(0.23, 1, 0.320, 1);
}

.radio-button__input:checked+.radio-button__label .radio-button__custom
   {
   transform: translateY(-50%) scale(0.9);
   border: 5px solid #4c8bf5;
   color: #4c8bf5;
}

.radio-button__input:checked+.radio-button__label {
   color: #4c8bf5;
}

.radio-button__label:hover .radio-button__custom {
   transform: translateY(-50%) scale(1.2);
   border-color: #4c8bf5;
   box-shadow: 0 0 10px #4c8bf580;
}

.form-group.col-sm-10.info#info__birth select::-webkit-scrollbar {
   width: 10px;
}

.form-group.col-sm-10.info#info__birth select::-webkit-scrollbar-thumb {
   background-color: #b6b6b6;
   border-radius: 3px;
}

.form-group.col-sm-10.info#info__birth select::-webkit-scrollbar-track {
   background-color: #ebe9e9;
   border-radius: 6px;
}

.kakaoIco:hover {
   color: #a99f1e;
   s
}

.kakao-login {
   display: flex;
   align-items: center;
   justify-content: center;
   margin-bottom: 15px;
}

.kakaoIco {
   display: flex;
   align-items: center;
   text-decoration: none;
   color: #000000; /* 텍스트 색상 */
   font-weight: bold;
   font-size: 20px;
   margin-top: 13px;
}

.kakaoIco img {
   margin-right: 10px; /* 이미지와 텍스트 사이 간격 */
   width: 26px;
}

.card-headersns {
   background-color: rgba(0, 0, 0, .03);
   padding-bottom: 20px;
   text-align: center;
}

.input-group kakao-login {
   padding-bottom: -10px;
}

.container-fluid2 {
   width: 100%;
   padding-left: 15%; /* 왼쪽 여백 */
   padding-right: 15%; /* 오른쪽 여백 */
}

.test-sec01-box {
   /* 기존 스타일 유지 */
   
}

/* 마우스 오버 시 테스트 박스 스타일 */
.test-sec01-box:hover {
   background-color: #e4e0e0; /* 배경 색상 변경 예시 */
   color: #fff; /* 텍스트 색상 변경 예시 */
}

/* 마우스 오버 시 내부 텍스트 스타일 변경 */
.test-sec01-box:hover .test-box-tit {
   color: #207cd1; /* 텍스트 색상 변경 예시 */
}

.result-logo {
   margin-top: -65px; /* 예시로 -10px 사용, 필요에 따라 조절 */
   /* 또는 position과 top 속성을 사용 */
   position: relative;
}

.child-info-section {
   background-color: #f9f9f9;
   padding: 20px;
   border-radius: 10px;
   box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
   font-size: 18px;
}

.form-container {
   max-width: 500px;
   margin: auto;
}

.section-title {
   font-size: 24px;
   color: #333;
   text-align: center;
   margin-bottom: 20px;
}

.child-info-form .form-group {
   margin-bottom: 15px;
}

.child-info-form input[type="text"], .child-info-form select {
   width: 100%;
   padding: 10px;
   border-radius: 5px;
   border: 1px solid #ddd;
}

.child-info-form button[type="submit"] {
   width: 100%;
   padding: 10px 20px;
   background-color: #9ba1a9;
   color: white;
   border: none;
   border-radius: 5px;
   cursor: pointer;
   font-size: 16px;
}

.child-info-form button[type="submit"]:hover {
   background-color: #3b5580;
}
</style>

<body class="hold-transition sidebar-mini">


   <!-- 서브페이지 헤더 -->
   <jsp:include page="../header.jsp" flush="false"></jsp:include>

   <%
   UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
   %>


   <br>
   <br>
   <br>
   <br>
   <!-- Content Wrapper. Contains page content -->
   <div class="">

      <!-- Main content -->
      <section class="content">
         <div class="container-fluid2">


            <div class="row">

               <!-- 회원정보 프로필 -->
               <div class="col-md-3">
                  <div class="card card-primary card-outline">
                     <div class="card-body box-profile">
                        <br>
                        <div class="text-center">
                           <img class="profile-user-img img-fluid img-circle"
                              src="${cpath}/resources/admin/dist/img/HJmom1.png"
                              alt="User profile picture">
                        </div>
                        <!-- <p class="text-muted text-center">닉네임 : 쿠키맘</p> -->
                        <br>

                        <ul class="list-group list-group-unbordered mb-3">
                           <h4 class="profile-username text-center" style="color: black;"><%=userDetails.getUsername()%></h4>
                           <!-- 
                           <li class="list-group-item"><b>엄마와 아이의 마음을 이어..</b><a
                              class="float-right">맘이음</a></li>
                         -->
                        </ul>
                     </div>
                     <!-- /.card-body -->
                  </div>
                  <!-- /.card -->



                  <!-- sns계정 연동 -->
                  <div class="card card-primary2">

                     <!-- /.card-header -->
                     <div class="card-body">
                        <div class="input-group kakao-login">
                           <a href="#n" class="kakaoIco"> <img
                              src="${cpath}/resources/images/kakaologo3.png" alt="카카오톡 연동하기"
                              title=""> 카카오톡 연동하기
                           </a>
                        </div>
                     </div>
                     <!-- /.card-body -->
                  </div>
                  <!-- /.card -->
               </div>
               <!-- /.col -->


               <!-- 탭메뉴 -->
               <div class="col-md-9">
                  <div class="card">
                     <div class="card-header p-2">
                        <ul class="nav nav-pills">
                           <li class="nav-item"><a class="nav-link active"
                              href="#testResult" data-toggle="tab">심리테스트결과</a></li>
                           <li class="nav-item"><a class="nav-link" href="#child"
                              data-toggle="tab" onclick="showContent('child')">자녀정보관리</a></li>
                           <li class="nav-item"><a class="nav-link" href="#apl"
                              data-toggle="tab">상담신청현황</a></li>
                        </ul>
                     </div>



                     <div class="card-body">

                        <div class="tab-content">

                           <!-- 심리테스트결과 -->
                           <div class="active tab-pane" id="testResult">

                              <section class="test-sec01">
                                 <!-- 
                                 <c:forEach var="vo" items="${tbTestResultList}" varStatus="i">
                                                       <tr>
                                                          <td>${i.count}</td>
                                                          <td><a href="${vo.idx}">${vo.title}</a></td>
                                                          <td><fmt:formatDate value="${vo.indate}" pattern="yyyy-MM-dd" /> </td>
                                                          <td>${vo.count}</td>
                                                       </tr>
                                                    </c:forEach>
                              
                               -->
                                 <c:forEach var="vo" items="${resultList}" varStatus="i">
                                    <a class="test-sec01-box test-sec01-box__modfy "
                                       onclick="location.href='${cpath}/testresultdetail?testIdx=${vo.testIdx}'">
                                       <div class="list__wrapping">
                                          <div class="best-top">
                                             <span class="test-box-tit">${vo.childName}</span><b
                                                style="color: black;">님의</b><span class="test-box-tit">
                                                ${vo.testType} - HTP </span><b style="color: black;">검사 결과
                                                (${i.count})</b>
                                          </div>
                                          <div class="test__info-text02">
                                             <fmt:formatDate value="${vo.testedAt}"
                                                pattern="yyyy-MM-dd HH:mm" var="formattedDate" />
                                             <span style="font-weight: 400;">${formattedDate}</span>
                                          </div>

                                          <div class="test-box-bottom">
                                             <div class="test-time">
                                                <div></div>
                                                <div class="red-text">
                                                   <img src="${cpath}/resources/images/resultlogo.png"
                                                      alt="" class="result-logo" width=50px; height=50px;>
                                                </div>
                                             </div>
                                          </div>
                                       </div> <!-- 2023-01-27 add-->
                                    </a>
                                 </c:forEach>





                              </section>

                           </div>

                           <!-- 자녀정보수정 -->
                           <div class="tab-pane" id="child">

                              <div class="child-info-section">
                                 <div class="form-container">
                                    <div class="">
                                       <div class="">
                                          <div class="card-body box-profile">
                                             <div class="text-center">
                                                <img class="profile-user-img img-fluid img-circle"
                                                   src="${cpath}/resources/admin/dist/img/HJchild3.png"
                                                   alt="User profile picture">
                                             </div>
                                             <!-- 
                                          <h3 class="profile-username text-center">김아무개</h3>
                                          <p class="text-muted text-center">자녀번호 : child-1</p>
                                           -->
                                          </div>
                                       </div>
                                    </div>
                                    <h2 class="section-title">자녀 정보 추가</h2>
                                    <form class="child-info-form"
                                       action="${cpath}/member/insertChild" method="post">
                                       <div class="form-group row">
                                          <label for="inputName" class="col-sm-2 col-form-label">이름</label>
                                          <div class="col-sm-10">
                                             <input type="text" id="child_name" name="childName"
                                                class="form-control" maxlength="20"
                                                placeholder="이름을 입력하세요.">
                                          </div>
                                       </div>
                                       <div class="form-group row">
                                          <label for="inputName2" class="col-sm-2 col-form-label">성별</label>
                                          <div class="col-sm-10">
                                             <!-- <input type="text" id="child_gender" name="childGender" class="form-control" maxlength="20" placeholder="성별을 입력하세요."> -->
                                             <div class="radio-buttons-container">
                                                <div class="radio-button">
                                                   <input name="radio-group" id="radio2"
                                                      class="radio-button__input" type="radio" value="M">
                                                   <label for="radio2" class="radio-button__label">
                                                      <span class="radio-button__custom"></span>남 <input
                                                      type="hidden" id="child_gender" name="childGender"
                                                      class="form-control" value="M">
                                                   </label>
                                                </div>
                                                <div class="radio-button">
                                                   <input name="radio-group" id="radio1"
                                                      class="radio-button__input" type="radio" value="F">
                                                   <label for="radio1" class="radio-button__label">
                                                      <span class="radio-button__custom"></span>여 <input
                                                      type="hidden" id="child_gender" name="childGender"
                                                      class="form-control" value="F">
                                                   </label>
                                                </div>
                                             </div>

                                          </div>

                                       </div>

                                       <div class="form-group row">
                                          <label for="inputName2" class="col-sm-2 col-form-label">생년
                                             월일</label>
                                          <div class="col-sm-10">
                                             <input type="text" id="child_birthdate"
                                                name="childBirthdate" class="form-control"
                                                maxlength="20" placeholder="생년월일을 입력하세요. (ex)2018-12-25">
                                          </div>
                                       </div>

                                       <input type="hidden" id="username" name="username"
                                          class="form-control"
                                          value="<%=userDetails.getUsername()%>">

                                       <div class="form-group row">
                                          <div class="offset-sm-2 col-sm-10">
                                             <!-- <button type="submit" class="btn btn-danger">자녀정보수정</button> -->
                                             <button type="submit" class="btn btn-primary"
                                                id="submitButton">추가하기</button>
                                          </div>
                                       </div>



                                    </form>
                                 </div>
                              </div>

                           </div>
                           
                           <!-- 상담신청현황 -->
                     	<c:if test="${!empty consultList }">
                     	<div class="tab-pane" id="apl">
                           <c:forEach var="vo" items="${consultList}" varStatus="i">
                           
	                           <p>${vo.consultName} 님의 상담 신청이 완료되었습니다! 관리자의 승인을 기다려주세요!</p>
	                           <p>상담 신청 일자 : "${vo.consultDate}" </p> 
	                           <p>상담 내용 : "${vo.consultContent}" </p> 
							   <hr>
							   
                           
                           </c:forEach>
                          </div>
                          <div class="card-body p-0">
			                <!-- THE CALENDAR -->
			                <div id="calendar"></div>
			              </div>
                          
                        </c:if>
                        <c:if test="${ empty consultList }">
                        <div class="tab-pane" id="apl">
                        	<p>상담 신청 내역이 없습니다!</p>
                        </div>
                        </c:if>   
                           
                           
                        </div>


                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>


   <!-- jQuery -->
   <script src="${cpath}/resources/admin/plugins/jquery/jquery.min.js"></script>
   <!-- Bootstrap 4 -->
   <script
      src="${cpath}/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
   <!-- AdminLTE App -->
   <script src="${cpath}/resources/admin/dist/js/adminlte.min.js"></script>
   <!-- AdminLTE for demo purposes -->
   <script src="${cpath}/resources/admin/dist/js/demo.js"></script>

   <script>
      function showContent(tab) {
         const joinContent = document.getElementById("join");
         const childContent = document.getElementById("child");

         if (tab === "join") {
            joinContent.style.display = "block";
            childContent.style
            display = "none";
         } else if (tab === "child") {
            joinContent.style.display = "none";
            childContent.style.display = "block";
         }
      }

      /**/

      window.onload = function() {
         // '심리테스트결과' 탭 활성화
         document.querySelector('.nav-link[href="#testResult"]').classList
               .add('active');
         // '심리테스트결과' 탭의 내용 활성화
         document.getElementById('testResult').classList.add('active');
      };
   </script>


   <!-- 푸터 페이지 -->
   <jsp:include page="../footer.jsp" flush="false"></jsp:include>


</body>
</html>