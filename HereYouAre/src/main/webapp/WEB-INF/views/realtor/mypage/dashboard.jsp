<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />

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
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
  <!-- CSS Files -->
  <link href="<c:url value="/resources/real_css/demo.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/real_css/material-dashboard.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/test.css" />" rel="stylesheet">
   <link href="<c:url value="/resources/css/modal_todo.css" />" rel="stylesheet">
</head>
<style>
 	   body{
 	   	background-color:#eee;
 	   }       
 	   #edit_memo{
 	   	disable:true;
 	   }
 	   #plus_todo{
 	   	display:none;
 	   }
</style>

<body>
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <div class="logo">
        <a href="main" class="simple-text logo-normal">
          Here - You Are 
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active  ">
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
            <a class="navbar-brand" href="#pablo">Dashboard</a>
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
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-danger card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">record_voice_over</i>
                  </div>
                  <p class="card-category">신청완료</p>
                  	<ul id="skill" style="height:18px; margin-top:30px;">
						<li><span class="bar graphic-design"></span></li>
					</ul>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <a href="#pablo">접수/신청</a>
                  </div>
                </div>
              </div>
            </div>
           <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">question_answer</i>
                  </div>
                  <p class="card-category">진행완료</p>
                  	<ul id="skill" style="height:18px; margin-top:30px;">
						<li><span class="bar html-css"></span></li>
					</ul>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <a href="#pablo">상담완료/접수</a>
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
                  <p class="card-category">평가완료</p>
                  	<ul id="skill" style="height:18px; margin-top:30px;">
						<li><span class="bar jquery"></span></li>
					</ul>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <a href="#pablo">평가/상담완료</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-info card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">done</i>
                  </div>
                  <p class="card-category">매칭완료</p>
                  	<ul id="skill" style="height:18px; margin-top:30px;">
						<li><span class="bar wordpress"></span></li>
					</ul>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <a href="#pablo">매칭/평가</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6 col-md-12">
              <div class="card">
                <div class="card-header card-header-tabs card-header-primary">
                  <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                      <span class="nav-tabs-title">TODO 리스트</span>
                      <ul class="nav nav-tabs" data-tabs="tabs">
                        <li class="nav-item">
                          <a class="nav-link active" id="toggle" style="cursor:pointer">
                            <i class="material-icons">add</i> plus
                            <div class="ripple-container"></div>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="card-body">
                  <div class="tab-content">
                    <div class="tab-pane active" id="profile">
                      <table class="table">
                        <tbody>
                           <c:forEach items="${read_list}" var="read_list" >
	                          <tr>
	                            <td>
	                              <div class="form-check">
	                                <label class="form-check-label">
	                                  <input class="form-check-input" type="checkbox" value="" checked>
	                                  <span class="form-check-sign">
	                                    <span class="check"></span>
	                                  </span>
	                                </label>
	                              </div>
	                            </td>
	                            <td style="width:100%">${read_list.content}</td> 
	                            <td class="td-actions text-right">
	                              <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-link btn-sm">
	                                <i class="material-icons">edit</i>
	                              </button>
	                              <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-link btn-sm">
	                                <a href="delete_todoList?id=${read_list.id}" style="color:#F44336">
	                                	<i class="material-icons">close</i>
                                	</a>
	                              </button>
	                            </td>
	                          </tr>
	                       </c:forEach>
	                       <form action="create_todoList" method="post">
	                       		<tr id="plus_todo">
		                        	<td ></td>
		                        	<td ><input type="text" name="content" style="width:100%;"></td>
		                        	<td ><input type="submit" value="추가"></td>
		                        </tr>   
	                       </form>
                        </tbody>
                      </table>
                    </div>
                    <div class="tab-pane" id="messages">
                      <table class="table">
                        <tbody>
                          <tr>
                            <td>
                              <div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="checkbox" value="" checked>
                                  <span class="form-check-sign">
                                    <span class="check"></span>
                                  </span>
                                </label>
                              </div>
                            </td>
                            <td>Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit
                            </td>
                            <td class="td-actions text-right">
                              <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-link btn-sm">
                                <i class="material-icons">edit</i>
                              </button>
                              <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-link btn-sm">
                                <i class="material-icons">close</i>
                              </button>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="checkbox" value="">
                                  <span class="form-check-sign">
                                    <span class="check"></span>
                                  </span>
                                </label>
                              </div>
                            </td>
                            <td>Sign contract for "What are conference organizers afraid of?"</td>
                            <td class="td-actions text-right">
                              <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-link btn-sm">
                                <i class="material-icons">edit</i>
                              </button>
                              <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-link btn-sm">
                                <i class="material-icons">close</i>
                              </button>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="tab-pane" id="settings">
                      <table class="table">
                        <tbody>
                          <tr>
                            <td>
                              <div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="checkbox" value="">
                                  <span class="form-check-sign">
                                    <span class="check"></span>
                                  </span>
                                </label>
                              </div>
                            </td>
                            <td>Lines From Great Russian Literature? Or E-mails From My Boss?</td>
                            <td class="td-actions text-right">
                              <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-link btn-sm">
                                <i class="material-icons">edit</i>
                              </button>
                              <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-link btn-sm">
                                <i class="material-icons">close</i>
                              </button>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="checkbox" value="" checked>
                                  <span class="form-check-sign">
                                    <span class="check"></span>
                                  </span>
                                </label>
                              </div>
                            </td>
                            <td>Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit
                            </td>
                            <td class="td-actions text-right">
                              <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-link btn-sm" id="edit">
                                <i class="material-icons">edit</i>
                              </button>
                              <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-link btn-sm">
                                <i class="material-icons">close</i>
                              </button>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="checkbox" value="" checked>
                                  <span class="form-check-sign">
                                    <span class="check"></span>
                                  </span>
                                </label>
                              </div>
                            </td>
                            <td>Sign contract for "What are conference organizers afraid of?"</td>
                            <td class="td-actions text-right">
                              <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-link btn-sm">
                                <i class="material-icons">edit</i>
                              </button>
                              <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-link btn-sm">
                                <i class="material-icons">close</i>
                              </button>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6 col-md-12">
              <div class="card">
                <div class="card-header card-header-warning">
                  <h4 class="card-title">TOP5</h4>
                  <p class="card-category">인기매물</p>
                </div>
                <div class="card-body table-responsive">
                  <table class="table table-hover">
                    <thead class="text-warning">
                      <th>매물ID</th>
                      <th>매물위치</th>
                      <th>하트</th>
                      <th>상담건수</th>
                    </thead>
                    <tbody>
                      <tr>
                        <td>10</td>
                        <td>마포구 연남동</td>
                        <td>30</td>
                        <td>577</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>마포구 연남동</td>
                        <td>29</td>
                        <td>355</td>
                      </tr>
                      <tr>
                        <td>31</td>
                        <td>마포구 연남동</td>
                        <td>23</td>
                        <td>256</td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>마포구 연남동</td>
                        <td>22</td>
                        <td>100</td>
                      </tr>
                      <tr>
                        <td>44</td>
                        <td>마포구 연남동</td>
                        <td>2</td>
                        <td>1</td>  
                      </tr>
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
<script type="text/javascript">
	$('#toggle').click(function () {  
	    if($("#plus_todo").css("display") == "none"){   
	        $('#plus_todo').show();  
	    } else {  
	        $('#plus_todo').hide();  
	    }  
	});  
</script> 
</body>
</html>

    