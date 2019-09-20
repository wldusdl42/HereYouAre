<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title></title>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
    <link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
</head>
<style>
  	.warning{
		color:red;
		margin-top:0px;
		margin-bottom:0px;
		margin-right:0px;
		margin-left:30px;
	}
	#userSub,#realSub{
		background-color:rgba(0,0,0,0);
		border:0;
		border-radius: 2px;
		width:171px;
		height:54px;
		font-family: "Roboto", sans-serif;
    	font-weight: normal;
    	font-size:16px;
    	color:#FFFFFF;
    	box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16), 0 2px 10px 0 rgba(0,0,0,0.12);
	}
</style>
<body>
<%@ include file="../header.jsp"%>

<div class="main-connection-div" id="main-connection-div" style="margin-top:23vh;">

	    <div class="log-in-main-connection-div" id="log-in-main-connection-div">
	      <p class="title-log-in-main-connection-div">일반회원 로그인</p>
	
	        <form action="getpwname" method="post">
		          <div class="input-field col s6">
		             <input type="text" name="email" id="username intert-textarea" class="validate" value="dbsk5045@naver.com">
		             <input type="hidden" name="uri" id="uri" value="${uri}">
		             <label for="username">E-mail</label>
		          </div>
		
		          <div class="input-field col s6">
		             <input type="password" name="password" id="password intert-textarea" class="validate" value="dbsk0603">
		             <label for="password">Password</label>
		          </div>
					<p class="warning">${result}</p>
				  <input type="submit" id="userSub"value="LOG IN" style="margin: 20px 0 0 30px; background: dodgerblue; width: 45%; position: inherit;">
	      	</form>
	
	      <p class="password-forgotten">Password forgotten? <a style="cursor:pointer" onclick="intert.showPasswordForgotten()">Click here</a></p>
	    </div>

	    <div class="register-main-connection-div" id="register-main-connection-div">
	        <p class="title-register-main-connection-div">공인중개사 로그인</p>
	        <form action="loginCheck_realtor" method="get">
		         <div class="input-field col s6">
		            <input type="text" name="email" id="username intert-textarea" class="validate" value="real16@naver.com">
		            <input type="hidden" name="uri" id="uri" value="${uri}">
		            <label for="username">E-mail</label>
		         </div>
		         <div class="input-field col s6">
		            <input type="password" name="password" id="password intert-textarea" class="validate" value="1234">
		            <label for="password">Password</label>
		         </div>
				 <p class="warning">${bm1}</p>
		         <input type="submit" id="realSub"value="LOG IN" style="margin: 20px 0 0 30px; background: dodgerblue; width: 45%; position: inherit;">
	        </form>
			<p class="password-forgotten">Password forgotten? <a style="cursor:pointer" onclick="intert.showPasswordForgotten()">Click here</a></p>
	    </div>

</div>


<!-- 비밀번호 재설정  -->
<div class="password-reset-div" id="password-reset-div">

    <span class="black-complete-background"></span>

      <div class="content-password-reset-div" id="content-password-reset-div">
          <div class="title-content-password-reset-div">
          		 비밀번호 재설정
          </div>

          <div class="content-content-password-reset-div">
             <span class="text-content-content-password-reset-div">
      		         비밀번호를 재설정하려면 계정을 만들 때 사용한 이메일을 입력하십시오.
             </span>

            <div class="input-field col s6">
              <input id="email-rp" type="text" class="validate">
              <label for="email-rp">E-mail address</label>
            </div>

          <a class="waves-effect waves-light btn" style="background: #0072ff; margin: 5px 0 0 0;">재설정 링크 보내기</a>

            <div class="options-alert" id="options-alert">
              <span class="right-options-alert">
                <a href="#" onclick="intert.closePF()">Cancel</a>
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
