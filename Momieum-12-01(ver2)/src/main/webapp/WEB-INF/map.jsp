<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/WebPage"
   xmlns:th="http://www.thymeleaf.org"
   xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
   layout:decorate="~{layout/default_layout.html}">
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
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css"
   integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA="
   crossorigin="anonymous" />

<!-- Bootstrap core CSS -->
<link href="${cpath}/resources/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="${cpath}/resources/css/fontawesome.css">
<link rel="stylesheet"
   href="${cpath}/resources/css/templatemo-digimedia-v3.css">
<link rel="stylesheet" href="${cpath}/resources/css/animated.css">
<link rel="stylesheet" href="${cpath}/resources/css/owl.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" rel="stylesheet">
<style>
@font-face {
   font-family: 'GmarketSansMedium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1, p, a, th, span, li
   {
   font-family: 'GmarketSansMedium', cursive;
}

.px-4 {
   padding-right: 20%;
   padding-left: 20%;
}

#mapwrap {
   position: relative;
   overflow: hidden;
}

.category, .category * {
   margin: 0;
   padding: 0;
   color: #000;
}

.category {
   position: absolute;
   overflow: hidden;
   top: 10px;
   left: 10px;
   width: 100px;
   height: 48px;
   z-index: 10;
   border: 1px solid black;
   font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
   font-size: 12px;
   text-align: center;
   background-color: #fff;
}

.category .menu_selected {
   background: #869199;
   color: #fff;
   border-left: 1px solid #915B2F;
   border-right: 1px solid #915B2F;
   margin: 0 -1px;
}

.category li {
   list-style: none;
   float: left;
   width: 50px;
   height: 45px;
   padding-top: 5px;
   cursor: pointer;
}

.category .ico_comm {
   display: block;
   margin: 0 auto 2px;
   width: 22px;
   height: 26px;
   background:
      url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png')
      no-repeat;
}

.category .ico_coffee {
   background-position: -10px 0;
}

.category .ico_store {
   background-position: -10px -36px;
}

.category .ico_carpark {
   background-position: -10px -72px;
}

.search-container {
   display: flex;
   align-items: center;
   margin-top: 20px;
   margin-bottom: 20px;
   font-family: 'GmarketSansMedium', cursive;
}

.search-container input {
   padding: 8px 15px;
   border: 1px solid #ddd;
   border-radius: 4px;
   margin-right: 10px;
   outline: none;
   transition: border-color 0.3s;
}

.search-container input:focus {
   border-color: #aaa;
}

.search-container button {
   padding: 8px 15px;
   border: none;
   background-color: #4b81d2;
   color: white;
   border-radius: 4px;
   cursor: pointer;
   transition: background-color 0.3s;
}

#search-container button:hover {
   background-color: #35b3dc;
}

