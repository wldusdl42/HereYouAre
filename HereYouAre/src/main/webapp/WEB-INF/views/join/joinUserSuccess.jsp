<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/joinSuccess.css" rel="stylesheet">

<title>(일반) 이메일 인증 완료</title>
</head>
<body>
<div class="logo_wrap">
<a href="main">
<img src="resources/img/HereYouAre_270_170.png"
alt="logo" class="logo" style="margin-left: 30px; width: 130px; height: 80px;">
</a>
</div>

<div class="incontent">
  <h2 class="title01">이메일 인증</h2>
  <div class="stepbox type02">
    <ul>
      <li class="step01">
        <span class="st_num">STEP01</span>
        <span class="st_name">회원가입</span>
      </li>

      <li class="step02">
        <span class="st_num">STEP02</span>
        <span class="st_name">가입 완료</span>
      </li>

      <li class="step03 on">
        <span class="st_num">STEP03</span>
        <span class="st_name">이메일 인증</span>
      </li>
    </ul>
</div>

<h1 class="title02">이메일 인증을 완료하였습니다</h1>

<div class="contents">
  <form name="joinUserRes" action="joinUserRes" method="post">
    <div>
      <p><span>${param.email} </span> 님 이메일 인증을 완료하였습니다</p>
      <p>지금부터 Here You Are을 이용하실 수 있습니다</p>
    </div>
    <a href="main"><button class="btn homeBtn" type="button" name="button">홈으로</button></a>
  </form>
</div>
</div>
</body>
</html>