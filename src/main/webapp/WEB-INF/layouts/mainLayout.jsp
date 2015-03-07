<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/sticky-footer.css">
    <title>
        <c:set var="titleValue"><tiles:insertAttribute name='titleBundle'/></c:set>
        <spring:message code="${titleValue}"/></title>
</head>
<body>
<tiles:insertAttribute name="header"/>
<div id="wrapper" class="">
    <div id="sidebar-wrapper">
        <ul id="sidebar_menu" class="sidebar-nav">
            <li class="sidebar-brand">
                <a id="menu-toggle" href="#">
                    Menu
                    <span id="main_icon" class="glyphicon glyphicon-align-justify"></span>
                </a>
            </li>
        </ul>
        <tiles:insertAttribute name="menu"/>
    </div>

    <!-- Page content -->
    <div id="page-content-wrapper">
        <!-- Keep all page content within the page-content inset div! -->
        <div class="page-content inset">
            <div class="row">
                <div class="col-md-12">
                    <tiles:insertAttribute name="body"/>
                </div>
            </div>
        </div>
    </div>

</div>
<tiles:insertAttribute name="footer"/>
<script src="/resources/js/jquery-1.11.2.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/style.js"></script>
</body>
</html>