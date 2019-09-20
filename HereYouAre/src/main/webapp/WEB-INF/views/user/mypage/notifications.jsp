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
  
  <!-- CSS Files -->
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/material-dashboard.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/notifications.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/docs/documentation.html" />">
  <script src="<c:url value="resources/js/noteSearch.js?ver=4"/>"></script>
 
</head>
<style>
	#search{
		margin-bottom:20px; 
		margin-top:20px;
			
		border-top:rgba(0,0,0,0.0);
		border-left:rgba(0,0,0,0.0);
		border-right:rgba(0,0,0,0.0);
		 
		border-bottom:2px solid dodgerblue; 
		
	}
	.input{
		margin-left:8px; 
		margin-right:8px; 
		background:#FCFCFC; 
		border:1px solid #E5E5E5; 
		color:#999999;
		margin-right:0px;
		box-shadow:1px #999999;  
		padding-left:9px;
		padding-right:9px;
	}
</style>
<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white">
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
          <li class="nav-item ">
            <a class="nav-link" href="get">
              <i class="material-icons">bubble_chart</i>
              <p>찜목록</p>
            </a>
          </li>

          <li class="nav-item active ">
            <a class="nav-link" href="notifications" style="background-color: dodgerblue;">
              <i class="material-icons">notifications</i>
              <p>알림</p>
            </a>
          </li>

        </ul>
      </div>
    </div>
    <div class="main-panel">
      
      <div class="content" style="padding-top:0px;">
        <div class="container-fluid">
          <div class="card">
				 <div class="container" >
				 		<input type="text" id="search" style=";"value = "" placeholder="search...">
						
						<botton type="botton" id="submit"> 
							<i class="material-icons" style="margin-top:5px;position: relative;top: 7px;cursor:pointer;">search</i>
						</botton>
					  	<table class="table table--shaded" style="margin-bottom:50px; border-top: 2px solid #c6d5e3;">
					  	<p>
							<input type="checkbox" style="margin-left:8px; margin-right:8px;">
						    <input type="submit" class="input" value="읽음" >
					        <input type="submit" class="input" value="삭제">
					  	</p>
					  	
					    <tbody class="table__body">
					     	<c:forEach items="${noteList}" var="note" varStatus="status">
						  		<tr>
						  			<c:choose>
						  				<c:when test="${empty note.view}" >
							  				<td class="table__cell table__cell--checkbox table__cell--no-wrap">
									          <input type="checkbox">
									        </td>
									        <td style="color:#1a73e8"><i class="fa fa-envelope-o" aria-hidden="true"></i></td>
								  			<td style="color:#1a73e8">${note.sender}</td>
								  			<td style="color:#1a73e8"><a href="note_view?id=${note.id}" style="color:#1a73e8">${note.content}</a></td>
								  			<td style="color:#1a73e8">${note.alerttime}</td>
								  			
							  			</c:when>
							  			 
							  			<c:when test="${note.view eq 1}">
							  				<td class="table__cell table__cell--checkbox table__cell--no-wrap">
									          <input type="checkbox">
									        </td>
									        <td style="color:#C3C3C3"><i class="fa fa-envelope-open-o" aria-hidden="true"></i></td>
								  			<td style="color:black;">${note.sender}</td>
								  			<td ><a href="note_view?id=${note.id}" style="color:black;">${note.content}</a></td>
								  			<td style="color:black;">${note.alerttime}</td>
								  			
							  			</c:when>
							  			
						  			</c:choose>
						  			
						  		</tr>
					  		</c:forEach>
					  		
					    </tbody>
					  </table>
				 </div>          
          </div>
        </div>
      </div>
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">알림</a>
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
