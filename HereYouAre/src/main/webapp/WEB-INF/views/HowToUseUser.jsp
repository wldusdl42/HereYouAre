<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value = "resources/css/HowToUseUser.css?ver=1/"/>" rel="stylesheet">
<script src="resources/js/HowToUseUser.js"></script>
<title>(일반) 이용방법</title>
</head>
<body>
<%@ include file="header.jsp"%>

<div class="incontent" style="border:1px solid black;">
<h2>How to use Here You Are Sites (for user)</h2>
<div class="tab">
  <button class="tabLink" onclick="openHowTo(event, 'HowToMap')">Map</button>
  <button class="tabLink" onclick="openHowTo(event, 'HowToMypage')">My Page</button>
  <button class="tabLink" onclick="openHowTo(event, 'HowToHeartList')">Heart List</button>
</div>

<div id="HowToMap" class="tabContent">
  <h3>Step 1: Find the Sell</h3>
  <p>1. 메인화면에 있는 Search 버튼을 눌러주세요.</p>
  <p>2. 원하는 지역을 선택해주세요.</p>
  <p>3. 매물을 확인하실 수 있습니다.</p>
  <h3>Step 2: Publish and share your site</h3>
  <p>1. 메인화면에 있는 Search 버튼을 눌러주세요.</p>
  <p>2. 원하는 지역을 선택해주세요.</p>
  <p>3. 매물을 확인하실 수 있습니다.</p>
</div>


<div id="HowToMypage" class="tabContent">
  <p>1. 마이페이지 버튼을 눌러주세요.</p>
  <p>2. 마이페이지에는 개인정보 수정, 상담내역, 찜목록, 알림 기능이 있습니다.</p>
  <h3>Step 1: Your Information</h3>
  <p>- 개인정보 수정이 가능하며, 회원탈퇴 및 비밀번호 변경이 가능합니다</p>
  <h3>Step 2: Check Your Consulting</h3>
  <p>- 상담신청 현황을 볼 수 있습니다.</p>
  <h3>Step 3: Check Your Heart List</h3>
  <p>- 찜목록 현황을 볼 수 있으며, 이 곳에서 삭제를 할 수 있습니다.</p>
  <h3>Step 4: Notification</h3>
  <p>- Here You Are 내에 모든 알림을 받아볼 수 있습니다.</p>
</div>

<div id="HowToHeartList" class="tabContent">
  <h3>Step 1: To select a heart List</h3>
  <p>1. 원하시는 지역에서 하트 버튼을 눌러주세요.</p>
  <p>2. 찜목록에 등록이 완료됩니다.</p>
  <h3>Step 2: Check Your Heart List (My Page)</h3>
  <p>1. 마이페이지 버튼을 눌러주세요.</p>
  <p>2. 찜목록을 눌러주세요.</p>
  <p>3. 삭제와 확인이 가능합니다.</p>
  <h3>Step 2: Check Your Heart List (Side Bar)</h3>
  <p>1. 로그인 후, 메인 좌측에 open 버튼을 눌러주세요.</p>
  <p>2. 삭제와 확인이 가능합니다.</p>
</div>

</div>
</body>
</html>