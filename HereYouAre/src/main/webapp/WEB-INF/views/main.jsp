<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Main</title>
<!-- Bootstrap core CSS -->
<link href="<c:url value = "/resources/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="<c:url value = "/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="<c:url value = "/resources/css/agency.min.css"/>" rel="stylesheet">
</head>
<body>
<%@ include file="header.jsp"%>
<div id="page-top">
<!-- Header -->
<header class="masthead">
  <div class="container">
    <div class="intro-text">
      <div class="intro-lead-in">Welcome To HereYouAre!</div>
      <div class="intro-heading text-uppercase">It's Nice To Meet You</div>
      <a href="map"><div class="btn btn-primary btn-xl text-uppercase js-scroll-trigger">Search</div></a>
    </div>
  </div>
</header>
<!-- Services -->
<section class="page-section" id="services">
<div class="container">
<%@ include file="sidebar.jsp"%>
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-heading text-uppercase">Services</h2>
        <h3 class="section-subheading text-muted">HereYouAre for You.</h3>
      </div>
    </div>
    <div class="row text-center">
   <div class="col-md-4">
     <span class="fa-stack fa-4x">
       <i class="fas fa-circle fa-stack-2x text-primary"></i>
        <a href="FameBoardForm"><i class="fab fa-elementor fa-stack-1x fa-inverse"></i></a>
     </span>
      <a href="#"><h4 class="service-heading">이용방법</h4></a>
     <p class="text-muted">Search 관련해서 홈페이지를 효율적으로 이용할 수 있는 <br> 방법이 자세하게 설명되어 있습니다. <br> 홈페이지를 처음 이용하시는 분에게 추천드립니다.</p>
   </div> 
 <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fas fa-circle fa-stack-2x text-primary"></i>
              <a href="FameBoardListCall"><i class="fas fa-trophy fa-stack-1x fa-inverse"></i></a>
            </span>
            <a href="FameBoardListCall"><h4 class="service-heading">명예의 전당</h4></a>
            <p class="text-muted">HereYouAre를 이용하신 회원분들 중 매출액이 천만원을 <br> 넘는 분들의 특별 페이지가 올라옵니다.</p>
          </div>
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fas fa-circle fa-stack-2x text-primary"></i>
              <a href="listNoticeBoard"><i class="fas fa-file fa-stack-1x fa-inverse"></i></a>
            </span>
            <a href="listNoticeBoard"><h4 class="service-heading">공지사항</h4></a>
            <p class="text-muted">HereYouAre를 이용하시는 회원분들에게 알려드립니다.</p>
          </div>
        </div>
      </div><!-- container -->
    </section>
  </div><!-- page-top -->
<%@ include file="footer.jsp"%>
  </body>
</html>
