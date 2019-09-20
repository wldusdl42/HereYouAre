<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>getNoticeBoardContents</title>

 <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR&display=swap|Noto+Sans+KR&display=swap" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

<link href="resources/css/noticeBoard.css?ver=1" rel="stylesheet">

</head>
	<body>
	  <div id="wrapper">
	       <%@ include file="../header.jsp"%>
	    <div id="beanSpace">
	
	    </div>
	    <div id="noticeBoard_wrapper">
	     <div class="notice_word2">
		  <p class="title">${noticeBoard.title}</p>
		  <p class="write_time">${noticeBoard.write_time}</p>
	     </div>
	     <div class="Nboard">
	       <div class="h_wrapper_contents">
	         ${noticeBoard.contents}
	       </div>
	     </div>
	    </div>
	    <div id="footer">
	      <br><br>Copyright ⓒ 2015.MOGEF.CO.KR All Right Reserved.
	    </div><!-- NOTE: footer -->
	  </div>
	</body>
</html>