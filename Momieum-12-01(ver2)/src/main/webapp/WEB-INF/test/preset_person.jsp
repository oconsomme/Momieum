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


<style>
.container-fluid {
	margin-top: 130px;
}

.card1-title {
	text-align: center; /* 텍스트를 가운데 정렬합니다. */
}

.card1-name {
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
	color: #000000; /* 글자 색상 */
	text-decoration: none; /* 밑줄 제거 */
	padding: 10px 15px; /* 패딩 */
	border: 2px solid #dee0e4; /* 테두리 */
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
	margin-top: -30px;
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

.img-fluid {
	width: 130px;
	height: 130px;
}

.card1-body {
	padding: 10px;
	width: 60%;
	margin-bottom: 60px;
	margin-left: 320px;
}

.pink_bar {
	width: 90px;
	height: 2px;
	background: #dee0e4;
	margin: 20px auto;
}

.owl-carousel .owl-nav .owl-prev, .owl-carousel .owl-nav .owl-next {
	position: absolute;
	top: 50%; /* 화살표를 수직 중앙에 위치시킵니다 */
	transform: translateY(-50%); /* 화살표의 중앙을 정확하게 수직 중앙에 맞춥니다 */
	font-size: 24px; /* 화살표의 폰트 크기를 조정합니다. */
	width: 50px; /* 화살표의 너비를 조정합니다. */
	height: 50px; /* 화살표의 높이를 조정합니다. */
	line-height: 50px; /* 세로 중앙 정렬을 위해 line-height를 조정합니다. */
	
}

.owl-carousel .owl-nav .owl-prev {
	left: -30px; /* 왼쪽 화살표의 위치를 왼쪽으로 조정합니다 */
}

.owl-carousel .owl-nav .owl-next {
	right: -30px; /* 오른쪽 화살표의 위치를 오른쪽으로 조정합니다 */
}

.item {
	text-align: center;
	background-color : #dee0e4;
	border-radius : 15px;
	box-shadow: 0 0 0 0rem rgba(13,110,253,.25);"
	 justify-content: center; /* 내부 요소 가운데 정렬 */
    align-items: center; /* 내부 요소 세로 가운데 정렬 */
    
    
}

.item .btn {
    /* .item과 동일한 스타일을 적용 */
    background-color: transparent; /* 배경색 투명 */
    border-radius : 15px;
    color: inherit; /* 글자색 상속 */
    width: 100%; /* 너비 100%로 설정 */
    height: 100%; /* 높이 100%로 설정 */
    text-align: center; /* 텍스트 가운데 정렬 */
    border: none; /* 테두리 없음 */
    box-shadow: none; /* 그림자 없음 */
}

.btn {
    color: #000000; /* 기본 텍스트 색상 */
    background-color: #ffffff; /* 기본 배경 색상 */
    /* 여기에 필요한 추가 스타일을 적용하세요 */
}

/* 버튼 호버 스타일 */
.btn:hover {
    color: #fff; /* 호버 시 텍스트 색상 */
    background-color: #a3a8ad; /* 호버 시 배경 색상 */
}

/* 버튼 활성화 (클릭된 상태) 스타일 */
.btn:active, .btn.active .btn:focus, .btn.focus {
    color: #fff; /* 클릭 시 텍스트 색상 */
    background-color: #a3a8ad; /* 클릭 시 배경 색상 */
    /* 필요한 경우 추가 스타일을 적용 */
}

.btn.active {
    color: #fff; /* 클릭 시 텍스트 색상 */
    background-color: #a3a8ad; /* 클릭 시 배경 색상 */
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
	<jsp:include page="../header.jsp" flush="false"></jsp:include>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card1 card1-primary">
						<br>
						<h4 class="card1-title">사람(PERSON) - 각각의 요소를 선택하세요! </h4>
						<div class="pink_bar"></div>
						<div class="card1-body">
							<div>
								<div class="owl-carousel btn-group-carousel w-100 mb-2">
									<!-- <a class="btn btn active" href="javascript:void(0)" data-filter="all">  </a>  -->
									<div class="item">
									<a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="0">
										얼굴형 </a></div> <div class="item"><a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)"
										data-filter="1"> 머리카락 </a></div> <div class="item"><a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); 
										href="javascript:void(0)" data-filter="2"> 눈썹 </a></div> <div class="item"><a
										class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="3">
										눈 </a></div> <div class="item"><a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)"
										data-filter="4"> 코 </a></div> <div class="item"><a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); 
										href="javascript:void(0)" data-filter="5"> 입 </a></div> <div class="item"><a
										class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="6">
										귀 </a></div> <div class="item"><a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)"
										data-filter="7"> 목 </a></div> <div class="item"><a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25);
										href="javascript:void(0)" data-filter="8"> 팔 </a></div> <div class="item"><a
										class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="9">
										다리 </a></div> <div class="item"><a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)"
										data-filter="10"> 액세사리 </a></div>
								</div>

							</div>
							<br>
							<div>
								<div class="filter-container p-0 row">
									<!-- 프리셋 이미지 들어가는 곳 -->
									<div class="filtr-item col-sm-2">
										<img
											src="${cpath}/resources/images/Cate2/person/face/pa01.png"
											value="standard" class="img-fluid mb-2"
											onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/face/Standard.png', '0', '300')">
										<p class="card1-name">기본</p>
									</div>
									<div class="filtr-item col-sm-2 custom-width">
										<img
											src="${cpath}/resources/images/Cate2/person/face/pa02.png"
											value="large" class="img-fluid mb-2"
											onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/face/Large.png', '0', '301')">
										<p class="card1-name">큰얼굴</p>
									</div>
									<div class="filtr-item col-sm-2">
										<img
											src="${cpath}/resources/images/Cate2/person/face/pa03.png"
											value="round" class="img-fluid mb-2"
											onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/face/Round.png', '0', '302')">
										<p class="card1-name">동그란얼굴</p>
									</div>
									<div class="filtr-item col-sm-2">
										<img
											src="${cpath}/resources/images/Cate2/person/face/pa04.png"
											value="sharp" class="img-fluid mb-2"
											onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/face/Sharp.png', '0', '303')">
										<p class="card1-name">날카로운턱</p>
									</div>
									<div class="filtr-item col-sm-2">
										<img
											src="${cpath}/resources/images/Cate2/person/face/pa05.png"
											value="angular" class="img-fluid mb-2"
											onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/face/Angular.png', '0', '304')">
										<p class="card1-name">각진얼굴</p>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div
				class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column flex-row">
				<div class="card2-body pt-0">
					<div class="row">
						<div class="col-7"></div>
						<div class="col-5 text-center">
							<div id="canvas-container">
								<canvas id="preview-canvas" height="720px" width="840px"
									style="border: rgba(0, 0, 0, .125) 1px solid;"></canvas>
							</div>

						</div>

					</div>


				</div>

				<!-- </div> -->
			</div>
			<div class="text-center">
				<a href="javascript:clearCanvas()" class="redraw-link">전체 지우기</a> <a
					href="javascript:sendDrawing()" class="redraw-link">다 선택했어요! </a>
			</div>
		</div>

	</section>

	<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->





	<jsp:include page="../footer.jsp" flush="false"></jsp:include>

	<!-- 페이지 상단의 기존 코드 유지 -->

	<script>
