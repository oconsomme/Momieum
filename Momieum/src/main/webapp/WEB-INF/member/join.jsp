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
  <title>AdminLTE 3 | Log in (v2)</title>

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
	  <!-- icheck bootstrap -->
	  <link rel="stylesheet" href="${cpath}/resources/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	  <!-- Theme style -->
	  <link rel="stylesheet" href="${cpath}/resources/admin/dist/css/adminlte.min.css">
	  
</head>

<body class="">

<!-- 서브페이지 헤더 -->
<jsp:include page="../headersub.jsp" flush="false"></jsp:include>

  <div id="about" class="about section">
    <div class="container">
	    
		<div class="login-box">
		
		  <!-- logo -->
		  <div class="card card-outline card-primary">
		    <div class="card-header text-center">
		      <a href="../../index2.html" class="h1"><b>회원</b>가입</a>
		    </div>
		    <div class="card-body">
		      <p class="login-box-msg">Sign in to start your session</p>
		
			<!-- 회원가입 -->
		     <!-- 스프링시큐리트의 내부 인증필터에 있는 로그인 기능 -->
		     <form action="${cpath}/member/join" method="post">

		        <div class="input-group mb-3">
		         <h5 class="form-control" style="text-align: center;">권한 : 
			       <input type="radio" class="" name="role" value="ADMIN"> 관리자
			       <input type="radio" class="" name="role" value="MANAGER"> 매니저
			       <input type="radio" class="" name="role" value="MEMBER"> 회원		  
		         </h5>       
		        </div>	
		        
		        <div class="input-group mb-3">
		         <h5 class="form-control" style="text-align: center;"> 구분 : 
			       <input type="radio" class="" name="" value=""> 본인
			       <input type="radio" class="" name="" value=""> 부모
		         </h5>       
		        </div>	
		        		     
		        <div class="input-group mb-3">
		          <input type="text"  id="username"  class="form-control" name="username" placeholder="아이디">
		          <div class="input-group-append">
		            <div class="input-group-text">
		              <span class="fas fa-envelope"></span>
		            </div>
		          </div>
		        </div>
		        
		        <div class="input-group mb-3">
		          <input type="password"  id="password"  class="form-control" name="password" placeholder="비밀번호">
		          <div class="input-group-append">
		            <div class="input-group-text">
		              <span class="fas fa-lock"></span>
		            </div>
		          </div>
		        </div>

		        <div class="input-group mb-3">
		          <input type="password"  id="name"  class="form-control" name="name" placeholder="이름">
		          <div class="input-group-append">
		            <div class="input-group-text">
		              <span class="fas fa-lock"></span>
		            </div>
		          </div>
		        </div>		        

		        <div class="input-group mb-3">
		          <input type="test"  id=""  class="form-control" name="" placeholder="닉네임">
		          <div class="input-group-append">
		            <div class="input-group-text">
		              <span class="fas fa-lock"></span>
		            </div>
		          </div>
		        </div>		       
		        

		        
		        <div class="input-group mb-3">
		          <input type="text"  id=""  class="form-control" name="" placeholder="성별">
		          <div class="input-group-append">
		            <div class="input-group-text">
		              <span class="fas fa-lock"></span>
		            </div>
		          </div>
		        </div>		 

		        <div class="input-group mb-3">
		          <input type="text"  id=""  class="form-control" name="" placeholder="지역">
		          <div class="input-group-append">
		            <div class="input-group-text">
		              <span class="fas fa-lock"></span>
		            </div>
		          </div>
		        </div>	
		        
		        <div class="input-group mb-3">
		          <input type="text"  id=""  class="form-control" name="" placeholder="전화번호">
		          <div class="input-group-append">
		            <div class="input-group-text">
		              <span class="fas fa-lock"></span>
		            </div>
		          </div>
		        </div>	
		        

		        <div class="input-group mb-3">
		          <input type="text"  id=""  class="form-control" name="" placeholder="이메일">
		          <div class="input-group-append">
		            <div class="input-group-text">
		              <span class="fas fa-lock"></span>
		            </div>
		          </div>
		        </div>	
		        		        		        		        
		        <div class="input-group mb-3">
		          <input type="text"  id=""  class="form-control" name="" placeholder="방문경로">
		          <div class="input-group-append">
		            <div class="input-group-text">
		              <span class="fas fa-lock"></span>
		            </div>
		          </div>
		        </div>	
		        
		        
		        <div class="input-group mb-3">
		          <input type="text"  id=""  class="form-control" name="" placeholder="신청자녀수(자녀이름, 자녀성별, 자녀나이)">
		          <div class="input-group-append">
		            <div class="input-group-text">
		              <span class="fas fa-lock"></span>
		            </div>
		          </div>
		        </div>	

		        <div class="input-group mb-3">
		          <input type="text"  id=""  class="form-control" name="" placeholder="프로필사진">
		          <div class="input-group-append">
		            <div class="input-group-text">
		              <span class="fas fa-lock"></span>
		            </div>
		          </div>
		        </div>			        		        		        		        		        		        




	      
	      		        
		        <div class="row">
		          <div class="col-8">
		            <div class="icheck-primary">
		              <input type="checkbox" id="remember">
		              <label for="remember">
		                Remember Me
		              </label>
		            </div>
		          </div>
		          <!-- /.col -->
		          
		          <input type="hidden" name="ebled" value="true">
		          <!-- 버튼 -->
		          <div class="col-4">
		          	<input type="submit" class="btn btn-primary btn-block" value="join">
		          </div>
		          <!-- /.col -->
		          
		        </div>
		        
		     </form>
		      
			  <!--  sns 회원가입 -->
		      <div class="social-auth-links text-center mt-2 mb-3">
		        <a href="#" class="btn btn-block btn-primary">
		          <i class="fab fa-facebook mr-2"></i> 카카오 회원가입
		        </a>
		        <a href="#" class="btn btn-block btn-primary">
		          <i class="fab fa-facebook mr-2"></i> 네이버 회원가입
		        </a>		        
		        <a href="#" class="btn btn-block btn-danger">
		          <i class="fab fa-google-plus mr-2"></i> Google+ 회원가입
		        </a>
		      </div>
		      <!-- /.social-auth-links -->
		      
		      <p class="mb-0">
			    <div id="formFooter">
			      <a class="underlineHover" href="${cpath}/">메인으로 돌아가기</a>
			    </div>
		      </p>
		      		

		      
		    </div>
		    <!-- /.card-body -->
		  </div>
		  <!-- /.card -->
		</div>
		<!-- /.login-box -->

    </div>
    </div>

<!-- 푸터 페이지 -->
<jsp:include page="../footer.jsp" flush="false"></jsp:include>  


	  	
<!-- Scripts -->
<script src="${cpath}/resources/jquery/jquery.min.js"></script>
<script src="${cpath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${cpath}/resources/js/owl-carousel.js"></script>
<script src="${cpath}/resources/js/animation.js"></script>
<script src="${cpath}/resources/js/imagesloaded.js"></script>
<script src="${cpath}/resources/js/custom.js"></script>

<!-- jQuery -->
<script src="${cpath}/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${cpath}/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${cpath}/resources/admin/dist/js/adminlte.min.js"></script>



</body>
</html>
