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
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <script type="text/javascript" src="//code.jquery.com/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-2.2.4.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-1.12.4.min.js"></script>
  <!-- CSS Files -->
  <link href="<c:url value="/resources/real_css/demo.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/real_css/material-dashboard.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/consulting.css" />" rel="stylesheet">
  
</head>
<script type="text/javascript">
	function sm() {
		document.frm.submit();
	}
</script>
<style>
	th{
		padding-top:0px;
	}
	body { background: #eee ; }
</style>
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
          <li class="nav-item ">
            <a class="nav-link" href="real_profile">
              <i class="material-icons">person</i>
              <p>개인정보</p>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="real_consulting">
              <i class="material-icons">library_books</i>
              <p>상담관리</p>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="building">
               <i class="material-icons">store</i>
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
            <a class="navbar-brand" href="#pablo">매물관리</a>
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
          <div class="row">
            <div class="col-md-12">
              <div class="card card-plain">
                <div class="card-header card-header-primary">
                  <h4 class="card-title mt-0">등록한 매물</h4>
                  <p class="card-category"> ID는 매물을 구분하기위한 코드번호입니다.</p>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                      <thead class="">
                        <th style="width:50px; padding-left:20px;">id</th>
                        <th style="text-align:center;">빌딩타입</th> 
                        <th style="text-align:center;">랜트타입</th>
                        <th style="text-align:center;">가격</th>
                        <th style="text-align:center;">평수</th>
                        <th style="text-align:center;">층수</th>
                        <th style="text-align:center;">위치</th>
                      </thead>
                      <tbody>
                        <c:forEach items="${ta}" var="consult" >
							<tr>
								<td style="width:50px; padding-left:20px;">${consult.id}</td>
								<td style="text-align:center;">${consult.bulidingType}</td>
								<td style="text-align:center;">${consult.rentType}</td>
								<td style="text-align:center;">${consult.areaPrice}</td>
								<td style="text-align:center;">${consult.areaSize}</td>
								<td style="text-align:center;">${consult.floor}</td>
								<td style="text-align:center;">${consult.areaAddress}</td>
							</tr>
						</c:forEach>
                      </tbody>
                    </table>
                </div>
              </div>
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
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <div class="fixed-plugin">
   
  </div>
  
</body>

</html>
