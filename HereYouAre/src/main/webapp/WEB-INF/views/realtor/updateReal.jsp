<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Material Dashboard by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="<c:url value="/resources/real_css/demo.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/real_css/material-dashboard.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pwCheck.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pwChecking.css" />" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
.card-profile .left{
text-align:left;
}
.ui-widget-header,.ui-state-default, ui-button{
            background:coral;
            border: 1px solid #b9cd6d;
            color: black;
            font-weight: bold;
         }
		
		#mainWrapper {
		    margin: 20px auto 0 auto;
		    width: 300px;
		    background-color: #dddddd;
		    padding: 10px 20px;
		}
		
		#overlay-panel {
		    padding: 15px;
		}
</style>
<script>
  	document.querySelector('.img__btn').addEventListener('click', function() {
	  document.querySelector('.cont').classList.toggle('s--signup');
	});
  </script>
</head>
<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
     
      <div class="logo">
         <a href="main" class="simple-text logo-normal">
          Here - You Are 
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="real_mypage">
              <i class="material-icons">dashboard</i>
              <p>대쉬보드</p>
            </a>
          </li>
          <li class="nav-item active ">
            <a class="nav-link" href="real_profile">
              <i class="material-icons">person</i>
              <p>개인정보</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="real_consulting">
              <i class="material-icons">library_books</i>
              <p>상담관리</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="building">
            <i class="material-icons">content_paste</i>
              <p>매물관리</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="notification">
              <i class="material-icons">notifications</i>
              <p>알림</p>
            </a>
          </li>
       
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">User Profile</a>
          </div>
          <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
              <li class="nav-item dropdown">
                <a class="nav-link" href="logout?uri=${pageContext.request.requestURI}" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  	로그아웃
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content"style="padding-top:0px;">
        <div class="container-fluid">
        	<form method="post" action="realUpdate">
        		<input type="hidden" name="email" value="${bm.email}">
				<p class="tip" style="margin-top:0px;margin-bottom:20px;">공인중개사 정보수정 요청</p>
				<div class="cont" style="height:700px;">
				  	<div class="row" style="width:70%; margin-left:auto;margin-right:auto;margin-top:11vh;">
	                      <div class="col-md-12" >
		                        <div class="form-group">
		                          <label class="bmd-label-floating">공인중개사 등록번호</label>
		                          <input type="text" class="form-control" name="realtorNumber" value="${bm.realtorNumber}" >
		                        </div>
	                      </div>
	                      <div class="col-md-12" >
		                        <div class="form-group">
		                          <label class="bmd-label-floating">사업자등록번호</label>
		                          <input type="text" class="form-control" name="ownerNumber" value="${bm.ownerNumber}" >
		                        </div>
	                      </div>
	                      <div class="col-md-12" >
		                        <div class="form-group">
		                          <label class="bmd-label-floating">부동산 명</label>
		                          <input type="text" class="form-control" name="agencyName" value="${bm.agencyName}">
		                        </div>
	                      </div>
	                      <div class="col-md-12">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">사업장 전화번호</label>
		                          <input type="text" class="form-control" name="tel" value="${bm.tel}">
		                        </div>
	                      </div>
	                      <div class="col-md-12">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">사업장 주소</label>
		                          <input type="text" class="form-control" name="agencyAddress" value="${bm.agencyAddress}">
		                        </div>
	                      </div>
	                       <button type="submit" class="btn btn-primary pull-right" style="margin-left:15px; margin-top:30px;">Request</button>
                    </div>
				</div>
        	</form>
        </div>
      </div>
      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="https://www.creative-tim.com">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="https://creative-tim.com/presentation">
                  About Us
                </a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">
                  Blog
                </a>
              </li>
              <li>
                <a href="https://www.creative-tim.com/license">
                  Licenses
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>, made with <i class="material-icons">favorite</i> by
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
          </div>
        </div>
      </footer>
    </div>
  </div>
  
  
</body>

</html>
