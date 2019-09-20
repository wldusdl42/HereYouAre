<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <title>Main Page</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR&display=swap|Noto+Sans+KR&display=swap" rel="stylesheet">
   <!-- Custom fonts for this template -->
   <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
   <!-- Custom styles for this template -->
   <link href="<c:url value = "/resources/css/noticeBoard.css?ver=1/"/>" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR&display=swap" rel="stylesheet">
   <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"/>
   <script src="<c:url value="/resources/js/noticeSearch.js?ver=2"/>"></script>
   <script type="text/javascript">
   </script>
</head>


  <body>
       <%@ include file="../header2.jsp"%>
      
       <div id="beanSpace">
   
       </div>
       <div id="noticeBoard_wrapper">
        <a class="page-link" href="/are/1"><div class="notice_word">공지사항</div></a>
        <div class="Nboard">
          <div class="h_wrapper">
            <p class="h_cont"><strong>내용</strong></p>
            <p class="h_cont_time"><strong>등록일</strong></p>
          </div>
          <div class="list_wrapper">
            <ul>
               <c:forEach items="${list}" var="noticeBoard">
                 <div class="line">
                   <a href="/are/getNoticeBoardContents?bId=${noticeBoard.id}" style="color: #1e1e1e"><li class="line_cont">${noticeBoard.title}</li></a><li class="line_time" >${noticeBoard.write_time}</li>
                 </div>
                </c:forEach>
            </ul>
            <div class="paging">
             <ul class="paginationBox">
                <c:if test="${page_id ne 1}">
                   <a class="page-link" href="/are/search/1?keyword=${keyword_remain}""><i class="fa fa-angle-double-left faPointer"></i></a>
                </c:if>
                <c:if test="${page_id ne 1}">
                   <a class="page-link" href="/are/search/${page_id-1}?keyword=${keyword_remain}""><i class="fa fa-angle-left faPointer"></i></a>
                </c:if>
   						  <c:forEach var="cnt" begin="${nBlockStart}" end="${nBlockEnd}">
						  <c:choose>
						  	<c:when test="${page_id == cnt}">
						  		<li class="page"><a class="page-link_select" href="/are/search/${cnt}?keyword=${keyword_remain}">${cnt}</a></li>
						  	</c:when>
						  	<c:otherwise>
						  		<li class="page"><a class="page-link" href="/are/search/${cnt}?keyword=${keyword_remain}">${cnt}</a></li>
						  	</c:otherwise>
						  	</c:choose>
						  </c:forEach>
               <c:if test="${page_id ne maxPageNum}">
                  <a class="page-link" href="/are/search/${page_id+1}?keyword=${keyword_remain}""><i class="fa fa-angle-right faPointer"></i></a>
               </c:if>
               <c:if test="${page_id ne maxPageNum}">
                  <a class="page-link" href="/are/search/${maxPageNum}?keyword=${keyword_remain}""><i class="fa fa-angle-double-right faPointer"></i></a>
               </c:if>
            </ul>
               <form action="/are/search/1" method="GET" name="search">
                  <input type="text" name="keyword" style="margin-bottom:17px; margin-left:10px; margin-top:17px;" required="">
                  <input type="submit" name="submit" value="검색">
               </form>
            </div>
          </div>
        </div>
       </div>
       <div id="footer">
         <br><br>Copyright ⓒ 2015.MOGEF.CO.KR All Right Reserved.
       </div>NOTE: footer
     </div>
   </body>
</html>