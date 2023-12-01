<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Log in (v2)</title>

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

<!-- Additional CSS Files -->
<link rel="stylesheet" href="${cpath}/resources/css/fontawesome.css">
<link rel="stylesheet"
	href="${cpath}/resources/css/templatemo-digimedia-v3.css">
<link rel="stylesheet" href="${cpath}/resources/css/animated.css">
<link rel="stylesheet" href="${cpath}/resources/css/owl.css">

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${cpath}/resources/admin/plugins/fontawesome-free/css/all.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="${cpath}/resources/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${cpath}/resources/admin/dist/css/adminlte.min.css">


<style>
@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, b, input {
	font-family: 'GmarketSansMedium', cursive;
}

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap')
	;

* {
	box-sizing: border-box; /*전체에 박스사이징*/
	outline: none; /*focus 했을때 테두리 나오게 */
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	background-color: #f5f6f7;
	line-height: 1.5em;
	color: #222;
	margin: 0;
}

a {
	text-decoration: none;
	color: #222;
}

/*member sign in*/
.member {
	width: 400px;
	/* border: 1px solid #000; */
	margin: auto; /*중앙 정렬*/
	padding: 0 20px;
	margin-bottom: 60px;
}

.member .logo {
	/*로고는 이미지라 인라인 블록이니까 마진 오토 안됨 블록요소만 됨 */
	display: block;
	margin: 50px auto;
}

.member .field {
	margin: 5px 0; /*상하로 좀 띄워주기*/
}

.member b {
	/* border: 1px solid #000; */
	display: block; /*수직 정렬하기 */
	margin-bottom: 5px;
}

/*input 중 radio 는 width 가 100%면 안되니까 */
.member input:not(input[type=radio]), .member select {
	border: 1px solid #dadada;
	padding: 15px;
	width: 100%;
	margin-bottom: 5px;
}

.member input[type=button], .member input[type=submit] {
	background-color: #2db400;
	color: #fff
}

.member input:focus, .member select:focus {
	border: 1px solid #2db400;
}

.field.birth div { /*field 이면서 birth*/
	display: flex;
	gap: 10px; /*간격 벌려줄때 공식처럼 사용핟나 */
}

/* .field.birth div > * {  gap 사용한거랑 같은 효과를 줌 
    flex:1;
} */
.field.tel-number div {
	display: flex;
}

.field.tel-number div input:nth-child(1) {
	flex: 2;
}

.field.tel-number div input:nth-child(2) {
	flex: 1;
}

.field.gender div {
	border: 1px solid #dadada;
	padding: 15px 5px;
	background-color: #fff;
}

.placehold-text {
	display: block; /*span 으로 감싸서 크기영역을 블록요소로 만들어ㅜ저야한다*/
	position: relative;
	/* border: 1px solid #000; */
}

.placehold-text:before {
	content: "아이디를 입력해주세요";
	position: absolute; /*before은 inline 요소이기 때문에 span으로 감싸줌 */
	top: 13px;
	pointer-events: none; /*자체가 가지고 있는 pointer event 를 없애준다 */
}

.userpw {
	background: url(./images/images2/icon-01.png) no-repeat center right
		15px;
	background-size: 20px;
	background-color: #fff;
}

.userpw-confirm {
	background: url(./images/images2/icon-02.png) no-repeat center right
		15px;
	background-size: 20px;
	background-color: #fff;
}

.member-footer {
	text-align: center;
	font-size: 12px;
	margin-top: 20px;
}

.member-footer div a:hover {
	text-decoration: underline;
	color: #2db400
}

.member-footer div a:after {
	content: '|';
	font-size: 10px;
	color: #bbb;
	margin-right: 5px;
	margin-left: 7px;
	/*살짝 내려가 있기 때문에 위로 올려주기 위해 transform 사용하기*/
	display: inline-block;
	transform: translateY(-1px);
}

.member-footer div a:last-child:after {
	display: none;
}

@media ( max-width :768px) {
	.member {
		width: 100%;
	}
}

