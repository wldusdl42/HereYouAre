<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR&display=swap|Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="<c:url value = "../resources/css/header.css?ver=2/"/>"	rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="<c:url value = "../resources/css/dropdown.css?ver=1/"/>" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-2.2.4.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-1.12.4.min.js"></script> 

<script type="text/javascript">
$(document).ready(function(){

	$("#howToUse").click(function(){
// 		alert("이용방법");
		window.open("HowToUse1","이용방법", 'width=1280px,height=600px,toolbars=no, left=300px, top=200px');
	});
});


$(document).ready(function () {

	$(".nav li").mouseenter(function() {
	        // $(this).children("ul").slideToggle(500)
					$(this).children("ul").slideDown(500)
	      })
				$(".nav li").mouseleave(function() {
					// $(this).children("ul").slideToggle(500)
				  $(this).children("ul").slideUp(500)
				})
	});
	
	
var modal = document.getElementById('join');//아무데나 클릭해도 창닫기 (js파일로 옮기면 실행안됨ㅠㅠ 왜인지 모르겠음)
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
   }
}
</script>

<style>
	ul{
		list-style: none;
		margin:0px;
	}
	.head{
	    background:white;
	}
	.logo{
		float: left;
		margin-left:20px;
	}
	.logo img{
		width:130px; height:80px;
	}
	.nav{ 
		float: right;
		margin-right:50px;
		padding-top:3vh;
		font-family: 'Do Hyeon', sans-serif;
		font-size:23px;
		
	} 
	.nav li{
		padding-left:30px;
		
	}
	.head:after{
		content: "";
		display: block;
		clear: both;
	}
	.nav li{
		float: left;
	}
	
</style>
		<div class="head">
			<ul class="logo">
				<a href="../main"><li><img src=<c:url value="../resources/img/HereYouAre_270_170.png"/>></li></a>
			</ul>
			<ul class="nav">
 				<c:if test="${empty bm.email}">
 					<li id = "howToUse"><a href="#">이용방법</a></li>
 					<li>
 						<a href="#" onclick="document.getElementById('join').style.display='block'">회원가입
 							<div id="join" class="modal">
 								<div class="contentbox animate">
 									<form name="joinTypeUser" action="joinTypeUser" method="post">
 										<div class="content"><h3>일반 회원가입</h3>
 										<img src="<c:url value = "../resources/img/joinUserIcon.png"/>"alt="userImg"style="margin-left:0px;">
 										<div class="nextbtn"><button type="submit" class="btn midBtn01" id="joinUser">바로가기</button>
 										</div>
 										</div>
 									</form>
 									<form name="joinTypeRealtor" action="joinTypeRealtor" method="post">
 										<div class="content"><h3>공인중개사 회원가입</h3>
 										<img src="<c:url value = "../resources/img/joinRealtorIcon.png"/>" alt="realtorImg" style="margin-left:0px;">
 										<div class="nextbtn"><button type="submit" class="btn midBtn01" id="joinRealtor">바로가기</button>
 										</div>
 										</div>
 									</form>
 								</div><!-- contentbox animate -->
 							</div><!-- modal -->
 						</a>
 					</li>
 					<li><a href="login?uri=${pageContext.request.requestURI}">로그인</a></li>
 				</c:if>
 				
 				<!-- 일반회원로그인 한 경우 -->
 				<c:if test="${bm.type eq 1}">
 					<li><a href="#" id = "howToUse" style="font-size: 25px;">이용방법</a></li>
 					<li>${bm.name}님</a></li>
					<li><a href="user"><i class="material-icons">store</i></a>
<!-- 					<a href="mypageCSS"><i class="fa fa-bars" aria-hidden="true" style="color:black;"></i></a> -->
		              <ul class="sub sub1">
		                <li style="padding-left:0px;"><a href="logout?uri=${pageContext.request.requestURI}">로그아웃</a></li>
		                <li style="padding-left:0px;"><a href="user">마이페이지</a></li>
		                <li style="padding-left:0px;"><a href="#">알림</a></li>
		              </ul>
		            </li>
 				</c:if>
 				
 				<!-- 공인중개사 로그인한 경우 -->
 				<c:if test="${bm.type eq 2}">
 					<li><a href="#" id = "howToUse" style="font-size: 25px;">이용방법</a></li>
 					<li>${bm.name}님</a></li>
					<li><a href="real_mypage"><i class="material-icons">store</i></a>
<!-- 					<i class="fa fa-bars" aria-hidden="true" style="color:black;"></i></a> -->
		              <ul class="sub sub1">
		                <li style="padding-left:0px;"><a href="logout?uri=${pageContext.request.requestURI}">로그아웃</a></li>
		                <li style="padding-left:0px;"><a href="real_mypage">마이페이지</a></li>
		                <li style="padding-left:0px;"><a href="#">알림</a></li>
		              </ul>
		            </li>
 			 	</c:if>	
			</ul>
		</div>
 <script>
	var modal = document.getElementById('join');//아무데나 클릭해도 창닫기 (js파일로 옮기면 실행안됨ㅠㅠ 왜인지 모르겠음)
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
</script>
</body>
</html>