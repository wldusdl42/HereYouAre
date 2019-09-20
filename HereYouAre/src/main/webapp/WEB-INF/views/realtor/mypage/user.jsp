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
		.sidebar{
		z-index: 4;
		}  
		.overlay{
			z-index: 3;
		}
</style>
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
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">개인정보</h4>
                  <p class="card-category">이메일은 수정하실 수 없습니다.</p>
                </div>
                <div class="card-body">
                
                
	                  <form action="real_update" method="post">
	                  	<input type="hidden" name="email"  value="${bm.email}">
	                    <div class="row">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">이메일</label>
	                          <input type="text" class="form-control" name="email" value="${bm.email}"disabled ="true">
	                          
	                        </div>
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">이름</label>
	                          <input type="text" class="form-control" name="name"  value="${bm.name}">
	                        </div>
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">생년월일</label>
	                          <input type="text" class="form-control" name="age"  value="${bm.age}">
	                        </div>
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">주소</label>
	                          <input type="text" class="form-control" name="adress"   value="${bm.adress}">
	                        </div>
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">성별</label>
	                          <input type="text" class="form-control" name="sex"  value="${bm.sex}">
	                        </div>
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-md-12">
	                        <div class="form-group">
	                          <label class="bmd-label-floating">전화번호</label>
	                          <input type="text" class="form-control" name="phone" value="${bm.phone}">
	                        </div> 
	                      </div>
	                    </div>
	                    <button type="submit" class="btn btn-primary pull-right">Update Profile</button>
	                    <div class="clearfix"></div>
	                  </form>
                  
                  
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card card-profile">
                <div class="card-avatar">
                  <a href="#pablo">
                    <c:if test="${bm.sex eq '여성'}">
                    	<img class="img" src="<c:url value="/resources/img/woman.png" />" />
                    </c:if>
                    <c:if test="${bm.sex eq '남성'}">
                    	<img class="img" src="<c:url value="/resources/img/man.png" />" />
                    </c:if>
                  </a>
                </div>
                <div class="card-body">
                  <h6 class="card-category text-gray">${bm.name} / 공인중개사</h6>
                  <h4 class="card-title">${bm.agencyName}</h4>
                  <p class="card-description" style="text-align:left;">
                   	<ul calss="left"style="list-style:none; padding-left:0px;">
                   		<li>전화번호 | ${bm.tel}</li>
                   		<li>사업자등록번호 | ${bm.ownerNumber}</li>
                   		<li>공인중개사등록번호 | ${bm.realtorNumber}</li>
                   		<li>자치구 | 서울특별시 ${bm.agencyAddress}</li>
                   	</ul>
                  </p>
                  <a href="real_update_request" class="btn btn-primary btn-round">Update</a><!-- 페이지 따로 주기 모달? -->
                </div>
              </div>
            </div>
          </div>
        </div>
       
     	 <div class="panel">
              <a href="#login_form" id="login_pop">계정탈퇴요청</a>
              <a href="#join_form" id="join_pop">비밀번호변경</a>
         </div>
       	 
       	 <!-- popup form #1 -->
        <a href="#x" class="overlay" id="login_form"></a>
        <div class="popup">
            <h2>본인인증</h2>
            <p>비밀번호를 입력해 주세요:)</p>
            
            <form action="real_delete" method="post">
            	<div>
	                <label for="password">비밀번호</label>
	                <input type="password" name="password" value="1234"/>
	            </div>
	            <p>${bm1}</p>
			 	<input type="submit" value="확인">
            </form>
            <a class="close" href="#close"></a>
        </div>

        <!-- popup form #2 -->
        <a href="#x" class="overlay" id="join_form"></a>
        <div class="popup">
            <h2>본인인증</h2>
            <p>비밀번호를 입력해 주세요:)</p>
            
            <form action="pwCheck" method="post">
            	<div>
	                <label for="password">비밀번호</label>
	                <input type="password" name="password" value="1234"/>
	            </div>
	            <p>${bm1}</p>
			 	<input type="submit" value="확인">
            </form>
            <a class="close" href="#close"></a>
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
