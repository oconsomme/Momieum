<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="cpath" value="${pageContext.request.contextPath}" />  

<!-- 로그인한 계정정보 -->
<c:set var="user" value="${SPRING_SECURITY_CONTEXT.authentication.principal}" />
<!-- 권한정보 -->
<c:set var="auth" value="${SPRING_SECURITY_CONTEXT.authentication.authorities}" /> 

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
    
  
</head>
<body>


<!-- 서브페이지 헤더 -->
<jsp:include page="../headersub.jsp" flush="false"></jsp:include>


    		<div  class="col-lg-5">
    			<div class="card" style="min-height: 500px; max-height: 1000px;">
    				<div class="card-body">
    					<table class="table table-bordered table-hover">
    						<thead>
    							<th>번호</th>
    							<th>제목</th>
    							<th>작성일</th>
    							<th>조회수</th>
    						</thead>
    						<tbody>
    							<c:forEach var="vo" items="${list}" varStatus="i">
    								<tr>
    									<td>${i.count}</td>
    									<td><a href="${vo.idx}">${vo.title}</a></td>
    									<td><fmt:formatDate value="${vo.indate}" pattern="yyyy-MM-dd" /> </td>
    									<td>${vo.count}</td>
    								</tr>
    							</c:forEach>
    						</tbody>
    					</table>
    				</div>
    			</div>
    		</div>
    		<div  class="col-lg-5">
    			<div class="card" style="min-height: 500px; max-height: 1000px;">
    				
    				<div class="card-body" id="board">
    					<form id="regForm" action="${cpath}/board/register" method="post">
    					
    						<input type="hidden" id="idx" name="idx" value="">
    						
    						<div class="form-group">
    							<label for="title">제목</label>
    							<input type="text" class="form-control" id="title" name="title" placeholder="Enter Title">
    						</div>
    						<div class="form-group">
    							<label for="content">내용</label>
    							<textarea id="content" name="content" class="form-control" placeholder="Enter Content" rows="7" cols=""></textarea>
    						</div>
    						<div class="form-group">
    							<label for="writer">작성자</label>
    							<input readonly="readonly" value="<sec:authentication property='principal.member.name' />" type="text" class="form-control" id="writer" name="writer" placeholder="Enter Writer">
    						</div>
    						<div id="regDiv">
	    						<button type="button" data-oper="register" class="btn btn-sm btn-primary">등록</button>
	    						<button type="button" data-oper="reset" class="btn btn-sm btn-warning">취소</button>
    						</div>
    						
    						<div id="updateDiv" style="display: none;">
    							<button class="btn btn-sm btn-primary" data-oper="list" type="button">목록</button>
    							<span id="update">
    							<button class="btn btn-sm btn-warning" data-oper="updateForm" type="button">수정</button>
    							</span>
    							<button class="btn btn-sm btn-success" data-oper="remove" type="button">삭제</button>
    						</div>
    						
    					</form>
    				</div>
    				
    				<div class="card-body" id="book" style="display: none;">
    					<h4>Book Search</h4>
    					<div class="input-group mb-3">
    						<input type="text" id="bookname" class="form-control" placeholder="Search">
    						<div class="input-group-append">
    							<button type="button" id="search" class="btn btn-secondary">GO</button>
    						</div>
    					</div>
    					<div id="bookList">
    					
    					</div>
    				</div>
    				
    				<div class="card-body" id="mapView" style="display: none;">
    					<h4>Map Search</h4>
    					<div class="input-group mb-3">
    						<input type="text" id="address" class="form-control" placeholder="Search">
    						<div class="input-group-append">
    							<button type="button" id="mapBtn" class="btn btn-secondary">GO</button>
    						</div>
    					</div>
    					<div id="map" style="width: 100%; height: 500px;">
    					
    					</div>
    				</div>
    				
    			</div>
    		</div>
    	</div>
    </div> 
  
  </div>
  
  <script type="text/javascript">
  	$(document).ready(function(){
  		
  		$("#mapBtn").on("click", function(){
  			var address = $("#address").val();
  			if(address == ""){
  				alert("주소를 입력하세요");
  				return false;
  			}
  			$.ajax({
  				url : "https://dapi.kakao.com/v2/local/search/address.json",
  				headers : {"Authorization" : "KakaoAK a7886c989e578d945764d9d300f7a041"},
  				type : "get",
  				data : {"query" : address},
  				dataType : "json",
  				success : mapView,
  				error : function() { alert("error"); }
  			});
  		});  		
  		
  		var regForm = $("#regForm");
  		
  		$("button").on("click", function(){
  			
  			var oper = $(this).data("oper");
  			
  			if(oper == "register"){
  				regForm.submit();		
  			}else if(oper == "reset"){
  				regForm[0].reset();
  			}else if(oper == "list"){
  				console.log("dd");
  				location.href = "${cpath}/board/list";
  			}else if(oper == "remove"){
  				var idx = regForm.find("#idx").val();
  				location.href = "${cpath}/board/remove?idx="+idx;
  			}else if(oper == "updateForm"){
  				regForm.find("#title").attr("readonly", false);
  				regForm.find("#content").attr("readonly", false);
  				var upBtn = "<button onclick='goUpdate()' class='btn btn-sm btn-info' type='button'>수정완료</button>";
  				$("#update").html(upBtn);
  			}else if(oper == "book"){
  				$("#board").css("display", "none");
  				$("#book").css("display", "block");
  				$("#mapView").css("display", "none");
  				$("#book").val("");
  			}else if(oper == "map"){
  				$("#board").css("display", "none");
  				$("#book").css("display", "none");
  				$("#mapView").css("display", "block");
  			}
  			
  		});
  		
  		$("a").on("click",function(e){
  			
  			e.preventDefault();
  			var idx = $(this).attr("href");
  			
  			$.ajax({
  				url : "${cpath}/board/get",
  				type : "get",
  				data : {"idx" : idx},
  				dataType : "json",
  				success : printBoard,
  				error : function() { alert("error"); }
  			});
  		});
  		
  		$("#search").on("click",function(){
  			var bookname = $("#bookname").val();
  			if(bookname==""){
  				alert("책 제목을 입력하세요.");
  				return false;
  			}
  			
  			//"https://dapi.kakao.com/v3/search/book?target=title" \
  			//9af82c6bca549cc0697309bf17cab3c0
  			
  			$.ajax({
  				url : "https://dapi.kakao.com/v3/search/book?target=title",
  				headers : {"Authorization" : "KakaoAK a7886c989e578d945764d9d300f7a041" },
  				type : "get",
  				data : {"query" : bookname},
  				success : bookPrint,
  				error : function() { alert("error"); }
  			});
  			
  			
  		});
  		
  	});
  	
  	function printBoard(vo){
  		
  		var regForm = $("#regForm");
  		regForm.find("#title").val(vo.title);
  		regForm.find("#content").val(vo.content);
  		regForm.find("#writer").val(vo.writer);
  		
  		regForm.find("input").attr("readonly", true);
  		regForm.find("textarea").attr("readonly", true);
  		
  		$("#regDiv").css("display", "none");
  		$("#updateDiv").css("display", "block");
  		
  		regForm.find("#idx").val(vo.idx);
  		
  		if("${user.member.name}" == vo.writer){
  			$("button[data-oper='updateForm']").attr("disabled", false);
  			$("button[data-oper='remove']").attr("disabled", false);
  		}else{
  			$("button[data-oper='updateForm']").attr("disabled", true);
  			$("button[data-oper='remove']").attr("disabled", true);
  		}
  		
  	}
  	
  	function goUpdate(){
  		var regForm = $("#regForm");
  		regForm.attr("action", "${cpath}/board/modify");
  		regForm.submit();
  	}
  	
  	
  	function goList(){
  		location.href = "${cpath}/board/list";
  	}
  	
  	function bookPrint(data){
  		var bList = "<table class='table table-hover'>";
  		bList += "<thead>";
  		bList += "<tr>";
  		bList += "<th>책이미지</th>";
  		bList += "<th>책가격</th>";
  		bList += "</tr>";
  		
  		bList += "</thead>";
  		
  		$.each(data.documents, function(index, obj){
  			bList += "<tr>";
  			bList += "<td><a target='_blank'  href='"+obj.url+"'>";
  			bList += "<img src='" + obj.thumbnail+"' width='50px' height='60px' >";
  			bList += "</a><td>";
  			bList += "<td>" + obj.price+"원</td>";
  			bList += "</tr>";
  		});
  		
  		bList += "<tbody>";
  		$("#bookList").html(bList);
  	}
  	
  	
  
  </script>
  
  
  
  

<!-- 푸터 페이지 -->
<jsp:include page="../footer.jsp" flush="false"></jsp:include>  



</body>
</html>
