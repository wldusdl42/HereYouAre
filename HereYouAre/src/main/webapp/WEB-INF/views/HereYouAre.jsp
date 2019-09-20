<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Here U A</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="<c:url value="resources/css/heareyouare.css?ver=23"/>"
	rel="stylesheet">
<script src="<c:url value="resources/js/ChangeAdong.js?ver=9"/>"></script>
<script src="<c:url value="resources/js/SelectAdong.js?ver=2"/>"></script>
<script src="<c:url value="resources/js/initial.js?ver=16"/>"></script>



<link href="<c:url value = "resources/css/header.css?ver=2/"/>"	rel="stylesheet">

<script type="text/javascript">
	/////////로그인 시 유지되기 하고 있엇음
	var lat = [];
	var lon = [];

	var i = 0;
	var email = "${bm.email}";
	
    console.log(email);
    	
    	var heartInfo = [[],[],[]];
    	
    	<c:forEach var = "heart" items = "${heartInfo}">
			heartInfo[0][i] = ${heart[0]};
			heartInfo[1][i] = ${heart[1]};
			heartInfo[2][i] = "${heart[2]}";
    		i++;
    	</c:forEach>
    	
    	var allHeartId = [];
    	i=0;
    	<c:forEach var ="allHeartId" items="${allHeartId}">
    		allHeartId[i] = ${allHeartId};	
    		i++;
    	</c:forEach>
    
    	i = 0;
    	<c:forEach var = "coords" items = "${coords}">
		    lat[i] = ${coords[0]};
		    lon[i] = ${coords[1]};
		    i++;
    	</c:forEach>	
    
    	
    	var dangerIndexInfo = [];
    	i = 0;
    	<c:forEach var = "dangerIndex" items = "${dangerIndexInfo}">
    		dangerIndexInfo[i] = ("${dangerIndex}");
    		i++;
		</c:forEach>
		
    	var tradeIndexInfo = [];
    	i = 0;
    	<c:forEach var = "tradeIndex" items = "${tradeIndexInfo}">
    		tradeIndexInfo[i] = ("${tradeIndex}");
    		i++;
		</c:forEach>
		
		var livingPopInfo = [];
    	i = 0;
    	<c:forEach var = "livingPop" items = "${livingPopInfo}">
    		livingPopInfo[i] = ("${livingPop}");
    		i++;
		</c:forEach>
		
		var q01 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q01}">
			q01[0][i] = "${q[0]}"; 
			q01[1][i] = "${q[1]}";
			q01[2][i] = "${q[2]}";
			q01[3][i] = "${q[3]}";
			q01[4][i] = "${q[4]}";
			q01[5][i] = "${q[5]}";
			q01[6][i] = "${q[6]}";
			q01[7][i] = "${q[7]}";
			q01[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q02 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q02}">
			q02[0][i] = "${q[0]}"; 
			q02[1][i] = "${q[1]}";
			q02[2][i] = "${q[2]}";
			q02[3][i] = "${q[3]}";
			q02[4][i] = "${q[4]}";
			q02[5][i] = "${q[5]}";
			q02[6][i] = "${q[6]}";
			q02[7][i] = "${q[7]}";
			q02[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q03 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q03}">
			q03[0][i] = "${q[0]}"; 
			q03[1][i] = "${q[1]}";
			q03[2][i] = "${q[2]}";
			q03[3][i] = "${q[3]}";
			q03[4][i] = "${q[4]}";
			q03[5][i] = "${q[5]}";
			q03[6][i] = "${q[6]}";
			q03[7][i] = "${q[7]}";
			q03[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q04 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q04}">
			q04[0][i] = '${q[0]}'; 
			q04[1][i] = '${q[1]}';
			q04[2][i] = '${q[2]}';
			q04[3][i] = '${q[3]}';
			q04[4][i] = '${q[4]}';
			q04[5][i] = '${q[5]}';
			q04[6][i] = '${q[6]}';
			q04[7][i] = '${q[7]}';
			q04[8][i] = '${q[8]}';
			i++;
		</c:forEach>
		
		var q05 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q05}">
			q05[0][i] = "${q[0]}"; 
			q05[1][i] = "${q[1]}";
			q05[2][i] = "${q[2]}";
			q05[3][i] = "${q[3]}";
			q05[4][i] = "${q[4]}";
			q05[5][i] = "${q[5]}";
			q05[6][i] = "${q[6]}";
			q05[7][i] = "${q[7]}";
			q05[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q06 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q06}">
			q06[0][i] = "${q[0]}"; 
			q06[1][i] = "${q[1]}";
			q06[2][i] = "${q[2]}";
			q06[3][i] = "${q[3]}";
			q06[4][i] = "${q[4]}";
			q06[5][i] = "${q[5]}";
			q06[6][i] = "${q[6]}";
			q06[7][i] = "${q[7]}";
			q06[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q07 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q07}">
			q07[0][i] = "${q[0]}"; 
			q07[1][i] = "${q[1]}";
			q07[2][i] = "${q[2]}";
			q07[3][i] = "${q[3]}";
			q07[4][i] = "${q[4]}";
			q07[5][i] = "${q[5]}";
			q07[6][i] = "${q[6]}";
			q07[7][i] = "${q[7]}";
			q07[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q08 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q08}">
			q08[0][i] = "${q[0]}"; 
			q08[1][i] = "${q[1]}";
			q08[2][i] = "${q[2]}";
			q08[3][i] = "${q[3]}";
			q08[4][i] = "${q[4]}";
			q08[5][i] = "${q[5]}";
			q08[6][i] = "${q[6]}";
			q08[7][i] = "${q[7]}";
			q08[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q09 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q09}">
			q09[0][i] = "${q[0]}"; 
			q09[1][i] = "${q[1]}";
			q09[2][i] = "${q[2]}";
			q09[3][i] = "${q[3]}";
			q09[4][i] = "${q[4]}";
			q09[5][i] = "${q[5]}";
			q09[6][i] = "${q[6]}";
			q09[7][i] = "${q[7]}";
			q09[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q10 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q10}">
			q10[0][i] = "${q[0]}"; 
			q10[1][i] = "${q[1]}";
			q10[2][i] = "${q[2]}";
			q10[3][i] = "${q[3]}";
			q10[4][i] = "${q[4]}";
			q10[5][i] = "${q[5]}";
			q10[6][i] = "${q[6]}";
			q10[7][i] = "${q[7]}";
			q10[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q12 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q12}">
			q12[0][i] = "${q[0]}"; 
			q12[1][i] = "${q[1]}";
			q12[2][i] = "${q[2]}";
			q12[3][i] = "${q[3]}";
			q12[4][i] = "${q[4]}";
			q12[5][i] = "${q[5]}";
			q12[6][i] = "${q[6]}";
			q12[7][i] = "${q[7]}";
			q12[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q13 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q13}">
			q13[0][i] = "${q[0]}"; 
			q13[1][i] = "${q[1]}";
			q13[2][i] = "${q[2]}";
			q13[3][i] = "${q[3]}";
			q13[4][i] = "${q[4]}";
			q13[5][i] = "${q[5]}";
			q13[6][i] = "${q[6]}";
			q13[7][i] = "${q[7]}";
			q13[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q14 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q14}">
			q14[0][i] = "${q[0]}"; 
			q14[1][i] = "${q[1]}";
			q14[2][i] = "${q[2]}";
			q14[3][i] = "${q[3]}";
			q14[4][i] = "${q[4]}";
			q14[5][i] = "${q[5]}";
			q14[6][i] = "${q[6]}";
			q14[7][i] = "${q[7]}";
			q14[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var q15 = [[],[],[],[],[],[],[],[],[]];
		i = 0;
		<c:forEach var = "q" items = "${q15}">
			q15[0][i] = "${q[0]}"; 
			q15[1][i] = "${q[1]}";
			q15[2][i] = "${q[2]}";
			q15[3][i] = "${q[3]}";
			q15[4][i] = "${q[4]}";
			q15[5][i] = "${q[5]}";
			q15[6][i] = "${q[6]}";
			q15[7][i] = "${q[7]}";
			q15[8][i] = "${q[8]}";
			i++;
		</c:forEach>
		
		var estateInfo = [[],[],[],[],[],[],[],[],[],[],[],[]];
		  var i = 0;
		    <c:forEach var = "estateInfo" items = "${estateInfo}">
		    	estateInfo[0][i] = "${estateInfo[0]}";
		    	estateInfo[1][i] = "${estateInfo[1]}";
		    	estateInfo[2][i] = "${estateInfo[2]}";
		    	estateInfo[3][i] = "${estateInfo[3]}";
		    	estateInfo[4][i] = "${estateInfo[4]}";
		    	estateInfo[5][i] = "${estateInfo[5]}";
		    	estateInfo[6][i] = "${estateInfo[6]}";
		    	estateInfo[7][i] = "${estateInfo[7]}";
		    	estateInfo[8][i] = "${estateInfo[8]}";
		    	estateInfo[9][i] = "${estateInfo[9]}";
		    	estateInfo[10][i] = "${estateInfo[10]}";
		    	estateInfo[11][i] = "${estateInfo[11]}";
		    	i++;
		    </c:forEach>	
		  
		var estateMarkers = [];
		var estateOverlays = [];
		
		
		var realtor = [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
		  var i = 0;
		  <c:forEach var = "realtor" items = "${realtor}">
				realtor[0][i] = "${realtor.name}";    	
				realtor[1][i] = "${realtor.email}";    	
				realtor[2][i] = "${realtor.password}";    	
				realtor[3][i] = "${realtor.phone}";    	
				realtor[4][i] = "${realtor.adress}";    	
				realtor[5][i] = "${realtor.sex}";    	
				realtor[6][i] = "${realtor.age}";    	
				realtor[7][i] = "${realtor.time}";    	
				realtor[8][i] = "${realtor.type}";    	
				realtor[9][i] = "${realtor.checkEmail}";    	
				realtor[10][i] = "${realtor.realtorNumber}";    	
				realtor[11][i] = "${realtor.ownerNumber}";    	
				realtor[12][i] = "${realtor.checking}";    	
				realtor[13][i] = "${realtor.agencyName}";    	
				realtor[14][i] = "${realtor.agencyAddress}";    	
				realtor[15][i] = "${realtor.tel}";    	
				realtor[16][i] = "${realtor.evaluation}";    	
		    	i++;
		  </c:forEach>	
		  

	</script>

<script type="text/javascript">

		$(document).ready(function(){
		
			$("#howToUse").click(function(){
		// 		alert("이용방법");
				window.open("HowToUse1","이용방법", 'width=1280px,height=600px,toolbars=no, left=300px, top=200px');
			});
		});
		
		var cc=0
		function showHide(id) {
			if(q01[0][0]!=null)
				{
				
		    if (cc==0) {
		        cc=1
		        document.getElementById(id).style.display="block";
		    } else {
		        cc=0
		        document.getElementById(id).style.display="none";
		    }
				}
		}
	</script>

</head>
<body>

	<div id="wrap">
		<div id="sidebar" style="width: 400px; height: 100%;">

			<div id="header">
				<c:if test="${empty bm.type}">
					<ul>
						<li class="menu"><a href="#" id = "howToUse">이용방법</a></li>
						<li class="menu"><a
							href="login?uri=${pageContext.request.requestURI}">로그인</a></li>
							
						<li class="menu">
 						<a href="#" onclick="document.getElementById('join').style.display='block'">회원가입
 						<div id="join" class="modal">
 								<div class="contentbox animate">
 									<form name="joinTypeUser" action="joinTypeUser" method="post">
 										<div class="content"><h3>일반 회원가입</h3>
 										<img src="<c:url value = "/resources/img/joinUserIcon.png"/>"alt="userImg"style="margin-left:0px;">
 										<div class="nextbtn"><button type="submit" class="btn midBtn01" id="joinUser">바로가기</button>
 										</div>
 										</div>
 									</form>
 									<form name="joinTypeRealtor" action="joinTypeRealtor" method="post">
 										<div class="content"><h3>공인중개사 회원가입</h3>
 										<img src="<c:url value = "/resources/img/joinRealtorIcon.png"/>" alt="realtorImg" style="margin-left:0px;">
 										<div class="nextbtn"><button type="submit" class="btn midBtn01" id="joinRealtor">바로가기</button>
 										</div>
 										</div>
 									</form>
 								</div><!-- contentbox animate -->
 							</div><!-- modal -->
 						</a>
 						</li>
 					
					</ul>
				</c:if>
				<c:if test="${bm.type eq 1}">
					<ul>
						<li class="menu">${bm.name}님</li>
						<li class="menu"><a href="#" id = "howToUse">이용방법</a></li>
						<li class="menu"><a href="user">마이페이지</a></li>
						<li class="menu"><a href="logout">로그아웃</a></li>
					</ul>
				</c:if>
				<c:if test="${bm.type eq 2}">
					<ul>
						<li class="menu">${bm.name}님</li>
						<li class="menu"><a href="#" id = "howToUse">이용방법</a></li>
						<li class="menu"><a href="real_mypage?email=${bm.email}">마이페이지</a></li>
						<li class="menu"><a href="logout">로그아웃</a></li>
					</ul>
				</c:if>


				<ul style="list-style: none; text-align: center;">
				</ul>
			</div>
			<div id="logo" style="padding: 20px;">
				<a href="main?email=${bm.email}"> <img
					src=<c:url value="/resources/img/HereYouAre_270_170.png"/>
					style="width: 200px; padding-top: 25px; margin-top: 20px;"></a>
			</div>
			<div id="address">
				<br>
				<h4>행정동 선택</h4>
				<hr>
				<br> <select id="input">
					<option id="11680">강남구</option>
					<option id="11740" selected disabled>강동구</option>
					<option id="11305">강북구</option>
					<option id="11500" selected disabled>강서구</option>
					<option id="11620" selected disabled>관악구</option>
					<option id="11215" selected disabled>광진구</option>
					<option id="11530" selected disabled>구로구</option>
					<option id="11545" selected disabled>금천구</option>
					<option id="11350" selected disabled>노원구</option>
					<option id="11320" selected disabled>도봉구</option>
					<option id="11230" selected disabled>동대문구</option>
					<option id="11590" selected disabled>동작구</option>
					<option id="11440">마포구</option>
					<option id="11410" selected disabled>서대문구</option>
					<option id="11650" selected disabled>서초구</option>
					<option id="11200" selected disabled>성동구</option>
					<option id="11290" selected disabled>성북구</option>
					<option id="11710" selected disabled>송파구</option>
					<option id="11470" selected disabled>양천구</option>
					<option id="11560" selected disabled>영등포구</option>
					<option id="11170" selected disabled>용산구</option>
					<option id="11380" selected disabled>은평구</option>
					<option id="11110" selected disabled>종로구</option>
					<option id="11140" selected disabled>중구</option>
					<option id="11260" selected disabled>중랑구</option>
					<option selected disabled>시군구 선택</option>

				</select>
				<div id="output">
					<select id='out'
						style='width: 240px; height: 40px; border-radius: 10px; margin-top: 10px; font-size: 15px;'>
						<option>------------------------------------</option>
					</select>
				</div>
				<div id="outValue"></div>
				<form action="submitCd" id="form">
					<input id="getAdongCd" type="hidden" name="adongCd" value="" />
				</form>

			</div>
			<div id="upjong">
				<br>
				<h4>행정동 상권 현황</h4>
				<hr>
				<br>
				<div id="status">
					<br>
					<p id="adongName" class="top">&nbsp;</p>
					<br>
					<p class="title">
						총 생활인구<span style="font-size: 10px; color: black;"></span>
					</p>
					<p id="totalLivingPop">&nbsp;</p>
					<br>
					<p class="title">최대 생활인구 시간 정보</p>
					<p id="maxLivingPop">&nbsp;</p>
					<br>
					<p class="title">주 고객 층</p>
					<p id="mainTarget">&nbsp;</p>
					<br>
					<p class="title">상권 변화 지표</p>
					<a href="#layer" onclick="showHide('layer');return false;"><p
							id="tradeIndex">&nbsp;</p></a> <br>
					<p class="title">창업 위험 지수</p>
					<a href="#layer2" onclick="showHide('layer2');return false;"><p
							id="dangerIndex">&nbsp;</p></a>
					<div id="layer">
						<p id="layer1context" style="margin-top: 8px;">-</p>
					</div>
					<div id="layer2">
						<p id="layer2context" style="margin-top: 8px;">-</p>
					</div>
				</div>
			</div>

			<div id="footer"></div>

		</div>
		<div id="mapwrap">
			<!-- 지도가 표시될 div -->
			<div id="map" style="width: 100%; height: 100%;"></div>
			<!-- 지도 위에 표시될 마커 카테고리 -->
			<div class="category radius_border">
				<ul>
					<li id="koreafoodMenu" onclick="changeMarker('koreafood')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_한식.png"/>></span> 한식</li>
					<li id="chinafoodMenu" onclick="changeMarker('chinafood')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_중식.png"/>></span> 중식</li>
					<li id="japanfoodMenu" onclick="changeMarker('japanfood')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_일식.png"/>></span> 일식</li>
					<li id="snakMenu" onclick="changeMarker('snak')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_분식.png"/>></span> 분식</li>
					<li id="chickenduckMenu" onclick="changeMarker('chickenduck')">
						<span class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_닭요리.png"/>></span>
						닭/오리요리
					</li>
					<li id="westernMenu" onclick="changeMarker('westernfood')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_양식.png"/>></span> 양식</li>
					<li id="fastfoodMenu" onclick="changeMarker('fastfood')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_패스트푸드.png"/>></span> 패스트<br>푸드
					</li>
					<li id="bakingMenu" onclick="changeMarker('baking')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_제과제빵.png"/>></span>
						제과제빵떡케익</li>
					<li id="pubMenu" onclick="changeMarker('pub')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_주점.png"/>></span> 주점</li>
					<li id="fusiondishMenu" onclick="changeMarker('fusiondish')">
						<span class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_별식.png"/>></span> 별식/<br>퓨전요리
					</li>
					<li id="cafeMenu" onclick="changeMarker('cafe')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_카페.png"/>></span> 커피점/카페
					</li>
					<li id="deliveryMenu" onclick="changeMarker('delivery')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_음식배달.png"/>></span>
						음식배달서비스</li>
					<li id="etcMenu" onclick="changeMarker('etc')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_기타음식업.png"/>></span> 기타<br>음식업
					</li>
					<li id="buffetMenu" onclick="changeMarker('buffet')"><span
						class="icon"><img alt=""
							src=<c:url value="/resources/img/Map_Icon_뷔페.png"/>></span> 뷔페</li>
				</ul>

			</div>
			<div class="viewTraffic radius_border">
				<span><input type="checkbox" id="chkTraffic"
					onclick="setOverlayMapTypeId()" /> 교통정보 보기</span>
			</div>

			<div class="custom_typecontrol radius_border">
				<span id="btnRoadmap" class="selected_btn"
					onclick="setMapType('roadmap')">지도</span> <span id="btnSkyview"
					class="btn" onclick="setMapType('skyview')">스카이뷰</span>
			</div>
			<!-- 지도 확대, 축소 컨트롤 div 입니다 -->
			<div class="custom_zoomcontrol radius_border">
				<span onclick="zoomIn()"><img
					src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png"
					alt="확대"></span> <span onclick="zoomOut()"><img
					src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png"
					alt="축소"></span>
			</div>

			<!--     <button id ="remove" onclick="removeCircles()">반경 모두 지우기</button> -->
			<div class="removeCc radius_border">
				<span class="btn" onclick="removeCircles()">원 지우기<br>(우클릭
					실행)
				</span>
			</div>

			<div class="length radius_border">
				<span><input type="radio" id="lengthCls" name="lengthInput"
					value="100">100m</span><br> <span><input type="radio"
					id="lengthCls" name="lengthInput" value="150">150m</span><br>
				<span style="color: red;"><input type="radio" id="lengthCls"
					name="lengthInput" value="200" checked>200m</span><br> <span><input
					type="radio" id="lengthCls" name="lengthInput" value="300">300m</span>
			</div>
			<div class="lengthInfo radius_border">부동산 매물과 선택 업종 간의 최소거리</div>

		</div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a41bf21c9e4f6b1b5f0057196ab2ba1d&libraries=services">
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
mapOption = { 
    center: new kakao.maps.LatLng(37.551855, 126.9911116), // 지도의 중심좌표 
    level: 7 // 지도의 확대 레벨 ,
}; 


</script>
	<script src="<c:url value="resources/js/Map.js?ver=10"/>"></script>
 <script>
	var modal = document.getElementById('join');//아무데나 클릭해도 창닫기 (js파일로 옮기면 실행안됨ㅠㅠ 왜인지 모르겠음)
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
</script>
</body>
</html>