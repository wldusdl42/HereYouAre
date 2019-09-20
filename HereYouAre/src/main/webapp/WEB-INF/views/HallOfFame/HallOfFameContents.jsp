<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HallOfFameContents</title>
<link href="<c:url value = "resources/css/main.css?ver=1/"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/hallOfFameContents.css"/>"
	rel="stylesheet">
</head>
<body>
	<%@ include file="../header.jsp"%>
	<div class="wrapperContents">
		<div class="container marginTop">
			<h1>${hallOfFame.title}</h1>
			${hallOfFame.contents} <br> <br>
		</div>
	</div>
</body>
</html>