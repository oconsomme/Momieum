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
  
</head>

<body class="hold-transition sidebar-mini">


<!-- 서브페이지 헤더 -->
<jsp:include page="../headersub.jsp" flush="false"></jsp:include>




<!-- Content Wrapper. Contains page content -->
  <div class="">

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      
      
      
   <div class="row">
   
   		 <!-- 회원정보 프로필 -->
         <div class="col-md-3">
	            <div class="card card-primary card-outline">
	              <div class="card-body box-profile">
	                <div class="text-center">
	                <input type="text"  id=""  class="form-control" name="" placeholder="프로필사진">
	                  <img class="profile-user-img img-fluid img-circle"
	                       src="${cpath}/resources/admin/dist/img/user4-128x128.jpg"
	                       alt="User profile picture">
	                </div>
	                <h3 class="profile-username text-center">Nina Mcintire</h3>
	                <p class="text-muted text-center">Software Engineer</p>
	                <ul class="list-group list-group-unbordered mb-3">
	                  <li class="list-group-item">
	                    <b>Followers</b> <a class="float-right">1,322</a>
	                  </li>
	                </ul>
	              </div>
	              <!-- /.card-body -->
	            </div>
	            <!-- /.card -->
	
	            <!-- sns로그인 연동 -->
	            <div class="card card-primary">
	              <div class="card-header">
	                <h3 class="card-title">sns로그인 연동</h3>
	              </div>
	              <!-- /.card-header -->
	              <div class="card-body">
				      <div class="social-auth-links text-center mt-2 mb-3">
				        <a href="#" class="btn btn-block btn-primary">
				          <i class="fab fa-facebook mr-2"></i> 카카오 연동
				        </a>
				        <a href="#" class="btn btn-block btn-primary">
				          <i class="fab fa-facebook mr-2"></i> 네이버 연동
				        </a>		        
				        <a href="#" class="btn btn-block btn-danger">
				          <i class="fab fa-google-plus mr-2"></i> Google+ 연동
				        </a>
				      </div>
	              </div>
	              <!-- /.card-body -->
	            </div>
	            <!-- /.card -->
          </div>       
          <!-- /.col -->
      
          
      <!-- 자녀정보 프로필-->
      <div class="col-md-3">
          <br>
		  <br>
		  <a href="#" class="btn btn-primary btn-block"><b>자녀추가</b></a>
		  <br><br>
		  
            <!-- 자녀정보 프로필 -->
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
              
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle"
                       src="${cpath}/resources/admin/dist/img/user4-128x128.jpg"
                       alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">자녀정보</h3>

                <p class="text-muted text-center">Software Engineer</p>

                <ul class="list-group list-group-unbordered mb-3">
                  <li class="list-group-item">
                    <b>자녀이름</b> <a class="float-right">김춘식</a>
                  </li>
                  <li class="list-group-item">
                    <b>자녀성별</b> <a class="float-right">남</a>
                  </li>
                  <li class="list-group-item">
                    <b>자녀나이</b> <a class="float-right">3살</a>
                  </li>
                </ul>
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
		                <li class="nav-item">
		                    <a class="nav-link" href="#timeline" data-toggle="tab" onclick="showContent('timeline')">회원정보수정</a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="#settings" data-toggle="tab" onclick="showContent('settings')">자녀정보수정</a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link active" href="#activity" data-toggle="tab">심리테스트결과</a>
		                </li>
		            </ul>
		        </div><!-- /.card-header -->
              
              
              
              <!-- 심리테스트결과 -->
              <div class="card-body">
                <div class="tab-content">
                  <div class="active tab-pane" id="activity">
                  
	                  
	                    <!-- Post -->
	                    <div class="post">
	                      <div class="user-block">
	                        <img class="img-circle img-bordered-sm" src="${cpath}/resources/admin/dist/img/user1-128x128.jpg" alt="user image">
	                        <span class="username">
	                          <a href="#">Jonathan Burke Jr.</a>
	                          <a href="#" class="float-right btn-tool"><i class="fas fa-times"></i></a>
	                        </span>
	                        <span class="description">Shared publicly - 7:30 PM today</span>
	                      </div>
	                      <!-- /.user-block -->
	                      <p>
	                        Lorem ipsum represents a long-held tradition for designers,
	                        typographers and the like. Some people hate it and argue for
	                        its demise, but others ignore the hate as they create awesome
	                        tools to help create filler text for everyone from bacon lovers
	                        to Charlie Sheen fans.
	                      </p>
	
	                      <p>
	                        <a href="#" class="link-black text-sm mr-2"><i class="fas fa-share mr-1"></i> Share</a>
	                        <a href="#" class="link-black text-sm"><i class="far fa-thumbs-up mr-1"></i> Like</a>
	                        <span class="float-right">
	                          <a href="#" class="link-black text-sm">
	                            <i class="far fa-comments mr-1"></i> Comments (5)
	                          </a>
	                        </span>
	                      </p>
	
	                      <input class="form-control form-control-sm" type="text" placeholder="Type a comment">
	                    </div>
	                    <!-- /.post -->
	                    <!-- Post -->
	                    <div class="post clearfix">
	                      <div class="user-block">
	                        <img class="img-circle img-bordered-sm" src="${cpath}/resources/admin/dist/img/user7-128x128.jpg" alt="User Image">
	                        <span class="username">
	                          <a href="#">Sarah Ross</a>
	                          <a href="#" class="float-right btn-tool"><i class="fas fa-times"></i></a>
	                        </span>
	                        <span class="description">Sent you a message - 3 days ago</span>
	                      </div>
	                      <!-- /.user-block -->
	                      <p>
	                        Lorem ipsum represents a long-held tradition for designers,
	                        typographers and the like. Some people hate it and argue for
	                        its demise, but others ignore the hate as they create awesome
	                        tools to help create filler text for everyone from bacon lovers
	                        to Charlie Sheen fans.
	                      </p>
	
	                      <form class="form-horizontal">
	                        <div class="input-group input-group-sm mb-0">
	                          <input class="form-control form-control-sm" placeholder="Response">
	                          <div class="input-group-append">
	                            <button type="submit" class="btn btn-danger">Send</button>
	                          </div>
	                        </div>
	                      </form>
	                    </div>
	                    
	                    
	                    <!-- /.post -->
	                  </div>
	                  
	                  
	                  
	                  
	                  
	                  
	                 <!-- 회원정보수정 -->
	                 <div class="tab-pane" id="timeline">
	                   <form action="${cpath}/member/mypage" class="form-horizontal" method="post">
	                   
	                     <div class="form-group row">
	                       <label for="inputName" class="col-sm-2 col-form-label">아이디</label>
	                       <div class="col-sm-10">
	                         <input type="text" class="form-control" id="username" name="username" placeholder="회원정보가 들어갑니다">
	                       </div>
	                     </div>
	                     
	                     <div class="form-group row">
	                       <label for="inputName" class="col-sm-2 col-form-label">비밀번호</label>
	                       <div class="col-sm-10">
	                         <input type="password" class="form-control" id="password" name="password" placeholder="회원정보가 들어갑니다">
	                       </div>
	                     </div>
	
	                     <div class="form-group row">
	                       <label for="inputName" class="col-sm-2 col-form-label">이름</label>
	                       <div class="col-sm-10">
	                         <input type="text" class="form-control" id="name" name="name" placeholder="회원정보가 들어갑니다">
	                       </div>
	                     </div>
	                     
	                     <div class="form-group row">
	                       <label for="inputName" class="col-sm-2 col-form-label">닉네임</label>
	                       <div class="col-sm-10">
	                         <input type="text" class="form-control" id="" name="" placeholder="회원정보가 들어갑니다">
	                       </div>
	                     </div>
	                     
	                     <div class="form-group row">
	                       <label for="inputName" class="col-sm-2 col-form-label">성별</label>
	                       <div class="col-sm-10">
	                         <input type="text" class="form-control" id="" name="" placeholder="회원정보가 들어갑니다">
	                       </div>
	                     </div>                                                                  
	
	                     <div class="form-group row">
	                       <label for="inputName" class="col-sm-2 col-form-label">지역</label>
	                       <div class="col-sm-10">
	                         <input type="text" class="form-control" id="" name="" placeholder="회원정보가 들어갑니다">
	                       </div>
	                     </div>
	
	                     <div class="form-group row">
	                       <label for="inputName" class="col-sm-2 col-form-label">전화번호</label>
	                       <div class="col-sm-10">
	                         <input type="text" class="form-control" id="" name="" placeholder="회원정보가 들어갑니다">
	                       </div>
	                     </div>
	
	                     <div class="form-group row">
	                       <label for="inputName" class="col-sm-2 col-form-label">이메일</label>
	                       <div class="col-sm-10">
	                         <input type="text" class="form-control" id="" name="" placeholder="회원정보가 들어갑니다">
	                       </div>
	                     </div>                      
	                     
	                     <div class="form-group row">
	                       <label for="inputName" class="col-sm-2 col-form-label">방문경로</label>
	                       <div class="col-sm-10">
	                         <input type="text" class="form-control" id="" name="" placeholder="회원정보가 들어갑니다">
	                       </div>
	                     </div>                      
	                     
	                     <div class="form-group row">
	                       <div class="offset-sm-2 col-sm-10">
	                         <button type="submit" class="btn btn-danger">회원정보수정</button>
	                       </div>
	                     </div>
	                   </form>
	                 </div>
	                  
	                  
	                  
	                  
	                  
					<!-- 자녀정보수정 -->
	                  <div class="tab-pane" id="settings">
	                    <form class="form-horizontal">
	                      <div class="form-group row">
	                        <label for="inputName" class="col-sm-2 col-form-label">Name</label>
	                        <div class="col-sm-10">
	                          <input type="email" class="form-control" id="inputName" placeholder="Name">
	                        </div>
	                      </div>
	                      <div class="form-group row">
	                        <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
	                        <div class="col-sm-10">
	                          <input type="email" class="form-control" id="inputEmail" placeholder="Email">
	                        </div>
	                      </div>
	                      <div class="form-group row">
	                        <label for="inputName2" class="col-sm-2 col-form-label">Name</label>
	                        <div class="col-sm-10">
	                          <input type="text" class="form-control" id="inputName2" placeholder="Name">
	                        </div>
	                      </div>
	                      <div class="form-group row">
	                        <label for="inputExperience" class="col-sm-2 col-form-label">Experience</label>
	                        <div class="col-sm-10">
	                          <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
	                        </div>
	                      </div>
	                      <div class="form-group row">
	                        <label for="inputSkills" class="col-sm-2 col-form-label">Skills</label>
	                        <div class="col-sm-10">
	                          <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
	                        </div>
	                      </div>
	                      <div class="form-group row">
	                        <div class="offset-sm-2 col-sm-10">
	                          <div class="checkbox">
	                            <label>
	                              <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
	                            </label>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="form-group row">
	                        <div class="offset-sm-2 col-sm-10">
	                          <button type="submit" class="btn btn-danger">Submit</button>
	                        </div>
	                      </div>
	                    </form>
	                  </div>
                  
                  
                  
                  <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  

<!-- jQuery -->
<script src="${cpath}/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${cpath}/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${cpath}/resources/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${cpath}/resources/admin/dist/js/demo.js"></script>

<script>
        function showContent(tab) {
            const timelineContent = document.getElementById("timeline");
            const settingsContent = document.getElementById("settings");

            if (tab === "timeline") {
                timelineContent.style.display = "block";
                settingsContent.style display = "none";
            } else if (tab === "settings") {
                timelineContent.style.display = "none";
                settingsContent.style.display = "block";
            }
        }
</script>


<!-- 푸터 페이지 -->
<jsp:include page="../footer.jsp" flush="false"></jsp:include>  


</body>
</html>
