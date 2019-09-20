<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>
    Material Dashboard by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  
  <!-- CSS Files -->
  <link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/material-dashboard.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/test.css" />" rel="stylesheet">
  
  <!-- heart list -->
  <script src="resources/js/get.js"></script>
</head>

<body>
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" >
      <div class="logo">
       <a href="main" class="simple-text logo-normal">
          Here You Are
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
         
          <li class="nav-item ">
            <a class="nav-link" href="user">
              <i class="material-icons">person</i>
              <p>개인정보</p>
            </a>
          </li>

          <li class="nav-item ">
            <a class="nav-link" href="consulting">
              <i class="material-icons">library_books</i>
              <p>상담내역</p>
            </a>
          </li>
          <li class="nav-item active ">
            <a class="nav-link" href="get"style="background-color: dodgerblue;">
              <i class="material-icons">favorite</i>
              <p>찜목록</p>
            </a>
          </li>

          <li class="nav-item ">
            <a class="nav-link" href="notifications">
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
            <a class="navbar-brand" href="#pablo">찜목록</a>
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
      <div class="content" style="padding-top:0px;">
        <div class="container-fluid">
          <div class="container-fluid">
            <div class="card card-plain">
            
            <!-- heart list START -->
			<div class="container">
			<input type="checkbox" id="chkAll"><span>전체선택</span>
			  <form action="deleteChoose" method="post">
			  <input type="submit" id="deleteAll" value="선택삭제">
			  <div class="row">
			    <c:forEach items="${join}" var="join">
			    <div class="col-lg-4 col-sm-6 mb-4" class="box" style="margin-top:50px;">
			      <div class="card h-100">
			      <input type="checkbox" name="chkbox" value="${join.id}">
			      <!--<button type="button" id="deleteBtn">삭제</button>-->
			        <div class="card-body">
			          <h4 class="card-title" style="margin-bottom: 10px;">${join.id}</h4>
			          <input type="hidden" name="id" value="${join.id}">
			          <p class="card-text">${join.rentType}<br>${join.areaPrice}<br>${join.areaSize}<br>${join.areaAddress}</p>
			        </div>
			      </div>
			    </div>
			    </c:forEach>
			  </div><!-- row -->
			  </form>
			  
			</div><!-- container -->
            <!-- heart list END -->
           			
            </div>
          </div>
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
            <a href="https://www.creative-tim.com" target="_blank" style="color:dodgerblue;">Here You Are</a> for a better web.
          </div>
        </div>
      </footer>
    </div>
  </div>

  
</body>

</html>
