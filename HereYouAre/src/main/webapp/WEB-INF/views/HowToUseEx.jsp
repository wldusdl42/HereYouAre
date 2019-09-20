<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="resources/css/common.css"/>" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="<c:url value="resources/js/jquery.fullPage.js"/>"></script>
<link href="<c:url value = "resources/css/main.css?ver=1"/>" rel="stylesheet">

<title>Here U A 이용방법</title>

<script type="text/javascript">
    $(document).ready(function() {

        $('#fullpage').fullpage({
            menu: '#menu',
            anchors: ['part1', 'part2', 'part3', 'part4', 'part5', 'part6', 'part7', 'part8', 'part9', 'part10', 'part11', 'part12', 'part13', 'part14'],
            easing: 'easeInOutCubic'
        });

    });

    </script>

</head>
<body>
<%-- 	<%@ include file="header.jsp"%> --%>

    <div id="howToUsewrap">

     <ul id="menu" class="side_menu" style="clear: both; width:52px;">
            <li data-menuanchor="part1" class="active"><a href="#part1"></a></li>
            <li data-menuanchor="part2"><a href="#part2"></a></li>
            <li data-menuanchor="part3"><a href="#part3"></a></li>
            <li data-menuanchor="part4"><a href="#part4"></a></li>
            <li data-menuanchor="part5"><a href="#part5"></a></li>
            <li data-menuanchor="part6"><a href="#part6"></a></li>
            <li data-menuanchor="part7"><a href="#part7"></a></li>
            <li data-menuanchor="part8"><a href="#part8"></a></li>
            <li data-menuanchor="part9"><a href="#part9"></a></li>
            <li data-menuanchor="part10"><a href="#part10"></a></li>
            <li data-menuanchor="part11"><a href="#part11"></a></li>
            <li data-menuanchor="part12"><a href="#part12"></a></li>
            <li data-menuanchor="part13"><a href="#part13"></a></li>
            <li data-menuanchor="part14"><a href="#part14"></a></li>
         
        </ul>

        <!--container-->
        <div id="container">
            <div id="fullpage">
                <div class="section" id="section0">
                </div>
                <div class="section" id="section1">
                </div>
                <div class="section" id="section2">
                </div>
                <div class="section" id="section3">
                </div>
                <div class="section" id="section4">
                </div>
                <div class="section" id="section5">
                </div>
                <div class="section" id="section6">
                </div>
                <div class="section" id="section7">
                </div>
                <div class="section" id="section8">
                </div>
                <div class="section" id="section9">
                </div>
                <div class="section" id="section10">
                </div>
                <div class="section" id="section11">
                </div>
                <div class="section" id="section12">
                </div>
                <div class="section" id="section13">
                </div>
              
            </div>
        </div>
        <!--//contents-->
    </div>
    <!-- //wrap -->
</body>
