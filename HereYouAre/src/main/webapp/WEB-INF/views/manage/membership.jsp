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
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
  <!-- CSS Files -->
  <link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/material-dashboard.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/consulting.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/membershipMan.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/membershipPosition.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css_manage/custom.min.css" />" rel="stylesheet">
</head>
<style>
	tbody tr:nth-child(even)  { background-color:white;  }
    tbody tr:nth-child(odd)   { background-color:rgba(0, 0, 0, 0.05);}
    tr:hover td{background:rgba(38,185,154,.07);
    .column-title{font-family: "Helvetica Neue",Roboto,Arial,"Droid Sans",sans-serif;}
	
</style>
<script>
$(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

})
</script>
<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white"  style="background:black;">
      
      <div class="logo">
        <a href="main" class="simple-text logo-normal"style="color:white;">
          Here You Are
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active ">
            <a class="nav-link" href="membership" style="background-color: rgba(255,255,255,0.5);color:white;">
              <i class="material-icons">person</i>
              <p>회원관리</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="consultMange"style="color:white;">
              <i class="material-icons"style="color:white;">bubble_chart</i>
              <p>공인중개사 관리</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="community"style="color:white;">
              <i class="material-icons"style="color:white;">notifications</i>
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
            <a class="navbar-brand" href="#pablo">회원관리</a>
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
        <div class="content">
        	<div class="container-fluid">
       			 <div class="row tile_count"id="req">
		                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
			              <span class="count_top"><i class="fa fa-user"></i> 전체회원</span>
			              <div class="count">${all}</div>
			              <span class="count_bottom"><i class="green">4% </i> From last Week</span>
			            </div> 
			            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
			              <span class="count_top"><i class="fa fa-user"></i> 신규회원</span>
			              <div class="count">${newbie}</div>
			              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>3% </i> From last Week</span>
			            </div>
			            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
			              <span class="count_top"><i class="fa fa-user"></i> <a href="#req" style="color:white;">회원가입 승인요청</a></span>
			              <div class="count green">${insertReq}</div>
			              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>
			            </div>
			            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
			              <span class="count_top"><i class="fa fa-user"></i> <a href="#mod"style="color:white;">회원정보 수정요청</a></span>
			              <div class="count">${update_req}</div>
			              <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i> From last Week</span>
			            </div>
			            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count"> 
			              <span class="count_top"><i class="fa fa-user"></i> <a href="#del"style="color:white;">계정 탈퇴요청</a></span>
			              <div class="count">${delete_Req}</div>
			              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>
			            </div>
			            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
			              <span class="count_top"><i class="fa fa-user"></i> 탈퇴회원</span>
			              <div class="count">${deleted}</div>
			              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>
			            </div>
		          </div>
		          
		          <div class="col-md-12 col-sm-12 col-xs-12">
		                <div class="x_panel">
		                  <div class="x_title">
		                    <h2>가입대기 <small>Total : ${insertReq}</small></h2>
		                    <ul class="nav navbar-right panel_toolbox">
		                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
		                      </li>
		                      <li class="dropdown">
		                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
		                        <ul class="dropdown-menu" role="menu">
		                          <li><a href="#">Settings 1</a>
		                          </li>
		                          <li><a href="#">Settings 2</a>
		                          </li>
		                        </ul>
		                      </li>
		                      <li><a class="close-link"><i class="fa fa-close"></i></a>
		                      </li>
		                    </ul>
		                    <div class="clearfix"></div>
		                  </div>
		                  <div class="x_content">
		                  <p>Add class <code>bulk_action</code> to table for bulk actions options on row select</p>
		                    <div class="table-responsive">
		                      <table >
		                        <thead>
		                          <tr class="tr" style="background:rgba(52,73,94,.94);">
		                            <th style="color:white">이메일 </th>
		                            <th style="color:white">이름 </th>
		                            <th style="color:white">공인중개사번호 </th>
		                            <th style="color:white">사업자등록번호 </th>
		                            <th style="color:white">부동산 상호명</th>
		                            <th style="color:white">부동산 주소</th>
		                            <th style="color:white">부동산 전화번호</th>
		                            <th style="color:white">요청시간 </th>
		                            <th style="color:white"><span class="nobr">승인여부</span></th>
		                          </tr>
		                        </thead>
								</table>
								<div class="tbl-content">
									<table cellpadding="0" cellspacing="0" border="0">
				                        <tbody>
				                        	<c:forEach items="${insertRequest}" var="employee">
					                          <tr class="even pointer">
					                            <td>${employee.email}</td>
												<td>${employee.name}</td>
												<td>${employee.realtorNumber}</td>
												<td>${employee.ownerNumber}</td>
												<td>${employee.agencyName}</td>
												<td>${employee.agencyAddress}</td>
												<td>${employee.tel}</td>
												<td>${employee.time}</td>
												<td>
													<a href="request?email=${employee.email}">승인 |</a>
													<a href="#" > 거부</a> 
												</td>
					                          </tr>
					                        </c:forEach>
				                        </tbody>
		                      		</table>
		                      		<div id="mod" style="display:hidden"></div>
		                       </div>
		                  </div>
	                   </div>
	                </div>
          		</div>
          		<div class="col-md-12 col-sm-12 col-xs-12" style="margin-top:30px;">
		            <div class="x_panel">
		               <div class="x_title">
		                    <h2>정보수정 요청 <small>Total : ${update_req}</small></h2>
		                    <ul class="nav navbar-right panel_toolbox">
			                    <li>
			                    <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
			                    </li>
			                    <li class="dropdown">
			                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
			                      <ul class="dropdown-menu" role="menu">
			                        <li><a href="#">Settings 1</a>
			                        </li>
			                        <li><a href="#">Settings 2</a>
			                        </li>
			                      </ul>
			                    </li>
			                    <li><a class="close-link"><i class="fa fa-close"></i></a>
			                    </li>
		                    </ul>
		                    <div class="clearfix"></div>
		                  </div>
		                  <div class="x_content">
			                  <p>Add class <code>bulk_action</code> to table for bulk actions options on row select</p>
			                       <div class="table-responsive">
		                      <table >
		                        <thead>
		                          <tr class="tr" style="background:rgba(52,73,94,.94);">
		                            <th style="color:white">이메일 </th>
		                            <th style="color:white">이름 </th>
		                            <th style="color:white">공인중개사번호 </th>
		                            <th style="color:white">사업자등록번호 </th>
		                            <th style="color:white">부동산 상호명</th>
		                            <th style="color:white">부동산 주소</th>
		                            <th style="color:white">부동산 전화번호</th>
		                            <th style="color:white">요청시간 </th>
		                            <th style="color:white"><span class="nobr">승인여부</span></th>
		                          </tr>
		                        </thead>
								</table>
								<div class="tbl-content">
									<table cellpadding="0" cellspacing="0" border="0">
				                        <tbody>
				                        	<c:forEach items="${update_reqList}" var="employee">
					                          <tr class="even pointer">
					                            <td>${employee.email}</td>
												<td>${employee.name}</td>
												<td>${employee.realtorNumber}</td>
												<td>${employee.ownerNumber}</td>
												<td>${employee.agencyName}</td>
												<td>${employee.agencyAddress}</td>
												<td>${employee.tel}</td>
												<td>${employee.time}</td>
												<td>
													<a href="request?email=${employee.email}">승인 |</a>
													<a href="#" > 거부</a> 
												</td>
					                          </tr>
					                        </c:forEach>
				                        </tbody>
		                      		</table>
		                      		<div id="mod" style="display:hidden"></div>
		                       </div>
		                  </div>
			                </div>
	             	 </div>
          		</div>
          		<div class="col-md-12 col-sm-12 col-xs-12" style="margin-top:30px;">
		            <div class="x_panel">
		               <div class="x_title">
		                    <h2 id="del">탈퇴대기 <small>Total : ${delete_Req}</small></h2>
		                    <ul class="nav navbar-right panel_toolbox">
			                    <li>
			                    <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
			                    </li>
			                    <li class="dropdown">
			                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
			                      <ul class="dropdown-menu" role="menu">
			                        <li><a href="#">Settings 1</a>
			                        </li>
			                        <li><a href="#">Settings 2</a>
			                        </li>
			                      </ul>
			                    </li>
			                    <li><a class="close-link"><i class="fa fa-close"></i></a>
			                    </li>
		                    </ul>
		                    <div class="clearfix"></div>
		                  </div>
		                  <div class="x_content">
		                  <p>Add class <code>bulk_action</code> to table for bulk actions options on row select</p>
		                       <div class="table-responsive">
		                      <table >
		                        <thead>
		                          <tr class="tr" style="background:rgba(52,73,94,.94);">
		                            <th style="color:white">이메일 </th>
		                            <th style="color:white">공인중개사번호</th>
		                            <th style="color:white">탈퇴이유</th>
		                            <th style="color:white">직접입력</th>
		                            <th style="color:white">가입시간 </th>
		                            <th style="color:white">탈퇴요청시간</th>
		                            <th style="color:white"><span class="nobr">승인여부</span></th>
		                          </tr>
		                        </thead>
								</table>
								<div class="tbl-content">
									<table cellpadding="0" cellspacing="0" border="0">
				                        <tbody>
				                        	<c:forEach items="${delete_ReqList}" var="employee">
					                          <tr class="even pointer">
					                            <td>${employee.email}</td>
												<td>${employee.realtorNumber}</td>
												<td>${employee.reason}</td>
												<td>${employee.reason_write}</td>
												<td>${employee.time}</td>
												<td>${employee.requestTime}</td>
												<td>
													<a href="request?email=${employee.email}">승인 |</a>
													<a href="#" > 거부</a> 
												</td>
					                          </tr>
					                        </c:forEach>
				                        </tbody>
		                      		</table>
		                      		<div id="mod" style="display:hidden"></div>
		                       </div>
		                  </div>
	                </div>
	              </div>
          		</div>
        </div>
      </div>
       
     
    </div>
    <div class="footer" style="margin-top:30px;width:100%; height:100px; border-top:1px solid white; text-align:center; margin-left:0px;margin-right:0px;"> 
     	<p style="text-align:center;">HERE YOU ARE</p>
     </div>
  </div>

</body>
</html>