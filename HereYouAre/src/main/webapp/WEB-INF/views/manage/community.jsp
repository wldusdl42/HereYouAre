<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />

  <title>
    Material Dashboard by Creative Tim
  </title>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  
  <!-- CSS Files -->
  <link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/material-dashboard2.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/notifications.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/docs/documentation.html" />">
  <link href="<c:url value="/resources/css/community.css" />" rel="stylesheet">
  <script src="<c:url value="resources/js/community.js"/>"></script>
  <script src="<c:url value="resources/ckeditor/ckeditor.js"/>"></script>
</head>
<style>
 body{
 	background:#2A3F54;
 }
</style>
<body class="">
  <div class="wrapper ">
  
      <div class="sidebar" data-color="purple" data-background-color="white"style="background:black;">
     
      <div class="logo">
        <a href="main" class="simple-text logo-normal"style="color:white;">
          Here You Are
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item ">
            <a class="nav-link" href="membership"style="color:white;">
              <i class="material-icons"style="color:white;">person</i>
              <p>회원관리</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="consultMange"style="color:white;">
              <i class="material-icons"style="color:white;">bubble_chart</i>
              <p>공인중개사 관리</p>
            </a>
          </li>
          <li class="nav-item active ">
            <a class="nav-link" href="community" style="background-color: rgba(255,255,255,0.5); color:white;">
              <i class="material-icons">notifications</i>
              <p>커뮤니티</p>
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
            <a class="navbar-brand" href="#pablo" style="color:#ECF0F1!important;">커뮤니티</a>
          </div>
          <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content" style="padding-top:0px;">
         <div class="box1">
			<nav class="addNav">
			  <ul>
       			<li><div class="addNotice" onclick="addNotice()">공지사항 등록</div></li>
       			<li><div class="addHallofFame" onclick="addHallofFame()">명예의 전당 등록</div></li>
			  </ul>
			</nav>
		</div>
	      <div class="box3">
	      
	      </div>
      </div>
<!--       <footer class="footer"> -->
<!--         <div class="container-fluid"> -->
<!--           <nav class="float-left"> -->
<!--             <ul> -->
<!--               <li> -->
<!--                 <a href="https://www.creative-tim.com"> -->
<!--                   Creative Tim -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="https://creative-tim.com/presentation"> -->
<!--                   About Us -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="http://blog.creative-tim.com"> -->
<!--                   Blog -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="https://www.creative-tim.com/license"> -->
<!--                   Licenses -->
<!--                 </a> -->
<!--               </li> -->
<!--             </ul> -->
<!--           </nav> -->
<!--           <div class="copyright float-right"> -->
<!--             &copy; -->
<!--             <script> -->
<!-- //               document.write(new Date().getFullYear()) -->
<!--             </script>, made with <i class="material-icons">favorite</i> by -->
<!--              <a href="https://www.creative-tim.com" target="_blank" style="color:dodgerblue;">Here You Are</a> for a better web. -->
<!--           </div> -->
<!--         </div> -->
<!--       </footer> -->
    </div>
  </div>

</body>

</html>
