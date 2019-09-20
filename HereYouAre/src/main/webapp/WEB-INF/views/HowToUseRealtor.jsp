<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value = "resources/css/HowToUseRealtor.css?ver=1/"/>" rel="stylesheet">
<script src="resources/js/HowToUseRealtor.js"></script>
<title>(공인중개사) 이용방법</title>
</head>
<body>
<%@ include file="header.jsp"%>

<div class="incontent" style="border:1px solid black;">
<h2>Here You Are 사이트 이용방법 (공인중개사용)</h2>
<div class="tab">
  <button class="tabLink" onclick="openHowTo(event, 'HowToMap')">지도</button>
  <button class="tabLink" onclick="openHowTo(event, 'HowToMypage')">마이페이지</button>
  <button class="tabLink" onclick="openHowTo(event, 'HowToConsulting')">상담</button>
  <button class="tabLink" onclick="openHowTo(event, 'HowToChangeInfo')">정보수정안내</button>
</div>

<div id="HowToMap" class="tabContent">
  <h3>지도 이용방법</h3>
  <p>1. 메인화면에 있는 Search 버튼을 눌러주세요.</p>
  <p>2. 원하는 지역을 선택해주세요.</p>
  <p>3. 매물을 확인하실 수 있습니다.</p>
</div>

<div id="HowToMypage" class="tabContent">
  <h3>마이페이지 이용방법</h3>
  <p>1. </p>
</div>

<div id="HowToConsulting" class="tabContent">
  <h3>상담 이용방법</h3>
  <p>1. </p>
</div>

<div id="HowToChangeInfo" class="tabContent">
  <h3>정보 수정 안내</h3>
  <p>1. </p>
</div>

</div>
</body>
</html>