var selectedValues = []; // 선택된 이미지의 value를 저장하는 객체
var selectedCanvasValues = []; // 선택된 이미지의 value를 저장하는 객체(캔버스에 출력할)

// 이미지를 캔버스에 표시하는 함수
function showImageOnCanvas(imageUrl, value, filter) {
    var canvas = document.getElementById("preview-canvas");
    var ctx = canvas.getContext("2d");

    var image = new Image();
    image.src = imageUrl;

    image.onload = function () {
        // 캔버스 초기화
        //ctx.clearRect(0, 0, canvas.width, canvas.height);

        // 새로운 이미지를 캔버스에 그림
        ctx.drawImage(image, 0, 0, canvas.width, canvas.height);

        // 선택된 모든 이미지를 합성하여 캔버스에 그림
        for (var key in selectedValues) {
            var selectedImage = new Image();
            selectedImage.src = selectedValues[key].imageUrl;
            //ctx.drawImage(selectedImage, 0, 0, canvas.width, canvas.height);
            //drawAllImagesOnCanvas();
        }

        // 현재 필터의 선택된 값만 저장
        // selectedValues[value] = { imageUrl: imageUrl, filter: filter };

        if (value === 10) {
            // 필터가 7일 때 선택된 이미지의 값을 이중 리스트로 저장
            if (!selectedCanvasValues[10]) {
            	selectedCanvasValues[10] = [];
            	selectedValues[10] = [];
            }

            selectedCanvasValues[10].push({ imageUrl: imageUrl, filter: filter });
            selectedValues[10].push(filter);
            drawAllImagesOnCanvas();
        } else {
        	selectedCanvasValues[value] = { imageUrl: imageUrl, filter: filter };
        	selectedValues[value] = filter;
            drawAllImagesOnCanvas();
        	
        }
        
        // 콘솔에 현재 선택된 이미지들의 정보 출력
        console.log(selectedValues[value]);
    };
}

