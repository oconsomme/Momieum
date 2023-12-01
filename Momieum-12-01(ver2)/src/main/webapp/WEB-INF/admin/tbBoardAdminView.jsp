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
            <h1 class="m-0">{심리검사결과} 상세보기</h1>
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
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">보기</h3>
          </div>
          <!-- /.card-header -->
          <!-- form start -->
          <!-- 첨부파일을 전송할때 enctype=필수 없으면, 첨부파일이 전송X -->
          <form name=""  action="${cpath}/admin/modify" method="post" enctype="multipart/form-data">
          
          	<input type="hidden" id="testIdx" name="idx" value=""> <!-- 게시글 클릭하면 value에 idx값이 자동으로 채워짐 -->
          
	            <div class="card-body">

	              <div class="form-group">
	                <label for="exampleInputPassword1">검사방법</label>
	                <br>
	                ${tbTest.testType}
	              </div>
	              <div class="form-group">
	                <label for="exampleInputPassword1">회원아이디</label>
	                <br>
	                ${tbTest.username}
	              </div>
	              <div class="form-group">
	                <label for="exampleInputPassword1">검사일</label>
	                <br>
	                  ${tbTest.testedAt}
	              </div>
	              
	              <div class="form-group">
	                <label for="exampleInputEmail1">검사결과</label>
	                <br>
	                ${tbTest.testResult}
	              </div>
	              
	              <div class="form-group">
	                <label for="exampleInputFile">첨부파일</label>
	                <div class="input-group">
	                  <div class="custom-file">
	                    	<%-- <a href="${cpath}/admin/downloadFile?bdIdx=${tbBoardAdmin.bdIdx}">${tbBoardAdmin.bdFile}</a> --%>
	                  </div>
	                </div>
	              </div>
	            </div>
	            <!-- /.card-body -->
	
	            <div class="card-footer text-right">
			        <a href="${cpath}/admin/tbBoardAdminViewWrite?testIdx=${tbTest.testIdx}" class="btn btn-primary">수정</a>
			        <a href="${cpath}/admin/remove?testIdx=${tbTest.testIdx}" class="btn btn-danger">삭제</a>
			        <a href="${cpath}/admin/tbBoardAdminList" class="btn btn-default">목록</a>
	            </div>
	            
          </form>
          
        </div>
        <!-- 댓글 입력폼 
        <div class="col-md-12">
          <div class="card-default">
            <div class="card-header">
              <h3 class="card-title">댓글 쓰기</h3>
            </div>
            <div class="card-body p-0">
              <div class="bs-stepper linear">
              <div class="bs-stepper-header" role="tablist">
                <div class="line"></div>
              </div>
              <div class="bs-stepper-content">
                
                <div id="logins-part" class="content active dstepper-block" role="tabpanel" aria-labelledby="logins-part-trigger">
                <div class="form-group">
                  <label for="replyer">작성자</label>
                  <input type="text" class="form-control" id="replyer" value="${tbTest.username}">
                </div>
                <div class="form-group">
                  <label for="reply_text">댓글내용</label>
                  <input type="text" class="form-control" id="reply_text" placeholder="댓글내용을 입력하세요">
                </div>
                </div>
                <div id="information-part" class="content" role="tabpanel" aria-labelledby="information-part-trigger">
                <button type="button" class="btn btn-warning" id="btn_reply_write">댓글등록</button>
                </div>
              </div>
              </div>
            </div>
             /.card-body 
            <div class="card-footer">
              아래 댓글리스트 버튼을 클릭하시면 댓글 목록이 출력이 됩니다.
            </div>
            </div>
        </div> -->
        <!-- //댓글 입력폼 -->
        <!-- 댓글 타임라인 -->
        <div class="col-md-12">
          <!-- The time line -->
          <div class="timeline">
          <!-- timeline time label
          <div class="time-label">
            <span class="bg-red" data-toggle="collapse" href="#collapseReply" role="button" id="btn_reply_list">
              댓글리스트
              [<span>1</span>]
            </span>
          </div>
           -->
          <!-- 콜랩스 시작 -->
          <div class="collapse timeline" id="collapseReply">
          <!-- time-label 이후 after요소로 템플릿결과가 여기에 출력됨. -->
          <!-- /.timeline-label -->
          <!-- timeline item -->
          <!-- 댓글리스트를 자바스크립트의 빵틀(템플릿)을 만듭니다.  -->
          <!-- 고전append함수를 사용하지 않고, handlebars라는 확장프로그램(아래) 임포트 -->
          <!-- 장점은 기존 퍼블리셔가 만든태그를 그대로 사용가능 -->
          <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
          <script id="template" type="text/x-handlebars-template">
          {{#each .}}
          <div class="div_template" data-rno="{{rno}}">
            <i class="fas fa-envelope bg-blue"></i>
            <div class="timeline-item">
            <h3 class="timeline-header">{{replyer}}</h3>
            <div class="timeline-body">{{reply_text}}</div>
            <div class="timeline-footer">
              <a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-reply">수정</a>
            </div>
            </div>
          </div>
          {{/each}}
          </script>
          
            <!-- 페이징 처리 -->
            <div class="row">
              <ul class="pagination" style="margin: 0 auto;">
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
            </div>
            <!-- //콜랩스 끝 -->
          </div>
          <!-- END timeline item -->
        </div>
        <!-- //댓글 타임라인 -->

        <!-- //콘텐츠 내용 -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
    
    
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
