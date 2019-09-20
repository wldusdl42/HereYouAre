<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head><title>CSS</title>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Arimo&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/adminPage.css" />">
<style>

</style>
</head>
<body>
	<div class="head">
		<p>
			<a href="main" style="color:white;">
	          Here - You Are 
	        </a>
        </p>
	</div>
	<div id="header" >
    <ul id="gnb">
	  <li><i class="fa fa-home" aria-hidden="true"></i><a href="index">관리홈</a></li>
      <li><i class="fa fa-cog" aria-hidden="true"></i><a href="basic_info">기본정보관리</a></li>
      <li class="select"><i class="fa fa-user-o" aria-hidden="true"></i><a href="membership">회원관리</a></li>
      <li><i class="fa fa-line-chart" aria-hidden="true"></i><a href="marketting">마케팅지원</a></li>
      <li><i class="fa fa-comments" aria-hidden="true"></i><a href="community">커뮤니티</a></li>
    </ul>
	</div>
	<div id="container">
		<!-- <h3>기본정보관리</h3> -->
		<section>
			<!--for demo wrap-->
		  <h1 style="margin-top:100px;">멤버</h1>
		  <div class="tbl-header" >
		    <table cellpadding="0" cellspacing="0" border="0">
		      <thead>
		        <tr>
		          <th><i class="fa fa-user-circle-o" aria-hidden="true"></i> 전체회원</th>
		          <th>신규</a></th>
		          <th>탈퇴</th>
		        </tr>
		      </thead>
		    </table>
		  </div>
		  <div class="tbl-content" style="height: auto;">
		    <table cellpadding="0" cellspacing="0" border="0">
		      <tbody>
		        <tr>
		          <td>${all}</td>
		          <td>35</td>
		          <td>${deleted}</td>
		        </tr>
		        <tr>
		      </tbody>
		    </table>
		  </div>
		</section>
		<section>
			<!--for demo wrap-->
		  <h1 style="margin-top:100px;">회원현황</h1>
		  <div class="tbl-header" >
		    <table cellpadding="0" cellspacing="0" border="0">
		      <thead>
		        <tr>
		          <th>전체회원</th>
		          <th><a href="#req">가입대기</a></th>
		          <th><a href="#del">탈퇴대기</a></th>
		          <th>탈퇴회원</th>
		        </tr>
		      </thead>
		    </table>
		  </div>
		  <div class="tbl-content" style="height: auto;">
		    <table cellpadding="0" cellspacing="0" border="0">
		      <tbody>
		        <tr>
		          <td>${all}</td>
		          <td>${insertReq}</td>
		          <td>35</td>
		          <td>${deleted}</td>
		        </tr>
		        <tr>
		      </tbody>
		    </table>
		  </div>
		</section>

		<section>
			<!--for demo wrap-->
		  <h1 id="req">가입대기 <a href="http://land.seoul.go.kr/land/broker/brokerInfo.do">등록번호 조회</a></h1>
		  <h4 style="margin-bottom:10px;">total : ${insertReq} </h4>
		  <div class="tbl-header">
		    <table cellpadding="0" cellspacing="0" border="0">
		      <thead >
		        <tr>
		          <th>이름</th>
		          <th>이메일</th>
		          <th>전화번호</th>
		          <th>공인중개사번호</th>
		          <th>사업자번호</th>
		          <th>부동산 상호명</th>
		          <th>부동산 위치</th>
		          <th>가입요청시간</th>
		          <th>가입승인</th>
		        </tr>
		      </thead>
		    </table>
		  </div>
		  <div class="tbl-content">
		    <table cellpadding="0" cellspacing="0" border="0">
		      <tbody>
		       	  <c:forEach items="${insertRequest}" var="employee">
						<tr>
							<td>${employee.name}</td>
							<td>${employee.email}</td>
							<td>${employee.phone}</td>
							<td>${employee.realtorNumber}</td>
							<td>${employee.ownerNumber}</td>
							<td>${employee.agencyName}</td>
							<td>${employee.agencyAddress}</td>
							<td>${employee.time}</td>
							<td><a href="request?email=${employee.email}">승인하기</a></td>
						</tr>
					</c:forEach>
		      </tbody>
		    </table>
		  </div>
		</section>
		
		<section>
			<!--for demo wrap-->
		  <h1 id="del">탈퇴대기</h1>
		  <h4>total : ${insertReq} </h4>
		  <div class="tbl-header">
		    <table cellpadding="0" cellspacing="0" border="0">
		      <thead>
		        <tr>
		          <th>이메일</th>
		          <th>등록번호</th>
		          <th>이유</th>
		          <th>이유/직접입력</th>
		          <th>가입시간</th>
		          <th>탈퇴신청시간</th>
		          <th>탈퇴승인</th>
		        </tr>
		      </thead>
		    </table>
		  </div>
		  <div class="tbl-content">
		    <table cellpadding="0" cellspacing="0" border="0">
		      <tbody>
					<tr>
						<td>${employee.name}</td>
						<td>${employee.email}</td>
						<td>${employee.phone}</td>
						<td>${employee.realtorNumber}</td>
						<td>${employee.ownerNumber}</td>
						<td>${employee.agencyName}</td>
						<td><a href="">승인하기</a></td>
					</tr>
		      </tbody>
		    </table>
		  </div>
		</section>



	<!-- <div id="footer">
				<address>Copyright Allright Reserved.</address>
	</div> -->
<script type="text/javascript">
	// '.tbl-content' consumed little space for vertical scrollbar, scrollbar width depend on browser/os/platfrom. Here calculate the scollbar width .
	$(window).on("load resize ", function() {
	var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	$('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
</script>
</body>
</html>
