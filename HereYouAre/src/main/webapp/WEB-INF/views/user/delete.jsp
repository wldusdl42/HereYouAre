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
  <link href='https://fonts.googleapis.com/css?family=Oswald|Bitter|Open+Sans:400,300' rel='stylesheet' type='text/css'>
   <!-- CSS Files -->
  <link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/matr.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pwCheck.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/delete.css" />" rel="stylesheet">

</head>
<style>
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
          
          <li class="nav-item active ">
            <a class="nav-link" href="user" style="background-color: dodgerblue;">
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
            <a class="navbar-brand" href="#pablo">개인정보</a>
          </div>
          <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
              <li class="nav-item dropdown">
                <a class="nav-link" style="padding-top:0px;"href="logout?uri=${pageContext.request.requestURI}" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
         	<form action="delete_process" id="js-form" method="post">
				<input type="hidden" name="email" value="${bm.email}">
				<input type="hidden" name="age" value="${bm.age}">
				<input type="hidden" name="sex" value="${bm.sex}">
				<input type="hidden" name="time" value="${bm.time}">
				<input type="hidden" name="type" value="${bm.type}">
				 
				  <div class="dropdown">
				    <label for="select-choice">회원탈퇴 이유를 선택해 주세요:)</label>
				    <select name="reason" id="select-choice">
				      <option value="이메일 변경">이메일 변경을 위해</option>
				      <option value="이용률 감소">이용률 감소</option>
				      <option value="타사이트 유사서비스 이용">타 사이트의 유사서비스 이용중</option>
				      <option value="기타">기타</option>
				    </select>
				  </div>
				  <div class="message">
				    <label for="textarea">직접입력</label>
				    <textarea cols="40" rows="8" name="reason_write" id="textarea" ></textarea>
				  </div>
				
				  <div class="submit">
				    <input type="submit" value="Submit" />
				  </div>
			</form>
        </div>
      </div>

      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
               <li>
                <a href="#">
                  Here You Are
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
