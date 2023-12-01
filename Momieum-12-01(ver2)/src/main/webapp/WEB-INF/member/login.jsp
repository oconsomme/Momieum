<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Log in (v2)</title>

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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${cpath}/resources/admin/plugins/fontawesome-free/css/all.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="${cpath}/resources/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${cpath}/resources/admin/dist/css/adminlte.min.css">

<style>
@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, b, div>input
	{
	font-family: 'GmarketSansMedium', cursive;
}

/* 로그인 카드 스타일 */

.login-card {
	background-color: #ffffff;
	padding: 15px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin-top: 50px; /* 로그인 카드 위치 조정 */
	text-align: center;

}

/* 입력 필드 스타일 */
.input-group {
	margin-bottom: 15px;
}

/* 버튼 스타일 */
.main-button {
	background-color: #cccdcf; /* 버튼 색상 */
	border: none;
	color: white;
	padding: 10px 20px;
	border-radius: 5px;
	font-weight: bold;
	width: 100%;
	cursor: pointer;
}

.main-button:hover {
	background-color: #acacad;
}

/* 링크 스타일 */
.underlineHover {
	color: #4b81d2;
	text-decoration: none;
}

.underlineHover:hover {
	text-decoration: underline;
}

/* SNS 로그인 버튼 스타일 */
.btn-warning {
	background-color: #FEE500;
	color: #000000;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	font-weight: bold;
}

/* 카드 내부 간격 */
.card-body {
	margin-bottom: 20px;
}

.logo2 img {
	max-width: 100%; /* 이미지가 자신의 컨테이너를 넘지 않도록 설정 */
	height: auto; /* 이미지의 높이를 자동으로 조정하여 비율을 유지 */
	margin-left: -30px;
}

.kakaoIco:hover{
	color : #a99f1e;s
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
    color: #d8cc24; /* 텍스트 색상 */
    font-weight: bold;
    font-size : 22px;
}

.kakaoIco img {
    margin-right: 10px; /* 이미지와 텍스트 사이 간격 */
    width:35px;
}

/* '비밀번호 찾기' 링크 스타일 */
.forgot-password-link {
    display: flex;
    justify-content: flex-end;
    margin-top: 5px;
    font-size : 13px;
    margin-bottom : 7px;
}
.text-center {
	font-size : 18px;
}
body {
    opacity: 0; /* 페이지가 로드될 때 투명하게 설정 */
    transition: opacity 0.5s ease-in-out; /* 부드러운 효과를 위한 전환 설정 */
}
</style>
</head>

<body class="">

	<!-- 서브페이지 헤더 -->
	<jsp:include page="../header.jsp" flush="false"></jsp:include>



	<div id="contact" class="contact-us section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<div class="login-card">
						<a href="${cpath}/index2.do" class="logo2"> <img
							src="${cpath}/resources/images/MomieumLogo5.png" alt="로고 이미지"
							style="width: 240px; height: auto;">
						</a>
						<div class="card-body">
							<form action="" method="post">
								<div class="input-group">
									<input type="text" id="username" class="form-control"
										name="username" placeholder="아이디">
								</div>
								<div class="input-group">
									<input type="password" id="password" class="form-control"
										name="password" placeholder="비밀번호">
									
								</div>
								<div class="forgot-password-link">
										<a href="#" class="underlineHover">비밀번호를 잊으셨나요?</a>
									</div>
								<div class="input-group">
									<button type="submit" class="main-button">
										<h6>로그인</h6>
									</button>
								</div>
								<hr>
								<div class="input-group kakao-login">
									<a href="#n" class="kakaoIco"> <img
										src="${cpath}/resources/images/kakaologo3.png"
										alt="카카오톡으로 로그인" title=""> 카카오톡으로 로그인
									</a>
								</div>
								<div class="text-center">
									<a class="underlineHover" href="#">아직 계정이 없으신가요?</a> <br>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 푸터 페이지 -->
	<jsp:include page="../footer.jsp" flush="false"></jsp:include>



	<!-- jQuery -->
	<script src="${cpath}/resources/admin/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="${cpath}/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="${cpath}/resources/admin/dist/js/adminlte.min.js"></script>

<script>
window.addEventListener('load', function() {
    document.body.style.opacity = '1'; /* 페이지 로드 완료 시 투명도를 1로 변경 */
});
</script>

</body>
</html>