.logo2 img {
	max-width: 100%; /* 이미지가 자신의 컨테이너를 넘지 않도록 설정 */
	height: auto; /* 이미지의 높이를 자동으로 조정하여 비율을 유지 */
}

.logo2 {
	margin-left: 10px;
}

input::placeholder {
	font-family: 'GmarketSansMedium', cursive;
}

textarea::placeholder {
	font-family: 'GmarketSansMedium', cursive;
}

.select-label {
	margin-right: 10px; /* 레이블 간격을 조절할 수 있는 마진을 추가 */
}

.my-custom-gap {
	margin-bottom: 20px; /* 원하는 간격(예: 20px)을 설정합니다. */
}

.chip {
	display: inline-block;
	padding: 0 20px;
	height: 30px;
	font-size: 15px;
	line-height: 31px;
	border-radius: 25px;
	background-color: #8f939c;
}

.chip img {
	float: left;
	margin: 0 10px 0 -25px;
	height: 50px;
	width: 50px;
	border-radius: 50%;
}

.closebtn {
	padding-left: 10px;
	color: #888;
	font-weight: bold;
	float: right;
	font-size: 20px;
	cursor: pointer;
}

.closebtn:hover {
	color: #000;
}

.info#info__birth select::-webkit-scrollbar {
	width: 10px;
}

.info#info__birth select::-webkit-scrollbar-thumb {
	background-color: #b6b6b6;
	border-radius: 3px;
}

.info#info__birth select::-webkit-scrollbar-track {
	background-color: #ebe9e9;
	border-radius: 6px;
}

.info#info__birth2 select::-webkit-scrollbar {
	width: 10px;
}

.info#info__birth2 select::-webkit-scrollbar-thumb {
	background-color: #b6b6b6;
	border-radius: 3px;
}

.info#info__birth2 select::-webkit-scrollbar-track {
	background-color: #ebe9e9;
	border-radius: 6px;
}

/*체크박스*/
.checks  {
	position:  relative;
}

.checks input[type="radio"]  {
	  position:  absolute;
	 width:  1px;
	 height:  1px;
	 padding:  0;
	 margin:  -1px;
	 overflow:  hidden;
	 clip: rect(0, 0, 0, 0);
	 border:  0;
	 
}

.checks input[type="radio"] + label  {
	  display:  inline-block;
	 position:  relative;
	 padding-left:  30px;
	 cursor:  pointer;
	 -webkit-user-select:  none;
	 -moz-user-select:  none;
	 -ms-user-select:  none;
	 
}

.checks input[type="radio"] + label:before  {
	  content:   '';
	 position:  absolute;
	 left:  0;
	 top:  -4px;
	 width:  21px;
	 height:  21px;
	 text-align:  center;
	 background:   #fafafa;
	 border:  1px solid  #cacece;
	 border-radius:  100%;
	 box-shadow:  0px 1px 2px rgba(0, 0, 0, 0.05),
		 inset 0px -15px 10px -12px rgba(0, 0, 0, 0.05);
	 
}

.checks input[type="radio"] + label:active:before,  .checks input[type="radio"]:checked + label:active:before 
	{
	  box-shadow:  0 1px 2px rgba(0, 0, 0, 0.05),
		 inset 0px 1px 3px rgba(0, 0, 0, 0.1);
	 
}

.checks input[type="radio"]:checked + label:before  {
	  background:   #E9ECEE;
	 border-color:   #adb8c0;
	 
}

.checks input[type="radio"]:checked + label:after  {
	  content:   '';
	 position:  absolute;
	 top:  1px;
	 left:  5px;
	 width:  13px;
	 height:  13px;
	 background:   #99a1a7;
	 border-radius:  100%;
	 box-shadow:  inset 0px 0px 10px rgba(0, 0, 0, 0.3);
	 
}

.table-bordered td {
	border: 0px;
}

.contact {
	max-width: 600px; /* 컨테이너 최대 너비 설정 */
	margin: 0 auto; /* 가운데 정렬 */
	padding: 20px; /* 여백 추가 */
}

body {
	background-color: #f5f6f7; /* 배경 색상 */
	color: #333; /* 기본 텍스트 색상 */
	font-family: 'Noto Sans KR', sans-serif; /* 기본 폰트 */
}

