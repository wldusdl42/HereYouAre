<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='https://fonts.googleapis.com/css?family=Oswald|Bitter|Open+Sans:400,300' rel='stylesheet' type='text/css'>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/consult.css" />" rel="stylesheet">

</head>

<body>
<div class="container">  
  <form id="contact" action="consult" method="get">
    <h3>상담신청 </h3>
    <h4>상담을 통해 더욱 자세한 정보를 얻으실 수 있습니다 :)</h4>
    <fieldset>
      <input value="${area[9]} | ${area[1]}" type="text" tabindex="1" required autofocus disabled ="true"> 
    </fieldset>
    <fieldset>
      <input value="${area[2]} ${area[3]} ${area[4]}" type="email" tabindex="2" required disabled ="true"> 
    </fieldset>
    <fieldset>
      <input value="${area[5]}㎡ - ${area[6]}층" type="tel" tabindex="3" required disabled ="true">
    </fieldset>
    <fieldset>
      <input value="${area[7]} ${area[8]}" type="tel" tabindex="3" required disabled ="true">
    </fieldset>
   
    <fieldset>
      <textarea placeholder="문의사항 편하게 작성해 주세요 :)" name="content" tabindex="5" required></textarea>
    </fieldset>
    <fieldset>
      <input placeholder="연락가능한 번호 남겨주세요 :)" name="phoneNum" type="tel" tabindex="4" required>
    </fieldset>
    <fieldset>
     	상담유형 : <input type="radio" name="consultType" id="visit" value="visit"> 방문
     			<input type="radio" name="consultType" id="telconsult" value="telconsult"> 전화
    </fieldset>
    <fieldset>
    	<input type="hidden" name="id" value="${area[0]}">
    	<input type="hidden" name="sender" value="${bm.email}">
    	<input type="hidden" name="recipient" value="${area[9]}">
    	
      <button type="submit" id="contact-submit" >상담신청</button>
    </fieldset>
  </form>
 
  
</div>


</body>
</html>