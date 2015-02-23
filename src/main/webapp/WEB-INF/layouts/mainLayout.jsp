<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <title>
        <c:set var="titleValue"><tiles:insertAttribute name='titleBundle'/></c:set>
        <spring:message code="${titleValue}"/></title>
</head>
<body>
<div class="navbar navbar-inverse navbar-static-top">
    <tiles:insertAttribute name="header"/>
</div>
<div class="row">
    <div class="col-sm-4"><tiles:insertAttribute name="menu"/></div>
    <div class="col-sm-8"><tiles:insertAttribute name="body"/></div>
</div>
<div class="row">
    <div class="col-sm-12"><tiles:insertAttribute name="footer"/></div>
</div>
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/bootstrap.js"></script>
</body>
</html>