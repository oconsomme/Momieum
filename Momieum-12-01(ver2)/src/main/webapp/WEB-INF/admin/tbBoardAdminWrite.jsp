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
  
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  
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
            <h1 class="m-0">{심리검사결과} 글쓰기</h1>
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
	                <label for="board_type">검사방법</label>
	                <select name="board_type" class="form-control">
	                  <option>선택</option>
	                  <option>드로잉</option>
	                  <option>업로드</option>
	                  <option>프리셋</option>
	                </select>
	              </div>
	              
	<!--               <div class="form-group">
	                <label for="title">글제목</label>
	                <input type="text" id="bdTitle" name="bdTitle"  class="form-control" placeholder="제목을 입력해 주세요" required>
	              </div> -->
	              
				  <div class="form-group">
	                <label for="content">검사결과</label>
	                
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
					<button type="submit" data-oper="register" class="btn btn-primary">등록</button>
					<button type="reset" data-oper="reset" class="btn btn-warning">취소</button>
					 <a href="${cpath}/admin/tbBoardAdminList" class="btn btn-default">목록</a>
				</div>

          </form>
          
        </div>
        <!-- //콘텐츠 내용 -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->


    
    
  </div>
  <!-- /.content-wrapper -->  

  
 <!-- 푸터 페이지 -->
<jsp:include page="./footerAdmin.jsp" flush="false"></jsp:include>  

	  

<script type="text/javascript">

	$(document).ready(function(){
		var regForm = $("#regForm");

		  $("button").on("click", function(){
			var oper = $(this).data("oper");   //버튼클릭하면 data-oper의 값 가져오기
			
			if(oper == "register"){                //oper이 등록버튼 이라면 
				var bdIdx = regForm.find("#bdIdx").val();                 //idx값 가져오기
				location.href = "${cpath}/register?bdIdx="+bdIdx;  //register로 데이터 보냄
				alert(bdIdx);
				
				//regForm.submit();                    //form태그 작동
				
			}else if(oper == "reset"){
				regForm[0].reset();
			}else if(oper == "list"){             	// 동기방식 목록 이동 : 폼태그 밀어버리고 list버튼 다시 요청하던가 location 하던가
				location.href = "${cpath}/admin/tbBoardAdminList"; 	
			}else if(oper == "remove"){                               //동기방식 게시글 삭제
				var bdIdx = regForm.find("#bdIdx").val();                 //idx값 가져오기
				location.href = "${cpath}/remove?bdIdx="+bdIdx;  //remove로 데이터 보냄
				
				
			}else if(oper =="updateForm"){  
				//작성자는 안바꿔주는걸로 설정해놨음 
				//수정버튼 누르면 제목,내용만 readonly를 풀어줌
				regForm.find("#title").attr("readonly", false);
				regForm.find("#content").attr("readonly", false);
				
				//수정완료 버튼을 눌렀을때 ready안에서 실행되는게 아니라 goUpdate함수 작동해서 
				var upBtn = "<button onclick='goUpdate()' class='btn btn-sm btn-info' type='button'>수정완료</button>";
				$("#update").html(upBtn); // 안에 내용을 바꿔줌
			}
		});

	});

	function goUpdate(){
		var regForm = $("#regForm");
		// form태그 액션값의 action="${cpath}/register"는 수정이니까 modify요청으로 바꿔주기
		regForm.attr("action", "${cpath}/admin/modify" );
		regForm.submit();
	}
	

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
