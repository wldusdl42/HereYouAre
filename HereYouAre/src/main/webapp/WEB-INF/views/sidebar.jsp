<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>사이드바</title>
<link href="<c:url value = "resources/css/main.css?ver=1/"/>" rel="stylesheet">
<link href="resources/css/normalize.css" rel="stylesheet" >
<link href="resources/css/sidebar.css" rel="stylesheet" >
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="resources/js/vendor/jquery-ui-1.10.3.custom.min.js"/></script>
<script src="resources/js/sidebar.js"></script>
<script>
var bm = ${bm.type};
var dd = null;
</script>
</head>
<body>
<c:if test="${empty bm.type}">
<div class="sidebar" role="main">
<aside>
<ul style="margin-top: 400px;">
<li><a href="#">로그인이 필요한 서비스입니다</a></li>
</ul>
<button><img id="openbtn" src="resources/img/btn_open.png"></button>
</aside>
</div>
</c:if>


<c:if test="${bm.type eq 1}">
<div class="sidebar" id="sidebar" role="main">
<aside>
<ul>
<form action="deleteChooseSb" method="post">
<input type="submit" id="deleteSb" value="선택삭제">
<div class="scrollsidebar" id ="scrollsidebar">
<!-- html -->
</div>
</form>
</ul>
<button><img id="openbtn" src="resources/img/btn_open.png"></button>
</aside>
</div><!-- sidebar -->
</c:if>
</body>
</html>
