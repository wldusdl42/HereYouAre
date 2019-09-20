<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
:root { --star-size: 20px; 
	--star-color: black; 
	--star-background: #fc0;
}

.Stars { --percent: calc(var(--rating)/5* 100%);
	display: inline-block;
	font-size: var(--star-size);
	font-family: Times;
	line-height: 1;
}

.Stars::before {
	content: '★★★★★';
	letter-spacing: 3px;
	background: linear-gradient(90deg, var(--star-background)
		var(--percent), var(--star-color) var(--percent));
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}
</style>
</head>
<body>

	<div class="Stars" style="--rating: 4.5;"></div>
</body>
</html>