.member {
	width: 100%;
	max-width: 620px; /* 폼 최대 너비 */
	margin: 40px auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
}

.member h2 {
	text-align: center;
	color: #1579b3; /* 강조 색상 */
}

.member input[type="text"], .member input[type="password"], .member input[type="email"]
	{
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.member input[type="submit"] {
	width: 100%;
	padding: 10px;
	margin-top: 20px;
	border: none;
	border-radius: 4px;
	background-color: #1579b3; /* 버튼 색상 */
	color: white;
	cursor: pointer;
}

.member input[type="submit"]:hover {
	background-color: #135a96;
}

.abc {
	margin-left: -80px;
	color: #b9b6b6;
}

.join {
	color: #000000;
}

.join2 {
	color: #fff;
}

.kakaoIco:hover {
	color: #a99f1e;
	s
}

.kakao-login {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-bottom: 15px;
}

.kakaoIco {
	display: flex;
	align-items: center;
	text-decoration: none;
	color: #d8cc24; /* 텍스트 색상 */
	font-weight: bold;
	font-size: 22px;
}

.kakaoIco img {
	margin-right: 10px; /* 이미지와 텍스트 사이 간격 */
	width: 35px;
}
</style>

</head>

<body>


	<!-- 서브페이지 헤더 -->
	<jsp:include page="../header.jsp" flush="false"></jsp:include>

	<form id="contact" action="" method="post">
		<br>
		<br>
		<br>
		<br>
		<br>
		<form action="/join" method="post">
			<div class="member">
				<table style="text-align: center; border: transparent;"
					class="table table-bordered">
					<!-- 1. 로고 -->
					<a href="${cpath}/index2.do" class="logo2"> <img
						src="${cpath}/resources/images/MomieumLogo5.png" alt="로고 이미지"
						style="width: 180px; height: auto;"></a>
					<!-- 2. 필드 -->
					<tr>
						<td style="width: 110px; color: gray; vertical-align: middle;"><b
							class="join">아이디</b></td>
						<td><input type="text" name="username" id="username"
							class="form-control" maxlength="20" placeholder="아이디를 입력하세요."></td>
					</tr>
					<div class="field">
						<!-- 비밀번호 입력 -->
						<tr>
							<td style="width: 110px; color: gray; vertical-align: middle;"><b
								class="join">비밀번호</b></td>
							<td colspan="2"><input required="required" type="password"
								name="password" onkeyup="passwordCheck()" id="password"
								class="form-control" maxlength="20" placeholder="비밀번호를 입력하세요."></td>
						</tr>
					</div>
					<div class="field">
						<!-- 사용자 이름 -->
						<tr>
							<td style="width: 110px; color: gray; vertical-align: middle;"><b
								class="join">이름</b></td>
							<td colspan="2"><input type="text" id="mem_name"
								name="memName" class="form-control" maxlength="20"
								placeholder="이름을 입력하세요."></td>
						</tr>
					</div>
					<div class="field">
						<tr>
							<td style="width: 110px; color: gray; vertical-align: middle;"><b
								class="join">생년월일</b></td>
							<td colspan="2"><input type="text" id="mem_birthdate"
								name="memBirthdate" class="form-control" maxlength="20"
								placeholder="생년월일을 입력하세요. (ex)1999-12-25"></td>
						</tr>
					</div>
					<div class="field">
						<tr>
							<td style="width: 110px; color: gray; vertical-align: middle;"><b
								class="join">이메일</b></td>
							<td colspan="2"><input type="email" name="memEmail"
								id="mem_email" class="form-control" maxlength="50"
								placeholder="이메일을 입력하세요."></td>
						</tr>
					</div>

					<div class="field">
						<tr>
							<td style="width: 110px; color: gray; vertical-align: middle;"><b
								class="join">전화번호</b></td>
							<td colspan="2"><input type="text" name="memPhone"
								id="mem_phone" class="form-control" maxlength="50"
								placeholder="전화번호를 입력하세요."></td>
						</tr>
					</div>

					<div class="field">
						<tr>
							<td style="width: 110px; color: gray; vertical-align: middle;"><b
								class="join">주소</b></td>
							<td colspan="2"><input type="text" name="memAddr"
								id="mem_addr" class="form-control" maxlength="50"
								placeholder="주소를 입력하세요."></td>
						</tr>
					</div>
					<div class="field">
						<tr>
							<td style="width: 110px; color: gray; vertical-align: middle;"><b
								class="join">프로필</b></td>
							<td colspan="2"><div class="input-group">
									<div class="custom-file">
										<input type="file" class="custom-file-input"
											id="memProfileImg" name="memProfileImg"
											onchange="updateFileName(this)"> <label
											class="custom-file-label" for="memProfileImg"><p
												class="abc">사진을 첨부하세요!</p></label>
									</div>
								</div></td>
						</tr>
					</div>
					<div class="field">
						<tr>
							<td style="width: 110px; color: gray; vertical-align: middle;"><b
								class="join">방문경로</b></td>
							<td colspan="2">
								<!-- 단일 hidden input 필드로 선택된 경로 저장 --> <input type="hidden"
								name="memReference" id="mem_reference" class="form-control">

								<!-- 각 유입경로에 대한 div, onclick 이벤트로 경로 선택 처리 -->
								<div class="chip" onclick="selectReference('블로그')">
									<b class="join2">블로그</b> <span class="closebtn"></span>
								</div>
								<div class="chip" onclick="selectReference('카페')">
									<b class="join2">카페</b> <span class="closebtn"></span>
								</div>
								<div class="chip" onclick="selectReference('지인추천')">
									<b class="join2">지인추천</b> <span class="closebtn"></span>
								</div>
								<div class="chip" onclick="selectReference('인터넷검색')">
									<b class="join2">인터넷검색</b> <span class="closebtn"></span>
								</div>
								<div class="chip" onclick="selectReference('광고')">
									<b class="join2">광고</b> <span class="closebtn"></span>
								</div>
							</td>
						</tr>
					</div>
				</table>

				<!-- 6. 가입하기 버튼 -->
				<div class="input-group">
					<button type="submit" id="form-submit"
						onclick="saveSelectedValues()" class="main-button">
						<b class="join2">회원가입</b>
					</button>
				</div>
		</form>

		<div class="input-group kakao-login">
			<a href="#n" class="kakaoIco"> <img
				src="${cpath}/resources/images/kakaologo3.png" alt="카카오톡으로 로그인"
				title=""> 카카오톡 계정으로 가입하기
			</a>
		</div>
	</form>

	<!-- 7. 푸터 -->
	<div class="member-footer">
		<div>
			<a href="#none">이용약관</a> <a href="#none">개인정보처리방침</a> <a href="#none">책임의
				한계와 법적고지</a> <a href="#none">회원정보 고객센터</a>
		</div>
		<span><a href="#none">MOMIEUM Corp.</a></span>
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
	<script
		src="${cpath}/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="${cpath}/resources/admin/dist/js/adminlte.min.js"></script>

	<script>
		//유입경로 선택 시 hidden input의 값을 업데이트하는 함수
		function selectReference(selectedValue) {
			// hidden input의 값을 업데이트
			document.getElementById('mem_reference').value = selectedValue;

			// 모든 칩에 대해 스타일 변경
			var chips = document.querySelectorAll('.chip');
			chips.forEach(function(chip) {
				if (chip.textContent.includes(selectedValue)) {
					// 선택된 칩에 대한 스타일
					chip.style.backgroundColor = '#8f939c';
					chip.querySelector('b').style.color = 'white';
				} else {
					// 선택되지 않은 칩들에 대한 기본 스타일
					chip.style.backgroundColor = '#f1f1f1';
					chip.querySelector('b').style.color = 'white';
				}
			});
		}
		/* 방문경로 토글 글자, 배경색 변경*/
		function toggleBackgroundColor(chipIndex) {
			var chips = document.querySelectorAll('.chip');
			// 현재 배경 색상이 #f1f1f1이면 #009587로, 그렇지 않으면 #f1f1f1로 변경
			var currentColor = chips[chipIndex].style.backgroundColor;
			chips[chipIndex].style.backgroundColor = (currentColor === 'rgb(241, 241, 241)') ? '#1579b3'
					: '#f1f1f1';

			// b 태그의 색상 변경
			var bTag = chips[chipIndex].querySelector('b');
			bTag.style.color = (currentColor === 'rgb(241, 241, 241)') ? 'white'
					: 'initial';

			// 해당 input hidden을 해제
			var inputHidden = chips[chipIndex]
					.querySelector('input[type="hidden"]');
			inputHidden.value = (currentColor === 'rgb(241, 241, 241)') ? ''
					: 'someValue';
		}
		/**/

		/* 생년월일 설정 */
		function getFormattedDate() {
			const year = document.getElementById('birth-year').value;
			const month = document.getElementById('birth-month').value;
			const day = document.getElementById('birth-day').value;

			if (year !== '출생 연도' && month !== '월' && day !== '일') {
				const formattedDate = `${year}-${month}-${day}`;
				return formattedDate;
			} else {
				return "9999-99-99"; // 혹은 다른 기본값을 반환
			}
		}

		/**/
		const birthYearEl = document.querySelector('#birth-year')
		const birthMonthEl = document.querySelector('#birth-month')
		const birthDayEl = document.querySelector('#birth-day')
		//option 목록 생성 여부 확인
		isYearOptionExisted = false;
		isMonthOptionExisted = false;
		isDayOptionExisted = false;
		birthYearEl.addEventListener('focus', function() {
			// year 목록 생성되지 않았을 때 (최초 클릭 시)
			if (!isYearOptionExisted) {
				isYearOptionExisted = true
				for (var i = 1940; i <= 2023; i++) {
					// option element 생성
					const YearOption = document.createElement('option')
					YearOption.setAttribute('value', i)
					YearOption.innerText = i
					// birthYearEl의 자식 요소로 추가
					this.appendChild(YearOption);
				}
			}
		});
		birthMonthEl.addEventListener('focus', function() {
			// year 목록 생성되지 않았을 때 (최초 클릭 시)
			if (!isMonthOptionExisted) {
				isMonthOptionExisted = true
				for (var i = 1; i <= 12; i++) {
					// option element 생성
					const MonthOption = document.createElement('option')
					MonthOption.setAttribute('value', i)
					MonthOption.innerText = i
					// birthYearEl의 자식 요소로 추가
					this.appendChild(MonthOption);
				}
			}
		});
		birthDayEl.addEventListener('focus', function() {
			// year 목록 생성되지 않았을 때 (최초 클릭 시)
			if (!isDayOptionExisted) {
				isDayOptionExisted = true
				for (var i = 1; i <= 31; i++) {
					// option element 생성
					const DayOption = document.createElement('option')
					DayOption.setAttribute('value', i)
					DayOption.innerText = i
					// birthYearEl의 자식 요소로 추가
					this.appendChild(DayOption);
				}
			}
		});
		/**/

		// 이벤트 리스너 등록
		document.getElementById('mem_birthdate').addEventListener('change',
				function() {
					// 선택된 날짜를 가져오기
					var selectedDate = this.value;

					// 필요한 경우 서버로 전송하기 전에 포맷 변경
					var formattedDate = formatDate(selectedDate);

					// 원하는 작업 수행
					console.log(formattedDate);
				});

		// 날짜 포맷 변경 함수
		function formatDate(inputDate) {
			var date = new Date(inputDate);
			var year = date.getFullYear();
			var month = ('0' + (date.getMonth() + 1)).slice(-2);
			var day = ('0' + date.getDate()).slice(-2);

			return year + '-' + month + '-' + day;
		}

		function updateFileName(inputElement) {
			var fileName = inputElement.files[0].name; // 선택된 파일의 이름
			var label = inputElement.nextElementSibling; // input 요소 뒤에 위치한 label 요소
			label.innerHTML = fileName; // label의 내용을 파일 이름으로 변경
		}
	</script>

</body>
</html>