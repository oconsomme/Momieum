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
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script> 
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

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
 
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${cpath}/resources/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${cpath}/resources/admin/dist/css/adminlte.min.css">
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

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2 , .h2, h1, .h1, p, a , th{
font-family : 'GmarketSansMedium', cursive;
}  
   .content {
    width: 65%; /* 또는 원하는 너비 */
    margin: 0 auto; /* 상하 여백은 0, 좌우 여백은 자동(가운데 정렬) */
    padding: 20px; /* 내부 여백 */
  } 
 </style>
   
</head>
<body>
<th>번호</th>
                         <th>제목</th>
                         <th>작성자</th>
                         <th>작성일</th>
                         <th>조회수</th>
<!-- 서브페이지 헤더 -->
<jsp:include page="../headersub.jsp" flush="false"></jsp:include>

<!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- 콘텐츠 내용 -->
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">목록</h3>
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
              <!-- 줄바꿈않할때 다음 클래스추가 text-nowrap  -->
              <thead>
                <tr>
                  <th class="text-center">번호</th>
                  <th class="text-center">검사방법<br>
                  드로잉/업로드/프리셋
                  </th>
                  <th class="text-center col-6">검사결과</th>
                  <th class="text-center">회원아이디</th>
                  <th class="text-center">검사일</th>
                </tr>
              </thead>
              <tbody>
 				  <c:forEach var="vo" items="${tbBoardAdminList}" varStatus="i">
				    <tr style="cursor: pointer;" onclick="location.href='${cpath}/admin/tbBoardAdminView?bdIdx=${vo.bdIdx}'">
				        <td>${i.count}</td>
				        <td><a href="${cpath}/admin/tbBoardAdminView?bdIdx=${vo.bdIdx}">${vo.bdTitle}</a></td>
				        <td><span class="tag tag-success">${vo.bdContent}</span></td>
				        <td><span class="tag tag-success">${vo.memId}</span></td>
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
           <a href="${cpath}/admin/tbBoardAdminWrite" class="btn btn-primary mb-3">글쓰기</a>
          
          <ul class="pagination justify-content-center">
              <li class="paginate_button page-item previous disabled" id="example2_previous">
                <a href="#" aria-controls="example2" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
              </li>
              <li class="paginate_button page-item active">
                <a href="#" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">1</a>
              </li>
              <li class="paginate_button page-item ">
                <a href="#" aria-controls="example2" data-dt-idx="2" tabindex="0" class="page-link">2</a>
              </li>
              <li class="paginate_button page-item ">
                <a href="#" aria-controls="example2" data-dt-idx="3" tabindex="0" class="page-link">3</a>
              </li>
              <li class="paginate_button page-item ">
                <a href="#" aria-controls="example2" data-dt-idx="4" tabindex="0" class="page-link">4</a>
              </li>
              <li class="paginate_button page-item ">
                <a href="#" aria-controls="example2" data-dt-idx="5" tabindex="0" class="page-link">5</a>
              </li>
              <li class="paginate_button page-item ">
                <a href="#" aria-controls="example2" data-dt-idx="6" tabindex="0" class="page-link">6</a>
              </li>
              <li class="paginate_button page-item next" id="example2_next">
                <a href="#" aria-controls="example2" data-dt-idx="7" tabindex="0" class="page-link">Next</a>
              </li>
          </ul>
        </div>
        <!-- //페이징 처리 -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

<script>
window.addEventListener('load', function() {
    document.body.style.opacity = '1'; /* 페이지 로드 완료 시 투명도를 1로 변경 */
});
</script>
</body>
</html>
