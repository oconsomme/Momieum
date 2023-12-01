<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!-- 회원가입 jsp 파일 :  userstep개인정보동의 => join회원가입 -->    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>AdminLTE 3 | Log in (v2)</title>
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
	

	<style type="text/css">
	@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2 , .h2, h1, .h1, p, a,span,strong, label {
font-family : 'GmarketSansMedium', cursive;
}

		element.style {
		}
		@media (max-width: 800px)
		#con .txt-from-box {
		    padding: 20px;
		}
		#con .txt-from-box {
		    margin-top: 10px;
		    padding: 40px;
		    border: 1px solid #ebebeb;
		    line-height: 1.5;
		    background: #fafafa;
		    font-size : 15px;
		   
		}
		header, nav, aside, section, address, article, footer, hgroup, div {
		    display: block;
		}
		form, div, p, span, ul, li, dl, dt, textarea, h1, h2, h3, h4 {
		    margin: 0px;
		    padding: 0px;
		    word-break: keep-all;
		}
		* {
		    line-height: 1.3;
		}
		* {
		    line-height: 1.3;
		}
		* {
		    max-height: 1000000px;
		}
		* {
		    -webkit-text-size-adjust: 100%;
		    -moz-text-size-adjust: 100%;
		    -ms-text-size-adjust: 100%;
		}
		* {
		    box-sizing: border-box;
		    -webkit-box-sizing: border-box;
		    -moz-box-sizing: border-box;
		}
		* {
		    margin: 0px;
		    padding: 0px;
		}
		user agent stylesheet
		div {
		    display: block;
		}
		body {
		    line-height: 1;
		}
		html, body, table, input, textarea, select, h1, h2, h3, h4 {
		    color: #000;
		    font-size: 15px;
		    font-family: 'Noto Sans KR', sans-serif;
		}
		
#con .privacy-box .view-btn {
    width: 85px;
    height: 28px;
    margin-left: 20px;
    border: none;
    font-size: 14px;
    font-weight: 500;
    color: #fff;
    text-align: center;
    background: #0c87ed;
    vertical-align: baseline;
    cursor: pointer;
    margin-left: 290px;
    margin-top: 10px;
}

#con .txt-from-box .ok-btn {
    display: block;
    width: 88px;
    height:28px;
    border: none;
    font-size: 15px;
    color: #fff;
    border-radius: 25px;
    background: #0c87ed;
    font-weight: 500;
    cursor: pointer;
    margin-left : 245px;
}

@media (max-width: 800px)
#con .txt-info-box {
    padding: 20px;
    font-size: 13px;
}
#con .txt-info-box {
    margin: 20px 0;
    padding: 30px;
    font-size: 15px;
    color: #888;
    border: 1px solid #ebebeb;
    line-height: 1.5;
    background: #fff;
    font-weight: 400;
}


@media (max-width: 800px)
#con .ok-btn-02 {
    height: 34px;
    margin-top: 20px;
}

#con .ok-btn-02 {
    display: block;
    width: 300px;
    height: 55px;
    margin: 60px auto 0;
    border: none;
    font-size: 14px;
    color: #fff;
    background: #0c87ed;
    font-weight: 400;
    cursor: pointer;
}

.mycenter{
  display: flex;
    justify-content: center;
    text-align: center;
}

body {
    opacity: 0; /* 페이지가 로드될 때 투명하게 설정 */
    transition: opacity 0.5s ease-in-out; /* 부드러운 효과를 위한 전환 설정 */
}


	</style>


    <script>

    </script>	  
</head>

<body>


<!-- 서브페이지 헤더 -->
<jsp:include page="../headersub.jsp" flush="false"></jsp:include>



<div id="about">
<div class="container">

