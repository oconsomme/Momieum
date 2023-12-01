<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />  
    
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${cpath}/resources/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${cpath}/resources/admin/dist/css/adminlte.min.css">
  
  
</head>
<body class="hold-transition sidebar-mini">

<!-- 헤더 페이지 -->
<jsp:include page="./headerAdmin.jsp" flush="false"></jsp:include>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">심리검사결과 목록</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">메인</a></li>
              <li class="breadcrumb-item active">심리검사결과</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

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
 				  <c:forEach var="vo" items="${tbTestResultList}" varStatus="i">
				    <tr style="cursor: pointer;" onclick="location.href='${cpath}/admin/tbBoardAdminView?testIdx=${vo.testIdx}'">
				        <td>${i.count}</td>
				        <td><a href="${cpath}/admin/tbBoardAdminView?testIdx=${vo.testIdx}">${vo.testType}</a></td>
				        <td><span class="tag tag-success">${fn:substring(vo.testResult, 0, 20)}${fn:length(vo.testResult) > 10 ? '...' : ''}</span></td>
				        <td><span class="tag tag-success">${vo.username}</span></td>
				        <td><fmt:formatDate value="${vo.testedAt}" pattern="yyyy-MM-dd" /></td>
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
    
    
    
  </div>
  <!-- /.content-wrapper -->
  
 <!-- 푸터 페이지 -->
<jsp:include page="./footerAdmin.jsp" flush="false"></jsp:include>  


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
