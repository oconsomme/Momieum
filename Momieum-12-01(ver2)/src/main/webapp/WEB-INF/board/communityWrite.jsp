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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css">

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
  
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>


<style>
.card-title {
	text-align: center; /* 텍스트를 가운데 정렬합니다. */
}

.card-name {
	text-align: center; /* 텍스트를 가운데 정렬합니다. */
}

.bg {
	margin: 1em 0;
	display: block;
	background: rgb(255, 255, 255);
	border: 1px solid rgb(0, 0, 0);
}

#overlay {
	position: absolute;
	top: 0;
	left: 0;
	display: none;
}

#overlay img {
	width: 100%;
	height: 100%;
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

#canvas-container {
	display: flex; /* Flexbox 레이아웃 사용 */
	justify-content: center; /* 가로축 중앙 정렬 */
	align-items: center; /* 세로축 중앙 정렬 */
	height: 100%; /* 컨테이너 높이 설정 */
	margin-left: 450px;
	margin-top: 20px;
}

.canvas {
	margin: auto; /* 자동 여백으로 중앙 정렬 */
}

.btn-group a {
	background-color: #4b81d2; /* 배경색 설정 */
	color: white; /* 텍스트 색 설정 */
}

.text-center {
	margin-top: 25px;
}

@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, span, button span,
	div>strong, label  {
	font-family: 'GmarketSansMedium', cursive;
}

body {
  font-size: 13px; /* 폰트 크기 줄이기 */
}

.container, .container-fluid {
  max-width: 80%; /* 컨테이너 최대 너비 조정 */
  margin-top: 30px;
}

.btn btn3{
	background-color: #d3d8df;
	
}

</style>
</head>
<body>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		integrity="sha256-oP6HI/tf5xNspeXnOqO8p8MqTmVl6o7BmHr9v+L6tI="
		crossorigin="anonymous"></script>
	<script
		src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-44fe83e49b63affec96918c9af88c0d80b209a862cf87ac46bc933074b8c557d.js"></script>

	

	<!-- 서브페이지 헤더 -->
	<jsp:include page="../headersub.jsp" flush="false"></jsp:include>
	
	<!--  -->
	
	<section class="content">
      <div class="container-fluid">
        <!-- 콘텐츠 내용 -->
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">등록</h3>
          </div>
          <!-- /.card-header -->
          
          <!-- form start -->
          <!-- 첨부파일을 전송할때 enctype=필수 없으면, 첨부파일이 전송X -->
          <form name="regForm" action="${cpath}/admin/register" method="post" enctype="multipart/form-data">
          		
          		<c:forEach var="vo" items="tb" varStatus="i">
          		
	            <input type="hidden" id="bdIdx" name="bdIdx" value=""> <!-- 게시글 클릭하면 value에 값이 자동으로 채워짐 -->
	            </c:forEach>
	            <div class="card-body">
	               <div class="form-group">
	                <label for="content">제목</label>
	                
	                <input type="text" id=" bdContent" name=" bdContent"  class="form-control" placeholder="제목을 입력해 주세요"  required>
	              </div>
	              
	<!--               <div class="form-group">
	                <label for="title">글제목</label>
	                <input type="text" id="bdTitle" name="bdTitle"  class="form-control" placeholder="제목을 입력해 주세요" required>
	              </div> -->
	              
				  <div class="form-group">
	                <label for="content">내용</label>
	                
	                <input type="text" id=" bdContent" name=" bdContent"  class="form-control" placeholder="내용을 입력해 주세요"  required>
	              </div>
	                            
	              <div class="form-group">
	                <label for="writer">회원아이디</label>
	                <input type="text" id="memId" name="memId" class="form-control" placeholder="작성자를 입력해 주세요" required>
	              </div>
	              
	              <div class="form-group">
	                <label for="exampleInputFile">첨부파일</label>
	                <div class="input-group">
	                  <div class="custom-file">
	                    <input name="File" type="file" class="custom-file-input" id="bdFile" value="">
	                    <label class="custom-file-label" for="file0">파일선택</label>
	                  </div>
	                </div>
	                <div class="mb-2"></div>
	                <div class="input-group">
	                  <div class="custom-file">
	                    <input name="bdFile" type="file" class="custom-file-input" id="bdFile" value="">
	                    <label class="custom-file-label" for="file1">파일선택</label>
	                  </div>
	                </div>
	              </div> 
	              
	            </div>
	            <!-- /.card-body -->
	            
				<!-- 버튼 -->
				<div id="regDiv">
					<button type="submit" data-oper="register" class="btn3">등록</button>
					<button type="reset" data-oper="reset" class="btn3">취소</button>
					 <a href="${cpath}/admin/tbBoardAdminList" class="btn3">목록</a>
				</div>

          </form>
          
        </div>
        <!-- //콘텐츠 내용 -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->





	
	<jsp:include page="../footer.jsp" flush="false"></jsp:include>

<!-- jQuery -->
<script src="${cpath}/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="${cpath}/resources/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>


<script>


</script>
<!-- jQuery -->
<script src="${cpath}/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="${cpath}/resources/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>


<!-- Bootstrap 4 -->
<script src="${cpath}/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="${cpath}/resources/admin/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="${cpath}/resources/admin/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="${cpath}/resources/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="${cpath}/resources/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="${cpath}/resources/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="${cpath}/resources/admin/plugins/moment/moment.min.js"></script>
<script src="${cpath}/resources/admin/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="${cpath}/resources/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="${cpath}/resources/admin/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="${cpath}/resources/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="${cpath}/resources/admin/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${cpath}/resources/admin/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${cpath}/resources/admin/dist/js/${cpath}/resources/admin/pages/dashboard.js"></script>
</body>
</html>
