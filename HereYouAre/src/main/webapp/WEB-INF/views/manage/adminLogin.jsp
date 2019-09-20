<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/adminLogin.css" />" rel="stylesheet">
</head>
<style>
	p{
		color:red;
	}
</style>
<body>
	<div class="login">
		<h1>Admin Login</h1>
	    <form action="adminLogin"method="get">
	    	<input type="text" name="email" value="dbsk@naver.com" />
	        <input type="password" name="password" value="1234" />
	        <p>${bm2}</p>
	        <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
	    </form>
	</div>
</body>
</html>