<div id="content">

    <ul class="quick">
        
    </ul>

    <div id="con">
        <div class="con-area">

            <div class="section" id="person_box">
            <div class="section-heading">
            
                <div class="privacy-box">
                    <h3>맘이음은?</h3>

                    <strong class="mycenter">
                        "그림으로 아이의 마음을 읽고 나의 양육스트레스를 알아보는 거에요."<br>
                        "궁금한 나와 아이의 마음을 확인할 수 있어요"<br><br>
                    </strong>
                    <p class="re-con-01">
                        <span class="color-05">맘이음</span>는 부모님의 양육스트레스와 아동의 정서ㆍ행동을 관찰하고 이에 대한 정보를 알려드림으로써 양육에 대한 스트레스를 경감하고 아동의 행동을 이해할 수 있도록 돕는
                        <span class="color-03">미리 미리 점검하는 마음건강 자가테스트 모바일 웹 서비스</span> 입니다.<br><br>
                        ※ ㈜ 내가그린기린그림는 원활한 서비스 이용 등을 위해 아래와 같은 개인 정보를 수집 하고 있습니다.
                    </p>

                    <strong class="mycenter">개인정보제공ㆍ활용동의서</strong>
                    <span onclick="javascript:view_text()" style="cursor:pointer">
                     <input type="button" class="view-btn" style="border-radius:20px;" id="btn_view_text" value=" 내용 보기 ">
                     </span>

                    <div id="private_text" style="display:none">
					
                        <p class="text-01">(주)내가그린기린그림 (이하 "회사"라 함)는 개인정보보호법, 통신비밀보호법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 정보통신서비스 제공자가 준수하여야 할 관련 법령상의 개인정보보호 규정을 준수하고, 관련 법령에 의거한 개인정보처리방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다. 회사의 개인정보처리방침은 다음과 같습니다.</p>

                        <p class="text-01 bmar_10"><br>4. 자료제공 업무처리 기준 </p>
                        <ul class="list-01">
                            <li>
                                <p>가. 업무처리절차</p>
                                <p>- 상기 기준에 의하여 자료제공여부를 판단 후 처리하며, 개인정보보호책임자의 결재를 득한 후 결과에 따라 처리</p>
                                <p>- 개인정보 자료 제공은 부득이한 경우를 제외하고는 문서회신을 원칙으로 하며 다음 사항을 반드시 기록</p>
                                <p class="in">1) 이용목적, 이용방법, 이용기간, 이용형태의 제한사항</p>
                                <p class="in">2) 개인정보의 안전성 확보를 위해 필요한 구체적인 조치사항 </p>
                            </li>

                            <li>
                                <p>나. 자료제공 방법</p>
                                <p>- 우편을 이용하는 경우 내용증명으로 발송</p>
                                <p>- e-mail 에 의한 자료제공시 업무용 컴퓨터에서 사용하는 문서작성 도구의 자체 암호화 기능 등을 통하여 개인정보 파일을 암호화하여 제공</p>
                           </li>
                        </ul>

                    </div> <!-- end div id:private_text 개인정보제공ㆍ활용동의서 -->
                  </div>
                </div>
                <br>
                <strong class="mycenter">수집ㆍ이용활용ㆍ제공 등의 동의여부</strong>
                <div class="txt-from-box">
                    <p>위와 같이 개인정보를 수집ㆍ이용활용ㆍ제공하는데 동의하십니까?</p>
                    <input type="checkbox" name="chk_info" value="Y" id="chk_y" onclick="chk_info('y')"><label for="chk_y">&nbsp;동의함</label> &nbsp; &nbsp; &nbsp;
                    <input type="checkbox" name="chk_info" value="N" id="chk_n" onclick="chk_info('n')"><label for="chk_n">&nbsp;동의하지 않음</label>
                    <p>동의 내용을 숙지하였음을 확인하셨습니까?</p>
                    <input type="checkbox" name="chk_info2" value="Y" id="chk_y2" onclick="chk_info2('y')"><label for="chk_y2">&nbsp;네</label> &nbsp; &nbsp; &nbsp;
                    <input type="checkbox" name="chk_info2" value="N" id="chk_n2" onclick="chk_info2('n')"><label for="chk_n2">&nbsp;아니오</label>

                    <span onclick="javascript:view_request_text()" style="cursor:pointer"><input type="button" class="ok-btn" id="btn_view_request_text" value="동의하기"></span>

                    <div id="request_text_box" style="display:none">
                        <div class="txt-info-box">
                            <strong>필독 사항</strong>
                            <p>맘이음은 그림분석 이론을 기반으로 하고 있으나, 한 장의 그림만으로는 아동의 내면세계를 모두 알 수는 없습니다. 맘이음은 오프라인 상담과 같은 결과는 기대 하실 수 없습니다.
                            <br><br>
                            다만, 맘이음은 스크리닝용으로써 일상에서 가볍게, 상처받지 않고, 남의 눈치 보지 않고, 경제적이며 쉽고 편리하게 집에서 아동과 부모자신의 현재 정서현황에 대해 점검하고 적절히 대응하실 수 있도록 돕는 자가점검 서비스임을 알려드립니다.</p>
                        </div>
                    </div>
                </div>
                <input type="button" onclick="join()" class="ok-btn-02" style="display:none" id="btn_next" value=" 확 &nbsp; 인 ">
                <a></a>
            </div>
            <br>
            <div class="section" id="reg_box" style="display:none">
                <div class="form-box">
                    <div class="h-box">
                        <strong class="title">프로그램 신청서</strong>
                    </div>
                    <form action="https://www.p9net.org/gms/userstep" name="gms_user_add" id="gms_user_add" method="post" accept-charset="utf-8">
                    <input type="hidden" name="csrf_test_name_trees_and_forests" value="375614a870c63b3110dbd3eb51e114b9">                                          
                    <input type="hidden" name="child_name" id="child_name">
                    <input type="hidden" name="parents_hp" id="parents_hp">
                    
                    <div class="con-box">
                        <ul class="form-list-02">
                            <li><!-- 아동 나이 -->
                                <ul class="item-list">
                                    <li class="li01">
                                        <label class="label">아동 나이 (필수)</label>
                                        <div class="form">
                                            <select name="child_age" id="child_age" class="select" readonly="">
                                                <option value="">선택하기</option>
                                                <option value="5">5세(만 3세)</option>
                                                <option value="6">6세(만 4세)</option>
                                                <option value="7">7세(만 5세)</option>
                                            </select>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li id="li_5" style="display: none;">
                                <ul class="list-02 ul-fl topic">
                                    <li>
                                        <strong class="sub-tit">5세 주제</strong>
                                        <p class="topic-01">아이에게<strong class="color-02">“사람 한 사람을 그려주세요.”</strong>라고 정확히 말해 주세요.</p>
                                    </li>
                                    <li>
                                        <figure class="img-mar">
                                            <img src="/p9net-resources/resources/images/sub/sub03/5age.jpg" alt="">
                                        </figure>
                                    </li>
                                    <li class="list-txt01">
                                        <p class="topic-02">
                                            <span class="color-01">지정된 그림도구</span>외에<span class="color-01"> 다른 그림도구</span>를 함께 사용할 시 <span class="color-01">다른 결과</span>가 나올 수 있습니다.
                                        </p>
                                        <p class="topic-02">
                                            * 아이가 그림 그리는 동안 하는 모든 질문에는<span class="color-02">“마음대로 해~”</span> 라고 말해주세요.
                                        </p>
                                    </li>
                                </ul>
                            </li>

                            <li id="li_6" style="display: none;">
                                <ul class="list-02 ul-fl topic">
                                    <li>
                                        <h3 class="con-tit-04" style="font-weight:500;">
                                            <strong class="sub-tit">6세 주제</strong>
                                            <p>아이에게<strong class="color-02">“집, 나무, (무언가를 하는) 사람을 그려주세요.”</strong>라고 정확히 말해 주세요.</p>
                                        </h3>
                                    </li>
                                    <li>
                                        <figure class="img-mar">
                                            <img src="/p9net-resources/resources/images/sub/sub03/6age.jpg" alt="">
                                        </figure>
                                    </li>
                                    <li class="list-txt01">
                                        <strong>지정된 그림도구</strong>외에<strong> 다른 그림도구</strong>를 함께 사용할 시 <strong>다른 결과</strong>가 나올 수 있습니다.
                                    </li>
                                </ul>
                                <ul class="list-02 lpad_20 tmar_5">
                                    <li class="list-txt02 tmar_0">* 아이가 그림 그리는 동안 하는 모든 질문에는<br><strong>“마음대로 해~”</strong> 라고 말해주세요.</li>
                                </ul>
                            </li>

                            <li id="li_7" style="display: none;">
                                <ul class="list-02 ul-fl topic">
                                    <li>
                                        <h3 class="con-tit-04" style="font-weight:500;">
                                            <strong class="sub-tit">7세 주제</strong>
                                            <p>아이에게<strong class="em2">“무언가를 하는 우리가족을 그려주세요.”</strong>라고 정확히 말해 주세요.</p>
                                        </h3>
                                    </li>
                                    <li>
                                        <figure class="img-mar">
                                            <img src="/p9net-resources/resources/images/sub/sub03/7age.jpg" alt="">
                                        </figure>
                                    </li>
                                    <li class="list-txt01">
                                        <strong>지정된 그림도구</strong>외에<strong> 다른 그림도구</strong>를 함께 사용할 시 <strong>다른 결과</strong>가 나올 수 있습니다.
                                    </li>
                                </ul>
                                <ul class="list-02 lpad_20 tmar_5">
                                    <li class="list-txt02 tmar_0">* 아이가 그림 그리는 동안 하는 모든 질문에는<br><strong>“마음대로 해~”</strong> 라고 말해주세요.</li>
                                </ul>
                            </li>

                            <li><!-- 아동 성별 -->
                                <ul class="item-list">
                                    <li class="li01">
                                        <label class="label">아동 성별 (필수)</label>
                                        <div class="form">
                                            <select name="child_sex" id="child_sex" class="select" readonly="">
                                                <option value="">선택하기</option>
                                                <option value="M">남</option>
                                                <option value="F">여</option>
                                            </select>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li><!-- 보호자 성명 -->
                                <ul class="item-list">
                                    <li class="li01">
                                        <!-- <label class="label">보호자 성명 (필수)</label> -->
                                        <label class="label">아동과의 관계 (필수)</label>
                                        <div class="form">
                                            <!-- <input type="text" class="intxt" name="parents_name" id="parents_name" maxlength="50" required=""> -->
                                            <select name="child_relation" id="child_relation" class="select" readonly="">
                                                <option value="">선택하기</option>
                                                <option value="부">부</option>
                                                <option value="모">모</option>
                                                <option value="(외)조부">(외)조부</option>
                                                <option value="(외)조모">(외)조모</option>
                                                <option value="이모">이모</option>
                                                <option value="고모">고모</option>
                                                <option value="(외)삼촌">(외)삼촌</option>
                                                <option value="기타">기타</option>
                                            </select>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li><!-- 아동 별명 -->
                                <ul class="item-list">
                                    <li class="li01">
                                        <!-- <label class="label">아동 별명 (선택 or 입력)</label> -->
                                        <label class="label">아동 별명 (필수)</label>
                                        <div class="form">
                                            <!-- <input type="text" class="intxt" name="parents_name" id="parents_name" maxlength="50" required=""> -->
                                            <select name="child_nickname" id="child_nickname" class="select" readonly="">
                                                
                                            </select>
                                        </div>
                                        <div class="form" style="display: none;">
                                            <input type="text" class="intxt" style="width: 150px;" id="input_nickname" maxlength="50" required="">

                                        </div>
                                    </li>
                                </ul>
                            </li>

                            <li id="select_area" style="display: none;">
                                <label class="label">거주지역 (필수)</label>
                                <div class="form">
                                    <select name="sc_area_first" id="sc_area_first" class="select" >
                                        <option value="">-- 시/도 선택 --</option>
                                        <option value="서울특별시">서울특별시</option>
                                        <option value="부산광역시">부산광역시</option>
                                        <option value="대구광역시">대구광역시</option>
                                        <option value="인천광역시">인천광역시</option>
                                        <option value="광주광역시">광주광역시</option>
                                        <option value="대전광역시">대전광역시</option>
                                        <option value="울산광역시">울산광역시</option>
                                        <option value="세종특별자치시">세종특별자치시</option>
                                        <option value="경기도">경기도</option>
                                        <option value="강원도">강원도</option>
                                        <option value="충청북도">충청북도</option>
                                        <option value="충청남도">충청남도</option>
                                        <option value="전라북도">전라북도</option>
                                        <option value="전라남도">전라남도</option>
                                        <option value="경상북도">경상북도</option>
                                        <option value="경상남도">경상남도</option>
                                        <option value="제주특별자치도">제주특별자치도</option>
                                    </select>
                                    <br><br>
                                    <select name="sc_area_middle" id="sc_area_middle" class="select">
                                        <option value="">-- 시군구 선택 --</option>
                                    </select>
                                </div>
                            </li>
                                                                                        <!-- E-mail : -->

                            <input type="hidden" name="parents_email" id="parents_email">
                            <input id="gr_version" type="text" style="display: none;">
                        </ul>
                    </div>
                    </form>                
                </div>

                <div class="btn-wrap center">
                    <input type="button" class="ok-btn-02" id="btn_add" value=" 신 &nbsp; 청 ">
                </div>

            </div>
        </div>
    </div>
