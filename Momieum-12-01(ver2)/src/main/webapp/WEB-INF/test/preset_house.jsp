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
						<h4 class="card1-title">집(HOUSE) - 각각의 요소를 선택하세요!</h4>
						<div class="pink_bar"></div>

						<div class="card1-body">
							<div>
								<div class="owl-carousel btn-group-carousel w-100 mb-2">
									<!-- <a class="btn btn active" href="javascript:void(0)" data-filter="all">  </a>  -->
									<div class="item">
										<a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25);" href="javascript:void(0)" data-filter="0">
											지붕창문 </a>
									</div>
									<div class="item">
										<a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="1">
											무늬지붕 </a>
									</div>
									<div class="item">
										<a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="2">
											문 </a>
									</div>
									<div class="item">
										<a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="3">
											창문 </a>
									</div>
									<div class="item">
										<a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="4">
											굴뚝 </a>
									</div>
									<div class="item">
										<a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="5">
											울타리 </a>
									</div>
									<div class="item">
										<a class="btn btn" style="box-shadow: 0 0 0 0rem rgba(13,110,253,.25); href="javascript:void(0)" data-filter="6">
											기타 </a>
									</div>
								</div>

							</div>
							<br>
							<br>
							<div>
								<div class="filter-container p-0 row">
									<!-- 프리셋 이미지 들어가는 곳 -->
									<div class="filtr-item col-sm-2 custom-width">
										<img
											src="${cpath}/resources/images/Cate2/Cate2Thumb_ha01_20150521144446.png"
											value="none" class="img-fluid mb-2"
											onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/roof-window/none.png', '0', '100')">
										<p class="card1-name">지붕창문없음</p>
									</div>
									<div class="filtr-item col-sm-2">
										<img
											src="${cpath}/resources/images/Cate2/Cate2Thumb_ha02_20150521152546.png"
											value="rectangle" class="img-fluid mb-2"
											onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/roof-window/rectangle.png', '0', '101')">
										<p class="card1-name">지붕사각창문</p>
									</div>
									<div class="filtr-item col-sm-2">
										<img
											src="${cpath}/resources/images/Cate2/Cate2Thumb_ha03_20150521152556.png"
											value="circle" class="img-fluid mb-2"
											onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/roof-window/circle.png', '0', '102')">
										<p class="card1-name">지붕원창문</p>
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
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hc01_20150521153421.png" value="plain" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/pattern-dome/Plain.png', '1', '110')">
          <p class="card1-name">무늬없는지붕</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hc03_20150521153434.png" value="wavy" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/pattern-dome/Wavy-patterned.png', '1', '111')">
          <p class="card1-name">물결무늬지붕</p>
        </div>
        <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hc02_20150521153428.png" value="mesh" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/pattern-dome/Mesh-patterned.png', '1', '112')">
	      <p class="card1-name">그물무늬지붕</p>
	    </div>
	    <div class="filtr-item col-sm-2">
	      <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hc04_20160527153350.png" value="gable" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/pattern-dome/Gable.png', '1', '113')">
	      <p class="card1-name">초가지붕</p>
	    </div>
        
        <!-- Add more content as needed -->
      `);
    } else if (filter === 2) {
      // Content for filter 3
      filterContainer.html(`
        <!-- Add content for filter 3 as needed -->
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hb01_20150521152812.png" value="stair" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/door/Stair.png', '2', '120')">
          <p class="card1-name">계단있는문</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hb02_20150521152818.png" value="square" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/door/Square.png', '2', '121')">
          <p class="card1-name">사각문</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hb03_20150521152826.png" value="emphasized" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/door/Emphasized-frame.png', '2', '122')">
          <p class="card1-name">문틀강조한문</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hb04_20150521152835.png" value="arch" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/door/Arch.png', '2', '123')">
          <p class="card1-name">아치형문</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hb05_20150521152842.png" value="none-handle" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/door/None-handle.png', '2', '124')">
          <p class="card1-name">손잡이없는문</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hd07_20150521155655.png" value="window" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/door/Window.png', '2', '125')">
          <p class="card1-name">문과비슷한위치의창문</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hb06_20150521152848.png" value="none-door" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/door/None-door.png', '2', '126')">
          <p class="card1-name">문없음</p>
        </div>
      `);
    } else if (filter === 3) {
        // Content for filter 4
        filterContainer.html(`
          <!-- Add content for filter 3 as needed -->
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hd04_20150521155639.png" value="opened-curtain" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/window/Opened-curtain.png', '3', '130')">
            <p class="card1-name">열린커튼</p>
          </div>
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hd05_20150521155644.png" value="mesh-window" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/window/Mesh-window.png', '3', '131')">
            <p class="card1-name">격자무늬창문</p>
          </div>
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hd06_20150521155649.png" value="decoration" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/window/Decoration.png', '3', '132')">
            <p class="card1-name">창틀에장식</p>
          </div>
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hd07_20150521155655.png" value="upper-window" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/window/Upper-window.png', '3', '133')">
            <p class="card1-name">문보다높은창문</p>
          </div>
          <div class="filtr-item col-sm-2">
            <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hd03_20150521155633.png" value="none-window" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/window/None.png', '3', '134')">
            <p class="card1-name">창문없음</p>
          </div>
        `);
      } else if (filter === 4) {
          // Content for filter 5
          filterContainer.html(`
            <!-- Add content for filter 3 as needed -->
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/Cate2Thumb_he01_20150521163845.png" value="unshaded" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/chimney/Unshaded.png', '4', '140')">
              <p class="card1-name">음영없는굴뚝</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/Cate2Thumb_he02_20150521163852.png" value="shaded" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/chimney/Shaded.png', '4', '141')">
              <p class="card1-name">음영있는굴뚝</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/Cate2Thumb_he03_20150521163858.png" value="unshaded-smoke" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/chimney/Unshaded-smoke.png', '4', '142')">
              <p class="card1-name">음영없이연기나는굴뚝</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/Cate2Thumb_he04_20150521163904.png" value="shaded-smoke" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/chimney/Shaded-smoke.png', '4', '143')">
              <p class="card1-name">음영있이연기나는굴뚝</p>
            </div>
            <div class="filtr-item col-sm-2">
              <img src="${cpath}/resources/images/Cate2/Cate2Thumb_he05_20160518105400.png" value="none-chimney" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/chimney/None-chimney.png', '4', '144')">
              <p class="card1-name">없음</p>
            </div>
          `);
        } else if (filter === 5) {
            // Content for filter 6
            filterContainer.html(`
              <!-- Add content for filter 3 as needed -->
              <div class="filtr-item col-sm-2">
                <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hf01_20150521164033.png" value="fence" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/fence/Fence.png', '5', '150')">
                <p class="card1-name">울타리</p>
              </div>
              <div class="filtr-item col-sm-2">
                <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hf04_20150629135729.png" value="none-fence" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/fence/None-fence.png', '5', '151')">
                <p class="card1-name">없음</p>
              </div>
            `);
          } else if (filter === 6) {
              // Content for filter 7
              filterContainer.html(`
                <!-- Add content for filter 3 as needed -->
                <div class="filtr-item col-sm-2">
                  <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hf04_20150521164114.png" value="animal" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/etc/Animal.png', '6', '160')">
                  <p class="card1-name">동물</p>
                </div>
                <div class="filtr-item col-sm-2">
                  <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hf05_20150521164125.png" value="flower" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/etc/Flower.png', '6', '161')">
                  <p class="card1-name">꽃</p>
                </div>
                <div class="filtr-item col-sm-2">
	                <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hf06_20150521164131.png" value="lawn" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/etc/Lawn.png', '6', '162')">
	                <p class="card1-name">잔디</p>
	              </div>
	              <div class="filtr-item col-sm-2">
	                <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hf08_20150521164143.png" value="stone" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/etc/Stone.png', '6', '163')">
	                <p class="card1-name">돌길</p>
	              </div>
	              <div class="filtr-item col-sm-2">
	                <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hf09_20150521164149.png" value="garden" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/etc/Garden.png', '6', '164')">
	                <p class="card1-name">텃밭</p>
	              </div>
	              <div class="filtr-item col-sm-2">
	                <img src="${cpath}/resources/images/Cate2/hf10s.png" value="cloud" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/etc/Cloud.png', '6', '165')">
	                <p class="card1-name">구름</p>
	              </div>
	              <div class="filtr-item col-sm-2">
	                <img src="${cpath}/resources/images/Cate2/hf09s.png" value="pond" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/etc/Pond.png', '6', '166')">
	                <p class="card1-name">연못</p>
	              </div>
	              <div class="filtr-item col-sm-2">
	                <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hf07_20150521164137.png" value="tree" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/etc/Tree.png', '6', '167')">
	                <p class="card1-name">나무</p>
	              </div>
	              <div class="filtr-item col-sm-2">
	                <img src="${cpath}/resources/images/Cate2/Cate2Thumb_hf04_20150629135729.png" value="none-etc" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/fence/None-fence.png', '6', '168')">
	                <p class="card1-name">없음</p>
	              </div>
              `);
            }else {
      // Default content or content for other filters
      filterContainer.html(`
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_ha01_20150521144446.png" value="none" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/roof-window/none.png', '0', '100')">
          <p class="card1-name">지붕창문없음</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_ha02_20150521152546.png" value="rectangle" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/roof-window/rectangle.png', '0', '101')">
          <p class="card1-name">지붕사각창문</p>
        </div>
        <div class="filtr-item col-sm-2">
          <img src="${cpath}/resources/images/Cate2/Cate2Thumb_ha03_20150521152556.png" value="circle" class="img-fluid mb-2" onclick="showImageOnCanvas('${cpath}/resources/images/Cate3/roof-window/circle.png', '0', '102')">
          <p class="card1-name">지붕원창문</p>
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
	    imageForm.setAttribute("action", "${cpath}/endtest.do?objectType=HOUSE");

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