function drawAllImagesOnCanvas() {
    var canvas = document.getElementById("preview-canvas");
    var ctx = canvas.getContext("2d");

    // 캔버스 초기화
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    // selectedValues 배열에 있는 모든 이미지를 그림
    for (var key in selectedCanvasValues) {
        // 이미지 배열로 변환
        var images = Array.isArray(selectedCanvasValues[key]) ? selectedCanvasValues[key] : [selectedCanvasValues[key]];

        // 배열이라면 forEach를 사용하여 이미지를 그림
        images.forEach(function (imageInfo) {
            var image = new Image();
            image.src = imageInfo.imageUrl;

            // 이미지가 로드된 후에 캔버스에 그림
            image.onload = function () {
                ctx.drawImage(image, 0, 0, canvas.width, canvas.height);
            };
        });
    }
}


  // 필터에 따라 내용을 업데이트하는 함수
  function updateFilterContent(filter) {
    var filterContainer = $(".filter-container");

    // Example content for filter 2 (무늬지붕)
    if (filter === 1) {
      filterContainer.html(`
        <!-- Add more content as needed -->
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/person/hair/pb01.png" value="shortcut" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/hair/Shortcut.png', '1', '310')">
          <p class="card1-name">숏커트</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/person/hair/pb02.png" value="sparse" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/hair/Sparse.png', '1', '311')">
          <p class="card1-name">적은머리카락</p>
        </div>
        <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/person/hair/pb03.png" value="shaded" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/hair/Shaded.png', '1', '312')">
	      <p class="card1-name">음영진머리</p>
	    </div>
	    <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/person/hair/pb04.png" value="shaded-short" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/hair/ShadedShort.png', '1', '313')">
	      <p class="card1-name">음영진단발머리</p>
	    </div>
	    <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/person/hair/pb05.png" value="unshaded-long" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/hair/UnshadedLong.png', '1', '314')">
	      <p class="card1-name">음영없이긴머리</p>
	    </div>
	    <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/person/hair/pb06.png" value="detailed" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/hair/Detailed.png', '1', '315')">
	      <p class="card1-name">세부묘사된머리</p>
	    </div>
	    <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/person/hair/pb07.png" value="none" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/hair/None.png', '1', '316')">
	      <p class="card1-name">없음</p>
	    </div>
        
        <!-- Add more content as needed -->
      `);
    } else if (filter === 2) {
      // Content for filter 3
      filterContainer.html(`
        <!-- Add content for filter 3 as needed -->
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/person/eyebrow/pd01.png" value="standard" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/eyebrow/Standard.png', '2', '320')">
          <p class="card1-name">기본</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/person/eyebrow/pd02.png" value="thick" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/eyebrow/Thick.png', '2', '321')">
          <p class="card1-name">짙은눈썹</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/person/eyebrow/pd03.png" value="none" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/eyebrow/None.png', '2', '322')">
          <p class="card1-name">없음</p>
        </div>
      `);
    } else if (filter === 3) {
        // Content for filter 4
        filterContainer.html(`
          <!-- Add content for filter 3 as needed -->
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/person/eye/pc01.png" value="standard" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/eye/Standard.png', '3', '330')">
            <p class="card1-name">기본</p>
          </div>
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/person/eye/pc02.png" value="big-eye" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/eye/Big.png', '3', '331')">
            <p class="card1-name">큰눈</p>
          </div>
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/person/eye/pc03.png" value="eyelashes" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/eye/Eyelashes.png', '3', '332')">
            <p class="card1-name">속눈썹있는눈</p>
          </div>
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/person/eye/pc04.png" value="smiling-eye" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/eye/Smiling.png', '3', '333')">
            <p class="card1-name">웃는눈</p>
          </div>
        `);
      } else if (filter === 4) {
          // Content for filter 5
          filterContainer.html(`
            <!-- Add content for filter 3 as needed -->
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/person/nose/pe01.png" value="standard" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/nose/Standard.png', '4', '340')">
              <p class="card1-name">기본</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/person/nose/pe02.png" value="small" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/nose/Small.png', '4', '341')">
              <p class="card1-name">작은코</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/person/nose/pe03.png" value="long" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/nose/Long.png', '4', '342')">
              <p class="card1-name">긴코</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/person/nose/pe04.png" value="emphasized" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/nose/Emphasized.png', '4', '343')">
              <p class="card1-name">콧구멍강조</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/person/nose/pe05.png" value="None" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/nose/None.png', '4', '344')">
              <p class="card1-name">없음</p>
            </div>
          `);
        } else if (filter === 5) {
          // Content for filter 5
          filterContainer.html(`
            <!-- Add content for filter 3 as needed -->
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/person/mouth/pf01.png" value="standard" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/mouth/Standard.png', '5', '350')">
              <p class="card1-name">기본</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/person/mouth/pf02.png" value="smiling" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/mouth/Smiling.png', '5', '351')">
              <p class="card1-name">웃는입</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/person/mouth/pf03.png" value="opened" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/mouth/Opened.png', '5', '352')">
              <p class="card1-name">벌린입</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/person/mouth/pf04.png" value="teeth" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/mouth/Teeth.png', '5', '353')">
              <p class="card1-name">이가드러난입</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/person/mouth/pf05.png" value="closed" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/mouth/Closed.png', '5', '354')">
              <p class="card1-name">입술을다문입</p>
            </div>
            <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/person/mouth/pf06.png" value="none" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/mouth/None.png', '5', '355')">
            <p class="card1-name">없음</p>
          </div>
          `);
        } else if (filter === 6) {
            // Content for filter 5
            filterContainer.html(`
              <!-- Add content for filter 3 as needed -->
              <div class="filtr-item col-sm-2">
                <img src="${cpath}/resources/images/Cate2/person/ear/pg01.png" value="standard" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/ear/Standard.png', '6', '360')">
                <p class="card1-name">기본</p>
              </div>
              <div class="filtr-item col-sm-2">
                <img src="${cpath}/resources/images/Cate2/person/ear/pg02.png" value="none" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/ear/None.png', '6', '361')">
                <p class="card1-name">없음</p>
              </div>
            `);
          } else if (filter === 7) {
              // Content for filter 5
              filterContainer.html(`
                <!-- Add content for filter 3 as needed -->
                <div class="filtr-item col-sm-2">
                  <img src="${cpath}/resources/images/Cate2/person/neck/ph01.png" value="standard" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/neck/Standard.png', '7', '370')">
                  <p class="card1-name">기본</p>
                </div>
                <div class="filtr-item col-sm-2">
                  <img src="${cpath}/resources/images/Cate2/person/neck/ph02.png" value="thinner" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/neck/Thinner.png', '7', '371')">
                  <p class="card1-name">가는목</p>
                </div>
                <div class="filtr-item col-sm-2">
                  <img src="${cpath}/resources/images/Cate2/person/neck/ph03.png" value="thicker" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/neck/Thicker.png', '7', '372')">
                  <p class="card1-name">굵은목</p>
                </div>
              `);
            } else if (filter === 8) {
                // Content for filter 5
                filterContainer.html(`
                  <!-- Add content for filter 3 as needed -->
                  <div class="filtr-item col-sm-2">
                    <img src="${cpath}/resources/images/Cate2/person/arm/pk01.png" value="standard" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/arm/Standard.png', '8', '380')">
                    <p class="card1-name">기본</p>
                  </div>
                  <div class="filtr-item col-sm-2">
                    <img src="${cpath}/resources/images/Cate2/person/arm/pk02.png" value="backhanded" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/arm/Backhanded.png', '8', '381')">
                    <p class="card1-name">뒷짐</p>
                  </div>
                  <div class="filtr-item col-sm-2">
                    <img src="${cpath}/resources/images/Cate2/person/arm/pk03.png" value="outstretched" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/arm/Outstretched.png', '8', '382')">
                    <p class="card1-name">벌린팔</p>
                  </div>
                  <div class="filtr-item col-sm-2">
                    <img src="${cpath}/resources/images/Cate2/person/arm/pk04.png" value="victory" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/arm/Victory.png', '8', '383')">
                    <p class="card1-name">만세</p>
                  </div>
                  <div class="filtr-item col-sm-2">
                    <img src="${cpath}/resources/images/Cate2/person/arm/pk05.png" value="muscle" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/arm/Muscle.png', '8', '384')">
                    <p class="card1-name">근육있는팔</p>
                  </div>
                `);
              } else if (filter === 9) {
                  // Content for filter 5
                  filterContainer.html(`
                    <!-- Add content for filter 3 as needed -->
                    <div class="filtr-item col-sm-2">
                      <img src="${cpath}/resources/images/Cate2/person/leg/pm01.png" value="standard-pants" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/leg/StandardPants.png', '9', '390')">
                      <p class="card1-name">기본(바지)</p>
                    </div>
                    <div class="filtr-item col-sm-2">
                      <img src="${cpath}/resources/images/Cate2/person/leg/pm02.png" value="tapered-pants" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/leg/TaperedPants.png', '9', '391')">
                      <p class="card1-name">모은다리(바지)</p>
                    </div>
                    <div class="filtr-item col-sm-2">
                      <img src="${cpath}/resources/images/Cate2/person/leg/pm03.png" value="wide-pants" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/leg/WidePants.png', '9', '392')">
                      <p class="card1-name">벌린다리(바지)</p>
                    </div>
                    <div class="filtr-item col-sm-2">
                      <img src="${cpath}/resources/images/Cate2/person/leg/pm04.png" value="folded-pants" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/leg/FoldedPants.png', '9', '393')">
                      <p class="card1-name">한쪽구부린다리(바지)</p>
                    </div>
                    <div class="filtr-item col-sm-2">
                      <img src="${cpath}/resources/images/Cate2/person/leg/pm05.png" value="standard-skirt" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/leg/StandardSkirt.png', '9', '394')">
                      <p class="card1-name">기본(치마)</p>
                    </div>
                    <div class="filtr-item col-sm-2">
                      <img src="${cpath}/resources/images/Cate2/person/leg/pm06.png" value="tapered-skirt" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/leg/TaperedSkirt.png', '9', '395')">
                      <p class="card1-name">모은다리(치마)</p>
                  	</div>
                  	<div class="filtr-item col-sm-2">
                      <img src="${cpath}/resources/images/Cate2/person/leg/pm07.png" value="wide-skirt" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/leg/WideSkirt.png', '9', '396')">
                      <p class="card1-name">벌린다리(치마)</p>
                	</div>
                	<div class="filtr-item col-sm-2">
                      <img src="${cpath}/resources/images/Cate2/person/leg/pm08.png" value="folded-skirt" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/leg/FoldedSkirt.png', '9', '397')">
                      <p class="card1-name">한쪽구부린다리(치마)</p>
                	</div>
                  `);
                } else if (filter === 10) {
                    // Content for filter 5
                    filterContainer.html(`
                      <!-- Add content for filter 3 as needed -->
                      <div class="filtr-item col-sm-2">
                        <img src="${cpath}/resources/images/Cate2/person/accessory/pp01.png" value="collar" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/accessory/Collar.png', '10', '400')">
                        <p class="card1-name">카라</p>
                      </div>
                      <div class="filtr-item col-sm-2">
                        <img src="${cpath}/resources/images/Cate2/person/accessory/pp02.png" value="necktie" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/accessory/Necktie.png', '10', '401')">
                        <p class="card1-name">넥타이</p>
                      </div>
                      <div class="filtr-item col-sm-2">
                        <img src="${cpath}/resources/images/Cate2/person/accessory/pp03.png" value="pocket" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/accessory/Pocket.png', '10', '402')">
                        <p class="card1-name">포켓</p>
                      </div>
                      <div class="filtr-item col-sm-2">
                        <img src="${cpath}/resources/images/Cate2/person/accessory/pp04.png" value="button" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/accessory/Button.png', '10', '403')">
                        <p class="card1-name">단추</p>
                      </div>
                    `);
                  } else {
      // Default content or content for other filters
      filterContainer.html(`
				<!-- 프리셋 이미지 들어가는 곳 -->
				<div class="filtr-item col-sm-2">
		          <img src="${cpath}/resources/images/Cate2/person/face/pa01.png" value="standard" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/face/Standard.png', '0', '300')">
		          <p class="card1-name">기본</p>
		        </div>
		        <div class="filtr-item col-sm-2">
		          <img src="${cpath}/resources/images/Cate2/person/face/pa02.png" value="large" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/face/Large.png', '0', '301')">
		          <p class="card1-name">큰얼굴</p>
		        </div>
		        <div class="filtr-item col-sm-2">
		          <img src="${cpath}/resources/images/Cate2/person/face/pa03.png" value="round" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/face/Round.png', '0', '302')">
		          <p class="card1-name">동그란얼굴</p>
		        </div>
		        <div class="filtr-item col-sm-2">
		          <img src="${cpath}/resources/images/Cate2/person/face/pa04.png" value="sharp" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/face/Sharp.png', '0', '303')">
		          <p class="card1-name">날카로운턱</p>
		        </div>
		        <div class="filtr-item col-sm-2">
		          <img src="${cpath}/resources/images/Cate2/person/face/pa05.png" value="angular" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/person/face/Angular.png', '0', '304')">
		          <p class="card1-name">각진얼굴</p>
		        </div>
        <!-- Add more default content as needed -->
      `);
    }
  }

  $(document).ready(function () {
	 
	 updateFilterContent(0); 
	 
    // 클릭된 버튼에 따라 내용 변경
    $(".btn").on("click", function (event) {
      event.preventDefault();
      var dataFilter = $(this).data("filter");
      updateFilterContent(dataFilter);
    });

    // 다시 그리기 버튼 클릭 시 실행될 함수
    function clearCanvas() {
      var canvas = document.getElementById("preview-canvas");
      var ctx = canvas.getContext("2d");

      console.log(selectedValues);
      
      // 선택된 이미지 배열 초기화
      selectedValues =[];

      // 캔버스 초기화
      ctx.clearRect(0, 0, canvas.width, canvas.height);
    }

    // 이미지 저장 버튼 클릭 시 실행될 함수 (여기에 이미지 저장 로직 추가)
    function saveImage() {
      // 이미지 저장 로직을 추가하세요.
      alert("이미지 저장 로직을 추가하세요.");
    }
  });
  
