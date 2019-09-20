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
  <link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/matr.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pwCheck.css" />" rel="stylesheet">


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
	.sidebar{
		z-index: 4;
	}  
	.overlay{
		z-index: 3;
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
            <div class="col-md-8">
              <div class="card" >
                <div class="card-header card-header-primary"style="background: dodgerblue;"  >
                  <h4 class="card-title" >프로필</h4>
                  <p class="card-category" >이메일은 수정하실 수 없습니다.</p>
                </div>
                <div class="card-body" >
                
                  <form action="user_mod" method="post">
                  
	                   <input type="hidden" name="email" value="${bm.email}">
	                    <div class="row" style="widtha:100%">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">이메일</label>
	                          <input type="text" disabled ="true"name="email" class="form-control" value="${bm.email}">
	                        </div>
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">이름</label>
	                          <input type="text" name="name" class="form-control" value="${bm.name}">
	                        </div>
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">생년월일</label>
	                          <input type="text" name="age" class="form-control"  value="${bm.age}">
	                        </div>
	                      </div>
	                    </div>
	                   <div class="row">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">주소</label>
	                          <input type="text" name="adress" class="form-control" value="${bm.adress}">
	                        </div>
	                      </div>
	                    </div>
	                   <div class="row">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">성별</label>
	                          <input type="text" name="sex" class="form-control" value="${bm.sex}">
	                        </div>
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">전화번호</label>
	                          <input type="text" name="phone" class="form-control" value="${bm.phone}">
	                        </div>
	                      </div>
	                    </div>
	                   
	                    
	              		<button type="submit" id="opener-1" class="btn btn-primary pull-right" style="background-color: dodgerblue;">Update Profile</button>
                  </form>
                  
                </div>
              </div>
                
	              <div class="panel">
	                	<a href="#login_form" id="login_pop">계정탈퇴</a>
	                	<a href="#join_form" id="join_pop">비밀번호변경</a>
	           	  </div>
         	  
            </div>
          </div>
        </div>
      </div>
        <!-- popup form #1 -->
        <a href="#x" class="overlay" id="login_form"></a>
        <div class="popup">
            <h2>본인인증</h2>
            <p>비밀번호를 입력해 주세요:)</p>
            
            <div>
                <label for="password">비밀번호</label>
                <input type="password" id="password" value="dbsk0603" />
            </div>
             <a href="delete?email=${bm.email}">확인 </a>

            <a class="close" href="#close"></a>
        </div>

        <!-- popup form #2 -->
        <a href="#x" class="overlay" id="join_form"></a>
        <div class="popup">
            <h2>본인인증</h2>
            <p>Please enter your details here</p>
            
            <div>
                <label for="pass">Password</label>
                <input type="password" id="pass" value="dbsk0603" />
            </div>
           
            <input type="button" value="확인" />

            <a class="close" href="#close"></a>
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