body {
   opacity: 0; /* 페이지가 로드될 때 투명하게 설정 */
   transition: opacity 0.5s ease-in-out; /* 부드러운 효과를 위한 전환 설정 */
}
</style>
</head>
<body>
   <jsp:include page="header.jsp" flush="false"></jsp:include>

   <div layout:fragment="content">
      <div id="mapwrap"
         class="col-12 d-flex justify-content-center py-2 px-4">
         <div id="map" style="width: 65%; height: 350px; margin-top: 125px;">
            <div class="category">
               <ul>
                  <li id="coffeeMenu" onclick="changeMarker('coffee')"><span
                     class="fas fa-hospital-symbol"></span><br> 상담센터</li>
                  <li id="carparkMenu" onclick="changeMarker('carpark')"><span
                     class="fas fa-parking"></span><br> 주차장</li>
               </ul>
            </div>
         </div>
      </div>

      <div class="d-flex justify-content-center">
         <div class="col-md-8 py-2 px-4">
            <div class="search-container">
               <input type="text" id="searchInput" placeholder="상담센터 검색"
                  onkeypress="handleKeyPress(event)">
               <button onclick="searchTable()">검색</button>
            </div>
            <table class="table manage-candidates-top mb-0">
               <thead>
                  <tr>
                     <th class="text">상담센터명</th>
                     <th class="text">센터번호</th>
                     <th class="text">자주가는장소</th>
                  </tr>
               </thead>
               <tbody id="centerTableBody">
                  <form name="center_list" action="${cpath}/list"
                     class="form-horizontal">
                     <c:forEach items="${list}" var="vo" varStatus="i">
                        <tr class="candidates-list">
                           <td class="title">
                              <!-- 
                           <div class="thumb">
                             <img class="img-fluid" src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="">
                           </div>
                          -->
                              <div class="candidate-list-details">
                                 <div class="candidate-list-info">
                                    <div class="candidate-list-title">
                                       <h5 class="mb-0">
                                          <a href="#"><c:out value="${vo.center_name}" /></a>
                                       </h5>
                                    </div>
                                    <div class="candidate-list-option">
                                       <ul class="list-unstyled">
                                          <!-- <li><i class="fas fa-filter pr-1"></i>Information Technology</li> -->
                                          <li><i class="fas fa-map-marker-alt pr-1"></i> <c:out
                                                value="${vo.center_addr}" /></li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                           </td>
                           <td class="candidate-list-favourite-time text">
                              <!-- <a class="candidate-list-favourite order-2 text-danger" href="#"><i class="fas fa-heart"></i></a> -->
                              <span class="candidate-list-time order-1"><c:out
                                    value="${vo.center_tel}" /></span>
                           </td>
                           <td>
                              <ul class="list-unstyled mb-0 d-flex justify-content-end">
                                 <!-- <li><a href="#" class="text-primary" data-toggle="tooltip" title="" data-original-title="view"><i class="far fa-eye"></i></a></li> -->
                                 <li><a href="#" class="star" onclick="toggleStar(event)"><i
                                       class="far fa-star"></i></a></li>
                                 <!-- <li><a href="#" class="text-danger" data-toggle="tooltip" title="" data-original-title="Devare"><i class="far fa-trash-alt"></i></a></li> -->
                              </ul>
                           </td>
                        </tr>
                     </c:forEach>
                  </form>
               </tbody>
            </table>
         </div>
      </div>
      <script type="text/javascript"
         src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1c02253e0c1064afcbe480200d5113c8"></script>
      <script>
         function toggleStar(event) {
            event.preventDefault();
            const starElement = event.currentTarget.querySelector('i');
            if (starElement.classList.contains('far')) {
               starElement.classList.remove('far');
               starElement.classList.add('fas');
            } else {
               starElement.classList.remove('fas');
               starElement.classList.add('far');
            }
         }

         function handleKeyPress(event) {
            // Enter 키가 눌렸을 때
            if (event.key === "Enter") {
               searchTable();
            }
         }

         function searchTable() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("centerTableBody");
            tr = table.getElementsByTagName("tr");

            // 테이블의 모든 행을 순회합니다
            for (i = 0; i < tr.length; i++) {
               td = tr[i].getElementsByTagName("td")[0]; // 상담센터명 컬럼
               if (td) {
                  txtValue = td.textContent || td.innerText;
                  if (txtValue.toUpperCase().indexOf(filter) > -1) {
                     tr[i].style.display = "";
                  } else {
                     tr[i].style.display = "none";
                  }
               }
            }
         }

         // navigator.geolocation logic -> 현재 위.경도를 가져옴 -> 못가져오면 기본 값으로 map을 생성함

         var markers = [];

         var mapContainer = document.getElementById('map'), // 지도를 표시할 div
         mapOption = {
            center : new kakao.maps.LatLng(35.16617165258942,
                  126.86227167466208), // 지도의 중심좌표
            level : 8, // 지도의 확대 레벨
            mapTypeId : kakao.maps.MapTypeId.ROADMAP
         // 지도종류
         };

         // 지도를 생성한다
         var map = new kakao.maps.Map(mapContainer, mapOption);

         // 커피숍 마커가 표시될 좌표 배열입니다
         var coffeePositions = [
               new kakao.maps.LatLng(35.15259535, 126.9012064),
               new kakao.maps.LatLng(35.1541526, 126.8884127),
               new kakao.maps.LatLng(35.1647499, 126.8810106),
               new kakao.maps.LatLng(35.1532243, 126.8423383),
               new kakao.maps.LatLng(35.4136389, 127.3496151),
               new kakao.maps.LatLng(35.152758, 126.8449919),
               new kakao.maps.LatLng(37.3598456, 126.8145635),
               new kakao.maps.LatLng(35.9397814, 128.5597379),
               new kakao.maps.LatLng(37.3598456, 126.8145635),
               new kakao.maps.LatLng(35.1541526, 126.8884127),
               new kakao.maps.LatLng(35.15259535, 126.9012064),
               new kakao.maps.LatLng(35.1643042, 126.851776),
               new kakao.maps.LatLng(35.1242195, 126.8751119),
               new kakao.maps.LatLng(35.9397814, 128.5597379),
               new kakao.maps.LatLng(37.3598456, 126.8145635),
               new kakao.maps.LatLng(37.4264102, 127.2575353),
               new kakao.maps.LatLng(35.1691155, 126.8235075),
               new kakao.maps.LatLng(35.1821235, 126.8276537),
               new kakao.maps.LatLng(35.1842624, 126.8343993),
               new kakao.maps.LatLng(35.1542122, 126.8152185),
               new kakao.maps.LatLng(35.15621, 128.55081),
               new kakao.maps.LatLng(35.1273981, 126.792415),
               new kakao.maps.LatLng(37.4264102, 127.2575353),
               new kakao.maps.LatLng(35.1842624, 126.8343993),
               new kakao.maps.LatLng(35.1901594, 126.8467735),
               new kakao.maps.LatLng(35.2141311, 126.8385309),
               new kakao.maps.LatLng(37.6289, 127.0567),
               new kakao.maps.LatLng(35.1691155, 126.8235075),
               new kakao.maps.LatLng(35.1933058, 126.821099),
               new kakao.maps.LatLng(35.5135176, 126.8973672),
               new kakao.maps.LatLng(35.1933058, 126.821099),
               new kakao.maps.LatLng(35.1901594, 126.8467735),
               new kakao.maps.LatLng(39.1663696, 127.4070816),
               new kakao.maps.LatLng(37.6289, 127.0567),
               new kakao.maps.LatLng(35.1704519, 126.8108154),
               new kakao.maps.LatLng(35.1901594, 126.8467735),
               new kakao.maps.LatLng(39.1663696, 127.4070816),
               new kakao.maps.LatLng(35.1542122, 126.8152185),
               new kakao.maps.LatLng(35.1315928, 126.9203009),
               new kakao.maps.LatLng(35.1234765, 126.9131927),
               new kakao.maps.LatLng(40.0447187, 125.2101625) ];

         var coffeeNames = [ "무지개심리상담센터", "미담심리상담센터", "광주심리상담센터", "광주미술심리",
               "노리심리인지센터", "소망심리센터", "온나심리상담센타", "한국군전문상담센터", "말할수있어요",
               "라온상담센터", "빛나리심리상담센터", "마음숲심리상담센터", "어세스타 광주센터",
               "오늘마음상담센터", "도담도란심리상담", "글로리아심리상담", "화수분진로진학", "마음벗심리상담센터",
               "은하수심리상담센터", "광주전남심리상담", "맑은숲언어심리상담", "똑똑청각언어심리",
               "온도심리상담센터", "기쁨언어청각심리", "밝은마음아동발달", "가족상담치유센터",
               "두드림심리상담센터", "마음과성장심리상담", "늘푸른심리치료센터", "조경선언어특수교육",
               "프롬광주언어심리", "홀트광주심리상담", "플로어타임발달센터", "밝은마음가족상담",
               "윤미이상담치료센터", "마음소리심리상담", "더봄심리상담센터", "하모니예술심리치유",
               "미래학습발달상담",

         // 나머지 상담센터 이름 추가...
         ];

         // 주차장 마커가 표시될 좌표 배열입니다
         var carparkPositions = [

         ];

         var markerImageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png'; // 마커이미지의 주소입니다. 스프라이트 이미지 입니다
         coffeeMarkers = [], // 커피숍 마커 객체를 가지고 있을 배열입니다
         storeMarkers = [], // 편의점 마커 객체를 가지고 있을 배열입니다
         carparkMarkers = []; // 주차장 마커 객체를 가지고 있을 배열입니다

         createCoffeeMarkers(); // 커피숍 마커를 생성하고 커피숍 마커 배열에 추가합니다
         createCarparkMarkers(); // 주차장 마커를 생성하고 주차장 마커 배열에 추가합니다

         changeMarker('coffee'); // 지도에 커피숍 마커가 보이도록 설정합니다    

         // 마커이미지의 주소와, 크기, 옵션으로 마커 이미지를 생성하여 리턴하는 함수입니다
         function createMarkerImage(src, size, options) {
            var markerImage = new kakao.maps.MarkerImage(src, size, options);
            return markerImage;
         }

         // 좌표와 마커이미지를 받아 마커를 생성하여 리턴하는 함수입니다
         function createMarker(position, image) {
            var marker = new kakao.maps.Marker({
               position : position,
               image : image
            });

            return marker;
         }
         var infowindow = new kakao.maps.InfoWindow(); // 전역 인포윈도우 인스턴스  
         // 커피숍 마커를 생성하고 커피숍 마커 배열에 추가하는 함수입니다
         function createCoffeeMarkers() {

            for (var i = 0; i < coffeePositions.length; i++) {

               var marker = new kakao.maps.Marker({
                     position: coffeePositions[i]
                 });
                 
                 // 마커에 mouseover 이벤트를 등록합니다
                 (function(marker, name) {
                     kakao.maps.event.addListener(marker, 'mouseover', function() {
                         displayInfowindow(marker, name);
                     });

                     // 마커에 mouseout 이벤트를 등록합니다
                     kakao.maps.event.addListener(marker, 'mouseout', function() {
                         infowindow.close();
                     });

                 })(marker, coffeeNames[i]);

                 // 생성된 마커를 커피숍 마커 배열에 추가합니다
                 coffeeMarkers.push(marker);
             }
         }
         // 인포윈도우를 표시하는 함수
         function displayInfowindow(marker, name) {
            infowindow.setContent(name);
            infowindow.open(map, marker);
         }
         // 커피숍 마커들의 지도 표시 여부를 설정하는 함수입니다
         function setCoffeeMarkers(map) {
            for (var i = 0; i < coffeeMarkers.length; i++) {
               coffeeMarkers[i].setMap(map);
            }
         }

         // 편의점 마커를 생성하고 편의점 마커 배열에 추가하는 함수입니다
         function createStoreMarkers() {
            for (var i = 0; i < storePositions.length; i++) {

               var imageSize = new kakao.maps.Size(22, 26), imageOptions = {
                  spriteOrigin : new kakao.maps.Point(10, 36),
                  spriteSize : new kakao.maps.Size(36, 98)
               };

               // 마커이미지와 마커를 생성합니다
               var markerImage = createMarkerImage(markerImageSrc,
                     imageSize, imageOptions), marker = createMarker(
                     storePositions[i], markerImage);

               // 생성된 마커를 편의점 마커 배열에 추가합니다
               storeMarkers.push(marker);
            }
         }

         // 편의점 마커들의 지도 표시 여부를 설정하는 함수입니다
         function setStoreMarkers(map) {
            for (var i = 0; i < storeMarkers.length; i++) {
               storeMarkers[i].setMap(map);
            }
         }

         // 주차장 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
         function createCarparkMarkers() {
            for (var i = 0; i < carparkPositions.length; i++) {

               var imageSize = new kakao.maps.Size(22, 26), imageOptions = {
                  spriteOrigin : new kakao.maps.Point(10, 72),
                  spriteSize : new kakao.maps.Size(36, 98)
               };

               // 마커이미지와 마커를 생성합니다
               var markerImage = createMarkerImage(markerImageSrc,
                     imageSize, imageOptions), marker = createMarker(
                     carparkPositions[i], markerImage);

               // 생성된 마커를 주차장 마커 배열에 추가합니다
               carparkMarkers.push(marker);
            }
         }

         // 주차장 마커들의 지도 표시 여부를 설정하는 함수입니다
         function setCarparkMarkers(map) {
            for (var i = 0; i < carparkMarkers.length; i++) {
               carparkMarkers[i].setMap(map);
            }
         }

         // 카테고리를 클릭했을 때 type에 따라 카테고리의 스타일과 지도에 표시되는 마커를 변경합니다
         function changeMarker(type) {

            var coffeeMenu = document.getElementById('coffeeMenu');
            var carparkMenu = document.getElementById('carparkMenu');

            // 커피숍 카테고리가 클릭됐을 때
            if (type === 'coffee') {

               // 커피숍 카테고리를 선택된 스타일로 변경하고
               coffeeMenu.className = 'menu_selected';

               // 편의점과 주차장 카테고리는 선택되지 않은 스타일로 바꿉니다
               carparkMenu.className = '';

               // 커피숍 마커들만 지도에 표시하도록 설정합니다
               setCoffeeMarkers(map);
               setCarparkMarkers(null);

            } else if (type === 'carpark') { // 주차장 카테고리가 클릭됐을 때

               // 주차장 카테고리를 선택된 스타일로 변경하고
               coffeeMenu.className = '';
               carparkMenu.className = 'menu_selected';

               // 주차장 마커들만 지도에 표시하도록 설정합니다
               setCoffeeMarkers(null);
               setCarparkMarkers(map);
            }
         }

         // 페이지 로드 시 상담센터 마커를 활성화
         document.addEventListener('DOMContentLoaded', function() {
            createCoffeeMarkers();
            changeMarker('coffee');
         });

         window.addEventListener('load', function() {
            document.body.style.opacity = '1'; /* 페이지 로드 완료 시 투명도를 1로 변경 */
         });
      </script>
   </div>

</body>
</html>