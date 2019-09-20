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
  <link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/matr.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/consulting.css" />" rel="stylesheet">  
  <link href="<c:url value="/resources/css/test.css" />" rel="stylesheet">
    
</head>
<script type="text/javascript">
	$(window).on("load resize ", function() {
	var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	$('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
</script>
<script type="text/javascript">
	function sm() {
		document.frm.submit();
	}
</script>
<body class="">
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

          <li class="nav-item active ">
            <a class="nav-link" href="consulting" style="background-color: dodgerblue;">
              <i class="material-icons">library_books</i>
              <p>상담내역</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="get">
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
            <a class="navbar-brand" href="#pablo">상담내역</a>
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
        <div class="content">
        <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">record_voice_over</i>
                  </div>
                  <p class="card-category">신청한 상담</p>
                  <h3 class="card-title">${status0}
                    <small>건</small>
                  </h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <a href="#pablo">더보기</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-success card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">how_to_reg</i>
                  </div>
                  <p class="card-category">접수된상담</p>
                  <h3 class="card-title">${status1}</h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <a href="#pablo">더보기</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-danger card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">create</i>
                  </div>
                  <c:set var="i" value="${status3 + status2}" />
                  <p class="card-category">공인중개사 평가</p>
                  <h3 class="card-title">${status3}/${i}</h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <a href="#pablo">더보기</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-info card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">where_to_vote</i>
                  </div>
                  <p class="card-category">매칭</p>
                  <h3 class="card-title">${status4}</h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <a href="#pablo">더보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary"style="background: dodgerblue;">
                  <h4 class="card-title ">
                  		<form name="frm" action="consulting2" method="post">
                  			<select name="consultStatus" onchange="sm()" style="background:rgba(0,0,0,0);border:1px solid rgba(0,0,0,0); color:white;">
							    <option value="typeAll" selected style="color:black;">상담현황</option>
							    <option value="type00" style="color:black;">신청완료</option>
							    <option value="type01" style="color:black;">접수완료</option>
							    <option value="type02" style="color:black;">상담완료</option>
							    <option value="type03" style="color:black;">평가완료</option>
							    <option value="type04" style="color:black;">매칭완료</option>
							</select>
      					</form>
                  </h4>
                  <p class="card-category">상태별로 상담현황을 확인하실 수 있습니다</p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table">
						<div class="tbl-header">
						  <table cellpadding="0" cellspacing="0" border="0">
						    <thead>
						      <tr>
						        <th style="font-size:15px;">공인중개사</th>
						        <th style="font-size:15px;">매물</th>
						        <th style="font-size:15px;">매물위치</th>
						        <th style="font-size:15px;">문의내용</th>
						        <th style="font-size:15px;">신청시간</th>
						        <th style="font-size:15px;">상태</th>
						      </tr>
						    </thead>
						  </table>
						</div>
						<div class="tbl-content">
						  <table cellpadding="0" cellspacing="0" border="0">
						    <tbody>
						    <c:set var="i" value="0" />
						    	<c:forEach items="${consultList}" var="consult" >
										<tr>
											<td>${consult.recipient}</td>
											<td>${array[i][2]} ${array[i][3]} ${array[i][5]}m2 - ${array[i][6]}층</td>
											<td>${array[i][7]}</td>
											<td>${consult.content}</td>
											<td>${consult.requestTime}</td>
											<c:if test="${consult.consultStatus eq 0}">
												<td><input type="button" value="신청완료"></td>
											</c:if>
											<c:if test="${consult.consultStatus eq 1}">
												<td><input type="button" value="접수완료"></td>
											</c:if>
											<c:if test="${consult.consultStatus eq 2}">
												<td><input type="button" value="평가하기"></td>
											</c:if>
											<c:if test="${consult.consultStatus eq 3}">
												<td><input type="button" value="평가완료"></td>
											</c:if>
											<c:if test="${consult.consultStatus eq 4}">
												<td><input type="button" value="매칭완료"></td>
											</c:if>
										</tr>
										<c:set var="i" value="${i + 1}" />
									</c:forEach>
						    </tbody>
						  </table>
						</div>
                     </table>
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