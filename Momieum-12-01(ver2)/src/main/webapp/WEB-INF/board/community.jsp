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


<style>

@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, span, button span,
	div>strong, td, th, form-control float-left {
	font-family: 'GmarketSansMedium', cursive;
}


.card-title {
	text-align: center; /* 텍스트를 가운데 정렬합니다. */
	color:#000000;
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

body {
  font-size: 13px; /* 폰트 크기 줄이기 */
}

.container, .container-fluid {
  max-width: 80%; /* 컨테이너 최대 너비 조정 */
  margin-top: 30px;
}

.card {
  margin: 10px 0; /* 카드의 마진 축소 */
}

.table th, .table td {
  padding: 10px; /* 테이블 셀 패딩 줄이기 */
}

.btn {
  padding: 5px 10px; /* 버튼 패딩 줄이기 */
  font-size: 12px; /* 버튼 폰트 크기 줄이기 */
}

@media (max-width: 768px) {
  .container, .container-fluid {
    max-width: 100%; /* 모바일에서는 컨테이너를 확장 */
  }
}

.notice{
	color:#4b81d2;
}

.pagination-wrapper {
	text-align: center;
	margin-left: 315px;
	margin-bottom: 60px;
}

.pagination {
	display: inline-block;
	padding: 10px 15px;
	border-radius: 15px;
	background-color: #fff; /* Light grey background */
	width: 550px;
}

.page-numbers {
	display: inline-block;
	margin: 0 5px;
	padding: 5px 10px;
	color: #333; /* Dark text for visibility */
	font-size: 16px;
	line-height: normal;
	text-decoration: none; /* Removes underline from links */
}

.page-numbers:hover, .page-numbers.current {
    background-color: #4b81d2; /* Green background for hover/current */
    color: white;
    border-radius: 5px; /* Rounded corners for hover/current */
    transform: scale(1.1); /* 10% 크게 확대 */
    transition: transform 0.3s ease; /* 부드러운 확대/축소 효과 */
}

.page-numbers.prev, .page-numbers.next {
	font-weight: bold; /* Bold text for prev/next */
}

.btn-write{
	background-color: #787f89;
	color: #fff;
	padding: 10px;
	border-radius: 5px;
	
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

	<!-- Main content -->
<section class="content">
      <div class="container-fluid">
        <!-- 콘텐츠 내용 -->
        <div class="card">
          <div class="card-header">
            <h3 class="card-title"></h3>
            <div class="card-tools">
            
              <!-- 내용검색 폼 -->
              <div class="input-group input-group-md">
                <form name="form_search" action="${cpath}/admin/tbBoardAdminList" method="GET" class="form-horizontal">
                  <select name="search_type" class="form-control float-left" style="width: inherit;">
                    <option>전체</option>
                    <option>검사방법</option>
                    <option>회원아이디</option>
                  </select>  
                  <input type="text" name="table_search" class="form-control float-left" placeholder="Search" style="width: inherit;">
                  <div class="input-group-append float-left" style="width: inherit;">
                    <button type="submit" class="btn btn-default">
                      <i class="fas fa-search"></i>
                    </button>
                  </div>                                
                </form>
              </div>
              <!-- //내용검색 폼 -->
              
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body table-responsive p-0">
            <table class="table table-hover">
              <!-- 줄바꿈안할때 다음 클래스추가 text-nowrap  -->
              <thead>
                <tr>
                  <th class="text-center">번호</th>
                  <th class="text-center">제목</th>
                  <th class="text-center col-4">내용</th>
                  <th class="text-center">회원아이디</th>
                  <th class="text-center">등록일</th>
                </tr>
              </thead>
              <tbody>
 				  <c:forEach var="vo" items="${tbBoardList}" varStatus="i">
				    <tr style="cursor: pointer;" onclick="location.href='${cpath}/admin/tbBoardAdminView?testIdx=${vo.bdIdx}'">
				        <td>${i.count}</td>
				        <td><a class="notice" href="${cpath}/admin/tbBoardAdminView?testIdx=${vo.bdIdx}">${vo.bdTitle}</a></td>
				        <td><span class="tag tag-success">${fn:substring(vo.bdContent, 0, 20)}${fn:length(vo.bdContent) > 10 ? '...' : ''}</span></td>
				        <td><span class="tag tag-success">${vo.username}</span></td>
				        <td><fmt:formatDate value="${vo.createdAt}" pattern="yyyy-MM-dd" /></td>
				    </tr>
				</c:forEach>
              </tbody>
            </table>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- //콘텐츠 내용 -->
        <!-- 페이징 처리 -->
        <div class="col-12 text-right">
           <a href="${cpath}/communityWrite" class="btn-write">글쓰기</a>
          
          	<div class="pagination-wrapper">
							<div class="pagination">
								<a class="prev page-numbers" href="javascript:;">prev</a> <span
									aria-current="page" class="page-numbers current">1</span> <a
									class="page-numbers" href="javascript:;">2</a> <a
									class="page-numbers" href="javascript:;">3</a> <a
									class="page-numbers" href="javascript:;">4</a> <a
									class="page-numbers" href="javascript:;">5</a> <a
									class="page-numbers" href="javascript:;">6</a> <a
									class="page-numbers" href="javascript:;">7</a> <a
									class="page-numbers" href="javascript:;">8</a> <a
									class="page-numbers" href="javascript:;">9</a> <a
									class="page-numbers" href="javascript:;">10</a> <a
									class="next page-numbers" href="javascript:;">next</a>
							</div>
						</div>
        </div>
        
        <!-- //페이징 처리 -->
      </div><!-- /.container-fluid -->
      </section>

	<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->





	
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

	<!-- 페이지 하단의 기존 코드 유지 -->
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
