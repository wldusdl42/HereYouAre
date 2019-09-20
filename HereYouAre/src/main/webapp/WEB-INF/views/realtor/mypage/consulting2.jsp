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
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <!-- CSS Files -->
  <link href="<c:url value="/resources/css/modal.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/real_css/demo.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/real_css/material-dashboard.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/consulting.css" />" rel="stylesheet">
  
</head>
<script type="text/javascript">
	function sm() {
		document.frm.submit();
	}
	function self_introduction($evaluation, $evaluation_reason) {
        $('#evaluation').val($evaluation);
        $('#evaluation_reason').val($evaluation_reason);
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
          <li class="nav-item active">
            <a class="nav-link" href="real_consulting">
              <i class="material-icons">library_books</i>
              <p>상담관리</p>
            </a>
          </li>
          <li class="nav-item">
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
            <a class="navbar-brand" href="#pablo">Table List</a>
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
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">how_to_reg</i>
                  </div>
                  <p class="card-category">신청</p>
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
                    <i class="material-icons">store</i>
                  </div>
                  <p class="card-category">접수</p>
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
                    <i class="material-icons">domain</i>
                  </div>
                  <c:set var="i" value="${status3 + status2}" />
                  <p class="card-category">평가</p>
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
                    <i class="material-icons">thumb_up</i>
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
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">
                  	   <c:if test="${tt eq 'typeAll'}">
                  			<form name="frm" action="real_consulting2" method="post">
	                  			<select name="consultStatus" onchange="sm()" style="background:rgba(0,0,0,0);border:1px solid rgba(0,0,0,0);color:white;">
								    <option value="typeAll" selected style="color:black;">상담현황</option>
								    <option value="type00" style="color:black;">신청내역</option>
								    <option value="type01" style="color:black;">접수완료</option>
								    <option value="type02" style="color:black;">상담완료</option>
								    <option value="type03" style="color:black;">평가완료</option>
								    <option value="type04" style="color:black;">매칭완료</option>
								</select>
	      					</form>
                  		</c:if>
                  		<c:if test="${tt eq 'type00'}">
                  			<form name="frm" action="real_consulting2" method="post">
	                  			<select name="consultStatus" onchange="sm()" style="background:rgba(0,0,0,0);border:1px solid rgba(0,0,0,0);color:white;">
								    <option value="typeAll" style="color:black;">상담현황</option>
								    <option value="type00" selected style="color:black;">신청내역</option>
								    <option value="type01" style="color:black;">접수완료</option>
								    <option value="type02" style="color:black;">상담완료</option>
								    <option value="type03" style="color:black;">평가완료</option>
								    <option value="type04" style="color:black;">매칭완료</option>
								</select>
	      					</form>
                  		</c:if>
                  		<c:if test="${tt eq 'type01'}">
                  			<form name="frm" action="real_consulting2" method="post">
	                  			<select name="consultStatus" onchange="sm()" style="background:rgba(0,0,0,0);border:1px solid rgba(0,0,0,0);color:white;">
								    <option value="typeAll" style="color:black;">상담현황</option>
								    <option value="type00" style="color:black;">신청내역</option>
								    <option value="type01" selected style="color:black;">접수완료</option>
								    <option value="type02" style="color:black;">상담완료</option>
								    <option value="type03" style="color:black;">평가완료</option>
								    <option value="type04" style="color:black;">매칭완료</option>
								</select>
	      					</form>
                  		</c:if>
                  		<c:if test="${tt eq 'type02'}">
                  			<form name="frm" action="real_consulting2" method="post">
	                  			<select name="consultStatus" onchange="sm()" style="background:rgba(0,0,0,0);border:1px solid rgba(0,0,0,0);color:white;">
								    <option value="typeAll" style="color:black;">상담현황</option>
								    <option value="type00" style="color:black;">신청내역</option>
								    <option value="type01" style="color:black;">접수완료</option>
								    <option value="type02" selected style="color:black;">상담완료</option>
								    <option value="type03" style="color:black;">평가완료</option>
								    <option value="type04" style="color:black;">매칭완료</option>
								</select>
	      					</form>
                  		</c:if>
                  		<c:if test="${tt eq 'type03'}">
                  			<form name="frm" action="real_consulting2" method="post">
	                  			<select name="consultStatus" onchange="sm()" style="background:rgba(0,0,0,0);border:1px solid rgba(0,0,0,0);color:white;">
								    <option value="typeAll" style="color:black;">상담현황</option>
								    <option value="type00" style="color:black;">신청내역</option>
								    <option value="type01" style="color:black;">접수완료</option>
								    <option value="type02" style="color:black;">상담완료</option>
								    <option value="type03" selected style="color:black;">평가완료</option>
								    <option value="type04" style="color:black;">매칭완료</option>
								</select>
	      					</form>
                  		</c:if>
                  		<c:if test="${tt eq 'type04'}">
                  			<form name="frm" action="real_consulting2" method="post">
	                  			<select name="consultStatus" onchange="sm()" style="background:rgba(0,0,0,0);border:1px solid rgba(0,0,0,0);color:white;">
								    <option value="typeAll" style="color:black;">상담현황</option>
								    <option value="type00" style="color:black;">신청내역</option>
								    <option value="type01" style="color:black;">접수완료</option>
								    <option value="type02" style="color:black;">상담완료</option>
								    <option value="type03" style="color:black;">평가완료</option>
								    <option value="type04" selected style="color:black;">매칭완료</option>
								</select>
	      					</form>
                  		</c:if> 
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
						        <th style="font-size:15px; width:80px;">매물</th>
						        <th style="font-size:15px;">신청자</th>
						        <th style="font-size:15px;">문의내용</th>
						        <th style="font-size:15px;">상담유형</th>
						        <th style="font-size:15px;">연락처</th>
						        <th style="font-size:15px;">신청시간</th>
						        <th style="font-size:15px;">상태</th>
						      </tr>
						    </thead>
						  </table>
						</div>
						<div class="tbl-content">
						  <table cellpadding="0" cellspacing="0" border="0">
						    <tbody>
						    	<c:if test="${tt eq 'typeAll'}">
						    		<c:forEach items="${consultList}" var="consult" >
										<tr>
											<td style="width:80px;">${consult.id}</td>
											<td>${consult.sender}</td>
											<td>${consult.content}</td>
											<c:if test="${consult.consultType eq 'visit'}">
												<td>방문</td>
											</c:if>
											<c:if test="${consult.consultType eq 'telconsult'}">
												<td>전화</td>
											</c:if>
											<td>${consult.phoneNum}</td>
											<td>${consult.requestTime}</td>
											<c:if test="${consult.consultStatus eq '0'}">
												<td>
													<form action="set1" method="post">
														<input type="hidden" name="sender" value="${consult.sender}">
														<input type="hidden" name="timeId" value="${consult.timeId}">
														<input type="submit" value="접수하기">
													</form>
												</td>
											</c:if>
											<c:if test="${consult.consultStatus eq '1'}">
												<td>
													<form action="set2" method="post">
														<input type="hidden" name="sender" value="${consult.sender}">
														<input type="hidden" name="timeId" value="${consult.timeId}">
														<input type="submit" value="완료하기">
													</form>
												</td>
											</c:if>
											<c:if test="${consult.consultStatus eq '2'}">
												<td>
													<input type="submit" value="평가전">
												</td>
											</c:if>
											<c:if test="${consult.consultStatus eq '3'}">
												<td>
													<a style="cursor:pointer" onclick="intert.showPasswordForgotten()" >평점보기</a>
												</td>
											</c:if>
											<c:if test="${consult.consultStatus eq '4'}">
												<td>
													<input type="submit" value="매칭완료">
												</td>
											</c:if>
										</tr>
									</c:forEach>
						    	</c:if>
						    	<c:if test="${tt eq 'type00'}">
						    		<c:forEach items="${consultList0}" var="consult" >
										<tr>
											<td style="width:80px;">${consult.id}</td>
											<td>${consult.sender}</td>
											<td>${consult.content}</td>
											<c:if test="${consult.consultType eq 'visit'}">
												<td>방문</td>
											</c:if>
											<c:if test="${consult.consultType eq 'telconsult'}">
												<td>전화</td>
											</c:if>
											<td>${consult.phoneNum}</td>
											<td>${consult.requestTime}</td>
											<td>
												<form action="set1" method="post">
													<input type="hidden" name="sender" value="${consult.sender}">
													<input type="hidden" name="timeId" value="${consult.timeId}">
													<input type="submit" value="접수하기">
												</form>
											</td>
										</tr>
									</c:forEach>
						    	</c:if>
						    	<c:if test="${tt eq 'type01'}">
						    		<c:forEach items="${consultList1}" var="consult" >
										<tr>
											<td style="width:80px;">${consult.id}</td>
											<td>${consult.sender}</td>
											<td>${consult.content}</td>
											<c:if test="${consult.consultType eq 'visit'}">
												<td>방문</td>
											</c:if>
											<c:if test="${consult.consultType eq 'telconsult'}">
												<td>전화</td>
											</c:if>
											<td>${consult.phoneNum}</td>
											<td>${consult.requestTime}</td>
											<td>
												<form action="set2" method="post">
													<input type="hidden" name="sender" value="${consult.sender}">
													<input type="hidden" name="timeId" value="${consult.timeId}">
													<input type="submit" value="완료하기">
												</form>
											</td>
										</tr>
									</c:forEach>
						    	</c:if>
						    	<c:if test="${tt eq 'type02'}">
						    		<c:forEach items="${consultList2}" var="consult" >
										<tr>
											<td style="width:80px;">${consult.id}</td>
											<td>${consult.sender}</td>
											<td>${consult.content}</td>
											<c:if test="${consult.consultType eq 'visit'}">
												<td>방문</td>
											</c:if>
											<c:if test="${consult.consultType eq 'telconsult'}">
												<td>전화</td>
											</c:if>
											<td>${consult.phoneNum}</td>
											<td>${consult.requestTime}</td>
											<td>
												<input type="submit" value="평가전">
											</td>
										</tr>
									</c:forEach>
						    	</c:if>
						    	<c:if test="${tt eq 'type03'}">
						    		<c:forEach items="${consultList3}" var="consult" >
										<tr>
											<c:set var="evaluation_val" value="${consult.evaluation}" />
											<c:set var="reason_val" value="${consult.evaluation_reason}" />
											<td style="width:80px;">${consult.id}</td>
											<td>${consult.sender}</td>
											<td>${consult.content}</td>
											<c:if test="${consult.consultType eq 'visit'}">
												<td>방문</td>
											</c:if>
											<c:if test="${consult.consultType eq 'telconsult'}">
												<td>전화</td>
											</c:if>
											<td>${consult.phoneNum}</td>
											<td>${consult.requestTime}</td>
											<td>
												<a style="cursor:pointer" onclick="intert.showPasswordForgotten()" >평점보기</a>
											</td>
										</tr>
									</c:forEach>
						    	</c:if>
						    	<c:if test="${tt eq 'type04'}">
						    		<c:forEach items="${consultList4}" var="consult" >
										<tr>
											<td>test4</td>
											<td>쿼리 추가..</td>
											<td>쿼리 추가..</td>
											<td>${consult.content}</td>
											<td>${consult.requestTime}</td>
											<td><input type="button" value="매칭완료"></td>
										</tr>
									</c:forEach>
						    	</c:if>
						    </tbody>
						  </table>
						</div>
                     </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="card card-plain">
                <div class="card-header card-header-primary">
                  <h4 class="card-title mt-0"> 평점</h4>
                  <p class="card-category"> Total : ${result}</p>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                      <thead class="">
                        <th style="width:50px;">
                          id
                        </th>
                        <th style="width:200px;">
                          	평가자
                        </th>
                        <th>
                          	문의사항
                        </th>
                        <th style="width:40%;">
                          	평가내용  
                        </th>
                        <th>
                          	평점
                        </th>
                      </thead>
                      <tbody>
			    		<c:forEach items="${consultList3}" var="consult" > 
							<tr> 
								<td style="width:50px;">${consult.id}</td>
								<td style="width:200px;">${consult.sender}</td>   
								<td >${consult.content}</td>
								<td style="width:40%;">${consult.evaluation_reason}</td>
								<td>${consult.evaluation}</td>   
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
<div class="password-reset-div" id="password-reset-div">

    <span class="black-complete-background"></span>

      <div class="content-password-reset-div" id="content-password-reset-div">
          <div class="title-content-password-reset-div">
          		평점확인하기
          </div>
          <div class="content-content-password-reset-div">
	            <span class="text-content-content-password-reset-div" style="font-size:15px;">
	            </span>
    			<div class="input-field col s6">
	              <div class="row">
	                 <div class="col-md-12">
	                   <div class="form-group">
	                     <label class="bmd-label-floating">평점</label>
	                     <input type="text" class="form-control" value="${evaluation_val}">
	                   </div>
	                 </div>
	               </div>
	            </div>
            
	            <div class="input-field col s6">
	              <div class="row">
	                 <div class="col-md-12">
	                   <div class="form-group">
	                     <label class="bmd-label-floating">이유</label>
	                     <input type="text" class="form-control" value="${reason_val}"style="width:520px;">
	                   </div>
	                 </div>
	               </div>
	            </div>
	            <div class="options-alert" id="options-alert">
	              <span class="right-options-alert">
	                <a href="#" onclick="intert.closePF()">확인</a>
	              </span>
	            </div>
          </div>
      </div>
</div>
<script type="text/javascript">
   $(document).ready( function() {
   $('.cookies-used').fadeIn();
   intert.setEvents();
   });

   var intert = {};

   intert.setEvents = function() {
   $('.black-complete-background').click( function() {
     $('.password-reset-div').fadeOut();
   });
   }

   intert.showPasswordForgotten = function() {
   $('.password-reset-div').fadeIn();
   }

   intert.closePF = function() {
    $('.password-reset-div').fadeOut();
   }
</script> 
</body>

</html>
