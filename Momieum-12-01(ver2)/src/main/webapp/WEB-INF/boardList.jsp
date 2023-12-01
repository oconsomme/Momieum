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
   
</head>
<body>

<!-- 서브페이지 헤더 -->
<jsp:include page="../headersub.jsp" flush="false"></jsp:include>

<!-- Main content -->
    <section class="content">

<!-- 여기부터 Default box -->
   <div class="card">
    
    <div class="card-body"><!--시작 바디-->
       <div class="row"><!--시작 row: 한줄로 전체를 감싼다-->
       
          <div class="col-lg-2"><!--1구역--><!--비율 총합이 12되도록 나눠라-->        
          </div><!--끝1구역-->
          
          <div class="col-lg-4"><!--2구역-->
             <div class="card" style="min-height: 500px; max-height: 1000px;"><!--최소높이500 최대높이1000-->
                <div class="card-body"><!--card-body를 통해 내용을 넣는다-->
                   <h5 class="card-title">MOMIEUM COMMUNITY :-)</h5>
                   <br>
                   <table class="table table-bordered table-hover">             
                      <thead><!--thead 상단머리부분을 감싸는 태그-->
                         <th>번호</th>
                         <th>제목</th>
                         <th>작성일</th>
                         <th>조회수</th>
                      </thead>
                      
                      <tbody><!--tbody 자바스크립트로 내용을 제어할 수 있다-->
                         <c:forEach var="vo" items="${list}" varStatus="i"><!--vo변수를 사용하여 각 요소에 접근, 게시글목록은 list에, 1부터꺼내기위해 varStatus=i-->                    
                            <tr><!--tbody는 tr태그를 넣어줘야한다-->
                               <td>${i.count}</td>
                               <td><a href="${vo.idx}">${vo.title}</a></td>
                               <td><fmt:formatDate value="${vo.createdAt}" pattern="yyyy-MM-dd" /> </td><!--Data형태에 fmt:formatDate을 사용할 수 있다-->
                               <td>${vo.views}</td>
                            </tr>
                         </c:forEach>
                      </tbody>
                      
                   </table>
                </div>
             </div>
          </div><!--끝2구역 -->
          
          <div class="col-lg-4"><!--3구역--><!--글쓰기 상세보기-->
             <div class="card" style="min-height: 500px; max-height: 1000px;">
                <div class="card-body">
                   <form id="regForm" action="${cpath}/register" method="post">
                   
                      <div class="form-group">
                         <label for="title">제목</label> <!--label요소의 for속성은 해당 레이블이 어떤 입력 요소와 연결되어 있는지를 나타냅니다-->
                         <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title">
                      </div>
                      <div class="form-group">
                         <label for="content">내용</label>
                         <textarea id="content" name="content" class="form-control" placeholder="Enter Content" rows="7" cols=""></textarea> <!--높이rows 가로cols-->                 
                      </div>
                      <div class="form-group">
                         <label for="memberId">작성자</label>
                         <input type="text" class="form-control" id="memberId" name="memberId" placeholder="Enter Writer">
                      </div>
                      <button type="button" data-oper="register" class="btn btn-sm btn-secondary">등록</button>
                      <button type="button" data-oper="reset" class="btn btn-sm btn-secondary">작성취소</button>
                   
                   </form>
                </div>
             </div>
          </div><!--끝3구역-->
          
          <div class="col-lg-2"><!--4구역-->      
          </div><!--끝4구역-->
          
       </div><!--row끝-->
    </div><!--끝바디-->

    <!--푸터부분--> 
    <div class="card-footer">스프링 - 이종권</div>
    
  </div>

  
  <script type="text/javascript"><!--시작 자바스크립트-->
     $(document).ready(function(){           //문서준비가 다 되면 함수를 작동 시키겠다 
        
        var regForm = $("#regForm");         //form 태그에 대한 정보는 id="regForm"의 요소를 가져온다
        
        $("button").on("click", function(){  //이벤트로 모든테그의 버튼의 클릭을 감지하고 함수를 적용시키겠다
           
           var oper = $(this).data("oper");  //var oper은 = 클릭한 요소에 데이타값을 "oper"을 가져오겠다
           
           if(oper == "register"){           // oper이 register이면 regForm.submit() 작업한다
              regForm.submit();      
           }else if(oper == "reset"){        // oper이 reset이면 regForm[0].reset() 작업한다
              regForm[0].reset();            
           }
        });
        
        
        $("a").on("click",function(e){  //a태그를 클릭을 감지하겠다, 클릭할때 함수를 실행하는데 매개변수e를 넣어주겠다 
           
           e.preventDefault();  // 클릭시 페이지이동 안되고 비동기로 요청하는 방법
           var idx = $(this).attr("href"); // 클릭한 해당요소의 href의 속성값을 var idx에 담는다 
           
           $.ajax({
              url : "${cpath}/get",  //게시글을 {cpath}/get에 요청을 하겠다   
              type : "get",  //요청방식 -> BoardController GetMapping("/get")
              data : {"idx" : idx},  //게시글 고유번호 idx
              dataType : "json",  //json방식으로 게시글 받아온다 
              success : printBoard, //성공했을떄 printBoard함수 실행
              error : function() { alert("error"); }  //실패했을떄
              
           });//end$.ajax
           
        });//end$("a")
        
     });//end$(document)
     
     //성공했을떄 printBoard함수실행
     function printBoard(vo){  //vo에는 하나의 게시글 정보를 가지고 있다
        
        var regForm = $("#regForm");
        regForm.find("#title").val(vo.title);
        regForm.find("#content").val(vo.content);
        regForm.find("#memberId").val(vo.memberId);
        
        regForm.find("input").attr("readonly", true);
        regForm.find("textarea").attr("readonly", true);
        
     }
     
  </script><!--끝 자바스크립트-->
  
  
  


</body>


</html>