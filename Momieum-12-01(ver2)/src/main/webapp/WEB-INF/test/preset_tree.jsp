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
	margin-left: 310px;
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
						<h4 class="card1-title">나무(TREE) - 각각의 요소를 선택하세요!</h4>
						<div class="pink_bar"></div>
						<div class="card1-body">
							<div>
								<div class="owl-carousel btn-group-carousel w-100 mb-2">
									<!-- <a class="btn btn active" href="javascript:void(0)" data-filter="all">  </a>  -->
									<div class="item">
										<a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="0">
											줄기 </a></div> <div class="item"><a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)"
											data-filter="1"> 가지 </a></div> <div class="item"><a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); 
											href="javascript:void(0)" data-filter="2"> 수관 </a></div> <div class="item"><a
											class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="3">
											뿌리 </a></div> <div class="item"><a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)"
											data-filter="4"> 기타 </a></div>
									</div>

								</div>
								<div>
									<div class="filter-container p-0 row">
										<!-- 프리셋 이미지 들어가는 곳 -->
										<div class="filtr-item col-sm-2 custom-width">
											<img
												src="${cpath}/resources/images/Cate2/tree/stem/tc01s.png"
												value="ordniary" class="img-fluid mb-2"
												onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Ordinary_stem.png', '0', '200')">
											<p class="card1-name">보통줄기</p>
										</div>
										<div class="filtr-item col-sm-2">
											<img
												src="${cpath}/resources/images/Cate2/tree/stem/tc02s.png"
												value="thicker" class="img-fluid mb-2"
												onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Thicker_stem.png', '0', '201')">
											<p class="card1-name">더굵은줄기</p>
										</div>
										<div class="filtr-item col-sm-2">
											<img
												src="${cpath}/resources/images/Cate2/tree/stem/tc03s.png"
												value="thinner" class="img-fluid mb-2"
												onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Thinner_stem.png', '0', '202')">
											<p class="card1-name">더가는줄기</p>
										</div>
										<div class="filtr-item col-sm-2">
											<img
												src="${cpath}/resources/images/Cate2/tree/stem/tc04s.png"
												value="straight" class="img-fluid mb-2"
												onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Straight_stem.png', '0', '203')">
											<p class="card1-name">곧은줄기</p>
										</div>
										<div class="filtr-item col-sm-2">
											<img
												src="${cpath}/resources/images/Cate2/tree/stem/tc05s.png"
												value="knotted" class="img-fluid mb-2"
												onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Knotted_stem.png', '0', '204')">
											<p class="card1-name">옹이가있는줄기</p>
										</div>
										<div class="filtr-item col-sm-2">
											<img
												src="${cpath}/resources/images/Cate2/tree/stem/tc06s.png"
												value="squirrel" class="img-fluid mb-2"
												onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Hole_dwelling_squirrel.png', '0', '205')">
											<p class="card1-name">구멍속다람쥐</p>
										</div>
										<div class="filtr-item col-sm-2">
											<img
												src="${cpath}/resources/images/Cate2/tree/stem/tc07s.png"
												value="detailed" class="img-fluid mb-2"
												onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Detailed_tree_bark.png', '0', '206')">
											<p class="card1-name">상세한나무껍질</p>
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

        if (value === 6) {
            // 필터가 7일 때 선택된 이미지의 값을 이중 리스트로 저장
            if (!selectedCanvasValues[6]) {
            	selectedCanvasValues[6] = [];
            	selectedValues[6] = [];
            }

            selectedCanvasValues[6].push({ imageUrl: imageUrl, filter: filter });
            selectedValues[6].push(filter);
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
        var image = new Image();
        image.src = selectedCanvasValues[key].imageUrl;

        // 이미지가 로드된 후에 캔버스에 그림
        (function (img) {
            img.onload = function () {
                ctx.drawImage(img, 0, 0, canvas.width, canvas.height);
            };
        })(image);
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
          <img src="${cpath}/resources/images/Cate2/tree/branch/tb01.png" value="pointed" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/branch/Pointed_branch.png', '1', '210')">
          <p class="card1-name">뾰족한가지</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/tree/branch/tb02.png" value="thorny" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/branch/Thorny_branch.png', '1', '211')">
          <p class="card1-name">가시같은가지</p>
        </div>
        <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/tree/branch/tb03.png" value="basic" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/branch/Basic_branch.png', '1', '212')">
	      <p class="card1-name">기본가지</p>
	    </div>
	    <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/tree/branch/tb04.png" value="open-ended" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/branch/Open_ended_branch.png', '1', '213')">
	      <p class="card1-name">끝이열린가지</p>
	    </div>
	    <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/tree/branch/tb05.png" value="upward" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/branch/Upward_reaching_branch.png', '1', '214')">
	      <p class="card1-name">위로오른가지</p>
	    </div>
	    <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/tree/branch/tb06.png" value="gable" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/branch/Branchless.png', '1', '215')">
	      <p class="card1-name">가지없음</p>
	    </div>
        
        <!-- Add more content as needed -->
      `);
    } else if (filter === 2) {
      // Content for filter 3
      filterContainer.html(`
        <!-- Add content for filter 3 as needed -->
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/tree/canopy/ta02.png" value="rounded" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/canopy/Rounded_canopy.png', '2', '220')">
          <p class="card1-name">둥근수관</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/tree/canopy/ta07.png" value="willow" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/canopy/Willow_canopy.png', '2', '221')">
          <p class="card1-name">수양버들</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/tree/canopy/ta08.png" value="sparse" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/canopy/Sparse_canopy.png', '2', '222')">
          <p class="card1-name">잎이적은수관</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/tree/canopy/ta03.png" value="curved" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/canopy/Curved_canopy.png', '2', '223')">
          <p class="card1-name">곡선으로채운수관</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/tree/canopy/ta06.png" value="flower" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/canopy/Flower_canopy.png', '2', '224')">
          <p class="card1-name">꽃이있는수관</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/tree/canopy/ta05.png" value="fruit" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/canopy/Fruit_canopy.png', '2', '225')">
          <p class="card1-name">열매열린수관</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/tree/canopy/ta04.png" value="leafy" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/canopy/Leafy_canopy.png', '2', '226')">
          <p class="card1-name">잎그린수관</p>
        </div>
        <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/tree/canopy/ta01.png" value="basic" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/canopy/Basic_canopy.png', '2', '227')">
	      <p class="card1-name">기본수관</p>
	    </div>
      `);
    } else if (filter === 3) {
        // Content for filter 4
        filterContainer.html(`
          <!-- Add content for filter 3 as needed -->
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/tree/root/td02.png" value="baseline" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/root/Baseline.png', '3', '230')">
            <p class="card1-name">기저선</p>
          </div>
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/tree/root/td03.png" value="underground" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/root/Underground_roots.png', '3', '231')">
            <p class="card1-name">땅밑뿌리</p>
          </div>
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/tree/root/td04.png" value="exposed" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/root/Exposed_roots.png', '3', '232')">
            <p class="card1-name">드러난뿌리</p>
          </div>
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/tree/root/td01.png" value="rootless" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/root/Rootless.png', '3', '233')">
            <p class="card1-name">뿌리없음</p>
          </div>
        `);
      } else if (filter === 4) {
          // Content for filter 5
          filterContainer.html(`
            <!-- Add content for filter 3 as needed -->
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/tree/etc/te02.png" value="baseline" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/etc/Baseline_etc.png', '4', '240')">
              <p class="card1-name">기저선</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/tree/etc/te05.png" value="grass" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/etc/Grass.png', '4', '241')">
              <p class="card1-name">잔디</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/tree/etc/te03.png" value="side-branch" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/etc/Side_branch.png', '4', '242')">
              <p class="card1-name">옆가지</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/tree/etc/te07.png" value="swing" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/etc/Swing.png', '4', '243')">
              <p class="card1-name">그네</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/tree/etc/te01.png" value="falling-leaves" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/etc/Falling_leaves.png', '4', '244')">
              <p class="card1-name">떨어지는잎</p>
            </div>
            <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/tree/etc/te04.png" value="nest" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/etc/Nest.png', '4', '243')">
            <p class="card1-name">새둥지</p>
          </div>
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/tree/etc/te06.png" value="wind" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/etc/Wind.png', '4', '244')">
            <p class="card1-name">바람</p>
          </div>
          `);
        } else {
      // Default content or content for other filters
      filterContainer.html(`
    		<div class="filtr-item col-sm-2">
	          <img src="${cpath}/resources/images/Cate2/tree/stem/tc01s.png" value="ordniary" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Ordinary_stem.png', '0', '200')">
	          <p class="card1-name">보통줄기</p>
	        </div>
	        <div class="filtr-item col-sm-2">
	          <img src="${cpath}/resources/images/Cate2/tree/stem/tc02s.png" value="thicker" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Thicker_stem.png', '0', '201')">
	          <p class="card1-name">더굵은줄기</p>
	        </div>
	        <div class="filtr-item col-sm-2">
	          <img src="${cpath}/resources/images/Cate2/tree/stem/tc03s.png" value="thinner" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Thinner_stem.png', '0', '202')">
	          <p class="card1-name">더가는줄기</p>
	        </div>
	        <div class="filtr-item col-sm-2">
	          <img src="${cpath}/resources/images/Cate2/tree/stem/tc04s.png" value="straight" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Straight_stem.png', '0', '203')">
	          <p class="card1-name">곧은줄기</p>
	        </div>
	        <div class="filtr-item col-sm-2">
	          <img src="${cpath}/resources/images/Cate2/tree/stem/tc05s.png" value="knotted" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Knotted_stem.png', '0', '204')">
	          <p class="card1-name">옹이가있는줄기</p>
	        </div>
	        <div class="filtr-item col-sm-2">
	          <img src="${cpath}/resources/images/Cate2/tree/stem/tc06s.png" value="squirrel" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Hole_dwelling_squirrel.png', '0', '205')">
	          <p class="card1-name">구멍속다람쥐</p>
	        </div>
	        <div class="filtr-item col-sm-2">
	          <img src="${cpath}/resources/images/Cate2/tree/stem/tc07s.png" value="detailed" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/tree/stem/Detailed_tree_bark.png', '0', '206')">
	          <p class="card1-name">상세한나무껍질</p>
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
	    imageForm.setAttribute("action", "${cpath}/endtest.do?objectType=TREE");

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