//#--------------- 여기부터 endtest.do로 캔버스 안 그림 옮기는 함수!! ---------------//
  function captureCanvas() {
      var canvas = document.getElementById('preview-canvas');
      var imageData = canvas.toDataURL("image/png"); // 캔버스 내용을 이미지 데이터로 변환
      return imageData;
  }


  function sendDrawing() {
	    var canvas = document.getElementById('preview-canvas');
	    var imageData = canvas.toDataURL("image/png"); // 캔버스 내용을 이미지 데이터로 변환

	    // 첫 번째 폼 생성
	    var imageForm = document.createElement("form");
	    imageForm.setAttribute("method", "post");
	    imageForm.setAttribute("action", "${cpath}/endtest.do?objectType=PERSON");

	    // 이미지 데이터를 담은 hidden input 요소 추가
	    var imageHiddenField = document.createElement("input");
	    imageHiddenField.setAttribute("type", "hidden");
	    imageHiddenField.setAttribute("name", "imageData");
	    imageHiddenField.setAttribute("value", imageData);
	    imageForm.appendChild(imageHiddenField);

	    // 선택된 값들을 담은 hidden input 요소 추가
	    for (var i = 0; i < selectedValues.length; i++) {
	        var input = document.createElement('input');
	        input.type = 'hidden';
	        input.name = 'selectedValues[]';
	        input.value = selectedValues[i];
	        imageForm.appendChild(input);
	    }

	    // Form을 body에 추가하고 제출
	    document.body.appendChild(imageForm);
	    imageForm.submit();
	}



  //#--------------- 다시 그릴게요 함수 ---------------//
  function clearCanvas() {
      var canvas = document.getElementById('preview-canvas');
      var ctx = canvas.getContext('2d');
      ctx.clearRect(0, 0, canvas.width, canvas.height);
   	  // 선택된 이미지 배열 초기화
      selectedValues = [];
  };

  
  $(document).ready(function() {
	    $(".btn-group-carousel").owlCarousel({
	        loop: false,
	        margin: 10,
	        nav: true,
	        responsive: {
	            0: { items: 1 },
	            600: { items: 3 },
	            1000: { items: 5 }
	        }
	    });

	    $(".filter-container-carousel").owlCarousel({
	        loop: false,
	        margin: 10,
	        nav: true,
	        responsive: {
	            0: { items: 1 },
	            600: { items: 3 },
	            1000: { items: 5 }
	        }
	    });
	});

  function toggleButtonActiveState(event) {
	    var button = event.currentTarget;
	    button.classList.toggle('active-btn');
	}

	// 모든 버튼에 이벤트 리스너 추가
	document.querySelectorAll('.btn').forEach(function(btn) {
  btn.addEventListener('click', function() {
      // 모든 버튼에서 'active' 클래스 제거
      document.querySelectorAll('.btn').forEach(function(button) {
          button.classList.remove('active');
      });

      // 클릭된 버튼에 'active' 클래스 추가
      this.classList.add('active');
  });
});
  
</script>

	<!-- 페이지 하단의 기존 코드 유지 -->


</body>
</html>
