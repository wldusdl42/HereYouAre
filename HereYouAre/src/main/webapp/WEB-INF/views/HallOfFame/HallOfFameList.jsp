<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HallOfFameList</title>
<link href="<c:url value = "resources/css/main.css?ver=1/"/>" rel="stylesheet">
<link href="<c:url value="resources/css/hallOfFameList.css"/>" rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
<script src="<c:url value="resources/js/hallOfFameList.js"/>"></script>




<!-- Bootstrap core CSS -->
<link href="<c:url value = "/resources/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="<c:url value = "/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR&display=swap|Noto+Sans+KR&display=swap" rel="stylesheet">

  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<!-- Custom styles for this template -->
<link href="<c:url value = "/resources/css/agency.min.css"/>" rel="stylesheet">
</head>
<body>
<%@ include file="../header.jsp"%>

<div class="fame-background">
<div style="text-align: center; padding: 20px 0px 0px 0px;">
    <div class="wrapper">
        <div id="rotate-slider">
			<c:forEach items="${hallList}" var="hallOfFameList">
<%-- 				<a href="hallOfFameContents?bId=${hallOfFameList.id}"><img src="<c:url value="resources/images/${hallOfFameList.contents_image}"/>" alt="images"/></a> --%>
				<a href="hallOfFameContents?bId=${hallOfFameList.id}"><img src="<c:url value="WEB-INF/views/images/${hallOfFameList.contents_image}"/>" alt="images"/></a>
			</c:forEach>
        </div>
    </div>
</div>

 <div class="wrapper2">
   <div id="nameBoard-box">
   <c:forEach items="${hallList}" var="hallOfFameList">
     <p><a href="hallOfFameContents?bId=${hallOfFameList.id}" class="title">${hallOfFameList.title}</a></p>
   </c:forEach>
   </div>
 </div>
</div>
</body>
</html>