</div>
</div>
</div>
<p style="padding: 30px;"></p>

<script type="text/javascript">
    $(document).ready ( function() {
        get_version();

        // 군분류 최신 버전 가져오기
        function get_version(){
            var sendData = {};
            
            //JSON
            var url = url_json + "user/select_version";

            JSON_POST(url, sendData, false, sessionStorage.getItem(token_yj_rfms), function (result) {
                if (result.messageinfo.state == "ok") {
                    var getData = result.messageinfo.message;
                    document.getElementById("gr_version").value = getData[0].gr_ver;

                } else {
                    alert("군분류 최신 버전 가져오기 실패");
                }
            });
        }

        check_area();
        // 거주지역선택 활성화 체크
        function check_area(){
            // 검사신청하기에서 선택한 사업정보 가져오기
            var apply_list_data = sessionStorage.getItem("apply_list_data");
            if(apply_list_data){
                apply_list_data = JSON.parse(b64DecodeUnicode(apply_list_data));

                if(apply_list_data.bt_no){
                    // 무료검사
                    document.getElementById("select_area").style.display = "none";
                }
                else{
                    // 유료검사
                    if(apply_list_data.name == "유료 서비스"){
                        document.getElementById("select_area").style.display = "";
                    }
                }
            }
                
        }
        
        // 사용자 확인
        var getToken = sessionStorage.getItem("token_yj_rfms");
    
        if(getToken){
            var getUserInfo = parseJwt(getToken);
            if(getUserInfo.ur_level == 2){
                // 일반회원 일 때(개인 or 기관 소속)
                $('#person_box').hide();
                $('#reg_box').show();
                $("html, body").scrollTop(0);
            }

            // 아동 닉네임 가져오기
            var sendData = {
                id : getUserInfo.ur_userid
            };
            
            // 사용자db에서 닉네임 가져오기
            //JSON
            var url = url_json + "user/user_info_nickname";

            JSON_POST(url, sendData, false, sessionStorage.getItem(token_yj_rfms), function (result) {
                if (result.messageinfo.state == "ok") {
                    var getData = result.messageinfo.message[0];

                    var selectElement = document.getElementById('child_nickname');
                    $('#child_nickname').empty();

                    var opt = document.createElement('option');
                        opt.value = "";
                        opt.innerHTML = "선택하기";
                        selectElement.appendChild(opt);

                    if(getData.ur_child_nickname && getData.ur_child_nickname != ""){
                        if(getData.ur_child_nickname.includes("!%")){
                            // 닉네임 다수
                            var nickname_split = getData.ur_child_nickname.split("!%");
                            for(var data of nickname_split){
                                opt = document.createElement('option');
                                opt.value = data;
                                opt.innerHTML = data;
                                selectElement.appendChild(opt);
                            }
                        }
                        else{
                            // 닉네임 하나
                            opt = document.createElement('option');
                            opt.value = getData.ur_child_nickname;
                            opt.innerHTML = getData.ur_child_nickname;
                            selectElement.appendChild(opt);
                        }
                    }
                    else{
                        alert("마이페이지에서 자녀닉네임을 추가해 주세요.")
                    }
                } else {
                    // JSON_POST_TEST();
                    if(result.messageinfo.message == "요청한 데이터가 없습니다."){

                    }
                    else{
                        alert("아동 닉네임 가져오기 실패 : "  + result.messageinfo.message);
                    }
                }
            });

        }

        // 아동 닉네임 선택 이벤트
        document.getElementById('child_nickname').addEventListener('change', function() {
            // 닉네임 입력 초기화
            document.getElementById('input_nickname').value = "";

        }, false);

        // 아동 닉네임 입력 이벤트
        document.getElementById('input_nickname').addEventListener('keydown', function() {
            // 닉네임 선택 초기화
            document.getElementById('child_nickname').value = "";

        }, false);

        // 신청 버튼
        $('#btn_add').click(function () {
            if ( check_form() ) { 
                // JSON_POST_TEST();
                // return;
                // 검사신청하기에서 선택한 사업정보 가져오기
                var apply_list_data = sessionStorage.getItem("apply_list_data");
                if(apply_list_data){
                    apply_list_data = JSON.parse(b64DecodeUnicode(apply_list_data));

                    if(apply_list_data.bt_no){
                        // 무료검사
                        free_inspection(apply_list_data);
                    }
                    else{
                        // 유료검사
                        if(apply_list_data.name == "유료 서비스"){
                            paid_inspection();
                        }
                    }
                }
                else{
                    alert("마이페이지>검사신청하기에서 사업을 선택해 주세요.");
                }
                                
            }
        });

        // 무료검사
        function free_inspection(apply_list_data){
            var selectAge = document.getElementById("child_age");
            var selectSex = document.getElementById("child_sex");
            var selectRelation = document.getElementById("child_relation");
            var selectNickname = document.getElementById("child_nickname").value;
            if(selectNickname == ""){
                selectNickname = document.getElementById("input_nickname").value;
            }
            
            var getToken = sessionStorage.getItem("token_yj_rfms");
    
            if(getToken){
                var getUserInfo = parseJwt(getToken);
                var today = new Date();
                
                var type = "";
                if(apply_list_data.org_type){
                    if(apply_list_data.org_type == "A"){
                        type = " 유치원";
                    }
                    else if(apply_list_data.org_type == "B"){
                        type = " 어린이집";
                    }
                    else if(apply_list_data.org_type == "C"){
                        type = " 기타";
                    }
                }
                
                // jit_consult table에 저장할 데이터 생성(관찰관리에 사용자 등록)
                var sendData = {
                    no: 0,
                    
                    cs_bt_no : apply_list_data.bt_no,                                               // 사업명 고유번호
                    cs_orgs_no : apply_list_data.org_no,                                            // 기관명 고유번호
                    cs_ur_no : getUserInfo.ur_no,                                                   // 사용자 고유번호
                    cs_userid : getUserInfo.ur_userid,                                              // 사용자 아이디
                    cs_child_name : getUserInfo.ur_name,                                            // 사용자 이름
                    cs_child_age : selectAge.options[selectAge.selectedIndex].value,                // 아동나이
                    cs_child_sex : selectSex.options[selectSex.selectedIndex].value,                // 아동성별
                    cs_ur_relation : selectRelation.options[selectRelation.selectedIndex].value,    // 관계
                    cs_child_nickname : selectNickname,                                             // 아동 닉네임
                    cs_ur_hp : getUserInfo.ur_hp,                                                   // 연락처
                    cs_org_name : apply_list_data.org_name + type,                                  // 기관명
                    cs_bt_name : apply_list_data.bt_name,                                           // 사업명
                    cs_request_dt : moment(today).format("YYYY-MM-DD HH:mm:ss"),                    // 상담신청일
                    cs_groups_ver : document.getElementById("gr_version").value,                    // 군분류 분석 버전
                    cs_process_status: "13",                                                        // 상담진행상태: 크롭완료(11), 작성완료(12), 분석대기(13), 최종완료(14)
                }
                
                var url = url_json + "consult/insert_consult";

                JSON_POST(url, sendData, false, sessionStorage.getItem(token_yj_rfms), function (result) {
                    if (result.messageinfo.state == "ok") {
                        var getID = result.messageinfo.message;
                        
                        var row_data = {
                            no: getID.insertId,
                            name: sendData.cs_child_name,
                            age: sendData.cs_child_age,
                            sex: sendData.cs_child_sex,
                            bt_no : sendData.cs_bt_no
                        }
                        var row_data = b64EncodeUnicode(JSON.stringify(row_data));
                        sessionStorage.setItem("row_age", row_data);

                        // 선택한 사업정보 삭제
                        sessionStorage.removeItem("apply_list_data");
                        location.href = "/p9net-page/admin/consult/lists/sc_status/urs_success.html";   // 신청완료 페이지로 이동

                    } else {
                        alert("신청 실패 : " + result.messageinfo.message);
                    }
                });
            }
            else{
                alert("로그인 후 신청해 주세요.");
            }
        }

        // 유료검사
        function paid_inspection(){
            var selectAge = document.getElementById("child_age");
            var selectSex = document.getElementById("child_sex");
            var selectRelation = document.getElementById("child_relation");
            var selectNickname = document.getElementById("child_nickname").value;
            if(selectNickname == ""){
                selectNickname = document.getElementById("input_nickname").value;
            }
            var select_sc_area_first = document.getElementById("sc_area_first").value;        // 시/도
            var select_sc_area_middle = document.getElementById("sc_area_middle").value;      // 시군구

            var getToken = sessionStorage.getItem("token_yj_rfms");
    
            if(getToken){
                // 거주지역 정보로 기관정보 가져오기(사업명 고유번호, 기관타입, 기관명)
                var today = new Date();
                var sendData = {
                    no: 0,
                    
                    org_af_name : select_sc_area_first,                                         // 행정구역명
                    org_am_name : select_sc_area_middle,                                        // 시군구명
                    org_al_name : "B2C",                                                        // 읍면동명
                    year : moment(today).format("YYYY"),                                        // 년도
                    today : moment(today).format("YYYY-MM-DD HH:mm:ss"),                        // 현재 날짜
                }

                var url = url_json + "basedata/select_bt_org";

                JSON_POST(url, sendData, false, sessionStorage.getItem(token_yj_rfms), function (result) {
                    if (result.state == "ok") {
                        
                        // 기관 타입 설정
                        var getData = JSON.parse(result.message);
                        var type = "";
                        var today = new Date();
                        if(getData.org_type == 'A'){
                            type = " 유치원";
                        }
                        else if(getData.org_type == 'B'){
                            type = " 어린이집";
                        }
                        else if(getData.org_type == 'C'){
                            type = " 기타";
                        }

                        
                        // jit_consult table에 저장할 데이터 생성(관찰관리에 사용자 등록)
                        var sendData2 = {
                            no: 0,
                            
                            cs_bt_no : getData.bt_no,                                                       // 사업명 고유번호
                            cs_orgs_no : getData.org_no,                                                    // 기관명 고유번호
                            cs_ur_no : getUserInfo.ur_no,                                                   // 사용자 고유번호
                            cs_userid : getUserInfo.ur_userid,                                              // 사용자 아이디
                            cs_child_name : getUserInfo.ur_name,                                            // 사용자 이름
                            cs_child_age : selectAge.options[selectAge.selectedIndex].value,                // 아동나이
                            cs_child_sex : selectSex.options[selectSex.selectedIndex].value,                // 아동성별
                            cs_ur_relation : selectRelation.options[selectRelation.selectedIndex].value,    // 관계
                            cs_child_nickname : selectNickname,                                             // 아동 닉네임
                            cs_ur_hp : getUserInfo.ur_hp,                                                   // 연락처
                            cs_org_name : getData.org_name + type,                                          // 기관명
                            cs_bt_name : getData.bt_name,                                                   // 사업명
                            cs_request_dt : moment(today).format("YYYY-MM-DD HH:mm:ss"),                    // 상담신청일
                            cs_groups_ver : document.getElementById("gr_version").value,                    // 군분류 분석 버전
                            cs_process_status: "13",                                                        // 상담진행상태: 크롭완료(11), 작성완료(12), 분석대기(13), 최종완료(14)
                        }

                        var url = url_json + "consult/insert_consult";

                        JSON_POST(url, sendData2, false, sessionStorage.getItem(token_yj_rfms), function (result) {
                            if (result.messageinfo.state == "ok") {
                                var getID = result.messageinfo.message;
                                
                                var row_data = {
                                    no: getID.insertId,
                                    name: sendData2.cs_child_name,
                                    age: sendData2.cs_child_age,
                                    sex: sendData2.cs_child_sex,
                                    bt_no : sendData2.cs_bt_no
                                }
                                var row_data = b64EncodeUnicode(JSON.stringify(row_data));
                                sessionStorage.setItem("row_age", row_data);

                                // 선택한 사업정보 삭제
                                sessionStorage.removeItem("apply_list_data");
                                location.href = "/p9net-page/admin/consult/lists/sc_status/urs_success.html";   // 신청완료 페이지로 이동

                            } else {
                                alert("신청 실패 : " + result.messageinfo.message);
                            }
                        });


                        // user_link 테이블에 값 추가
                        var sendData = {
                            ul_userid : getUserInfo.ur_userid,                                              // 사용자 아이디
                            ul_orgs_no : getData.org_no,                                                    // 기관명 고유번호
                            type : "PS"                                                                     // 타입
                        }

                        var url = url_json + "user/insert_link";

                        JSON_POST(url, sendData, false, sessionStorage.getItem(token_yj_rfms), function (result) {
                            if (result.messageinfo.state == "ok") {
                                

                            } else {
                                alert("신청 실패 : " + result.messageinfo.message);
                            }
                        });



                    } else {
                        alert("기관정보 가져오기 실패 : " + result.messageinfo.message);
                    }
                });
            }
            else{
                alert("로그인 후 신청해 주세요.");
            }
            
        }


        // 확인 버튼
        $('#btn_next').click(function () {
            if ( $('#chk_y').prop("checked") && $('#chk_y2').prop("checked") ) {
                // $('#person_box').hide();
                // //$('#request_text_box2').hide();
                // $('#reg_box').show();
                // $("html, body").scrollTop(0);
                location.href = "/p9net-page/users/create_users.html";
            }
            else {
                alert('개인정보 제공.활용에 동의하지 않으시면\n아동정서ㆍ행동 관찰 시스템 서비스를 신청하실 수 없습니다.');
                return;
            }
        });

        // $('#sc_area_first').change(function(){
        //     changed_first();
        // });

        $("#parents_name").bind("keyup",function(){
            var re = /[~!@?<>\/\#$%^&`*\()\-=+_']/gi;
            var temp = $("#parents_name").val();
            if(re.test(temp)) {
                //특수문자가 포함되면 삭제하여 값으로 다시셋팅
                $("#parents_name").val(temp.replace(re,""));
            }
        });

    });

    

    // 거주지역 선택박스 이벤트(시군구 가져오기)
    $("#sc_area_first").change( function() {

        var selectItem = document.getElementById("sc_area_first");  
        
        var selectValue = selectItem.options[selectItem.selectedIndex].value;
        var sendData = {
            selectValue : selectValue,
        }

        var url = url_json + "basedata/select_am_name";

        JSON_POST(url, sendData, false, sessionStorage.getItem(token_yj_rfms), function (result) {
            if (result.state == "ok") {
                var getMessage = JSON.parse(result.message);
                var selectElement = document.getElementById('sc_area_middle');
                $('#sc_area_middle').empty();
                
                var opt = document.createElement('option');
                    opt.value = "";
                    opt.innerHTML = "-- 시군구 선택 --";
                    selectElement.appendChild(opt);

                for(var i = 0; i < getMessage.length; i++){
                    opt = document.createElement('option');
                    opt.value = getMessage[i].al_am_name;
                    opt.innerHTML = getMessage[i].al_am_name;
                    selectElement.appendChild(opt);
                }

            } else {
                // messagebox_show(false, "시군구 불러오기 실패", result.message, null, false, true);
                alert("시군구 불러오기 실패");
            }
        });

    });

    $(function () {
        $('#child_age').change(function () {
            $('#li_5').hide();
            $('#li_6').hide();
            $('#li_7').hide();

            if(this.value != '') {
                $('#li_'+this.value).show();
            }
        })
    });



    function validateEmail(email) {
        var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
        return re.test(email);
    }

    function chk_info(v) {
        if(v=='y') {
            $('#chk_n').prop("checked", false);
        }
        else {
            $('#chk_y').prop("checked", false);
        }
    }

    function chk_info2(v) {
        if(v=='y') {
            $('#chk_n2').prop("checked", false);
        }
        else {
            $('#chk_y2').prop("checked", false);
        }
    }

    function check_form() {

        var el = '';
        //var el = $('input[name=child_name]');
        //if (el.val() == '') {
        //    alert('아동 성명을 입력해 주세요.');
        //    el.focus(); return false;
        //}
        el = $('select[name=child_age]');
        if (el.val() == '') {
            alert('아동의 나이를 입력해 주세요.');
            el.focus(); return false;
        }
        el = $('select[name=child_sex]');
        if (el.val() == '') {
            alert('아동의 성별을 입력해 주세요.');
            el.focus(); return false;
        }
        el = $('select[name=child_relation]');
        if (el.val() == '') {
            alert('아동과의 관계를 입력해 주세요.');
            el.focus(); return false;
        }
        var selected_nickname = document.getElementById("child_nickname").value;
        var inputed_nickname = document.getElementById("input_nickname").value;
        if(selected_nickname == "" && inputed_nickname == ""){
            // alert('아동 닉네임을 선택 or 입력해 주세요.');
            alert('아동 닉네임을 입력해 주세요.');
            document.getElementById("child_nickname").focus(); return false;
        }


        if(document.getElementById("select_area").style.display == ""){
            el = $('select[name=sc_area_first]');
            if (el.val() == '') {
                alert('거주지역을 입력해 주세요.');
                el.focus(); return false;
            }
            el = $('select[name=sc_area_middle]');
            if (el.val() == '') {
                alert('시군구를 입력해 주세요.');
                el.focus(); return false;
            }
        }
        


        return true;
    }

    function view_text() {
        if($('#private_text').css("display") == "none")
        {
            $('#private_text').show();
            $('#btn_view_text').val(' 내용 닫기 ');
        }
        else
        {
            $('#private_text').hide();
            $('#btn_view_text').val(' 내용 보기 ');
        }
    }

    function view_request_text() {
        if ( $('#chk_y').prop("checked") && $('#chk_y2').prop("checked") ) {
            //$('#person_box').hide();
            //$('#reg_box').show();
            $('#request_text_box').show();
            //$('#request_text_box2').show();
            $('#btn_next').show();
        }
        else {
            alert('개인정보 제공.활용에 동의하지 않으시면\n아동정서ㆍ행동 관찰 시스템 서비스를 신청하실 수 없습니다.');
            return;
        }
    }

    function sel_org() {
        var el1;
        el1 = $('select[name=sel_org_name]');
        if ( el1.val() == '어린이집' ) {
            $('#org_name').show();
        }
        else {
            $('#org_name').hide();
        }
    }

    function numberMaxLength(e){
        if(e.value.length > e.maxLength){
            e.value = e.value.slice(0, e.maxLength);
        }
    }


    function join(){
    	var joinGet = 'join';
    	window.location.href = joinGet;
    }

    window.addEventListener('load', function() {
        document.body.style.opacity = '1'; /* 페이지 로드 완료 시 투명도를 1로 변경 */
    });
    
</script>
    </div>

    <footer id="footer">
    
    </footer>
</div>
 
 
 
 
 



    
    

<!-- 푸터 페이지 -->
<jsp:include page="../footer.jsp" flush="false"></jsp:include>  


</body>
</html>
