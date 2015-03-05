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
    <link rel="stylesheet" type="text/css" href="/resources/css/sticky-footer.css">
    <title>
        <c:set var="titleValue"><tiles:insertAttribute name='titleBundle'/></c:set>
        <spring:message code="${titleValue}"/></title>
</head>
<body>
<tiles:insertAttribute name="header"/>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <tiles:insertAttribute name="menu"/>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <tiles:insertAttribute name="body"/>
        </div>
    </div>
</div>
<tiles:insertAttribute name="footer"/>
<script src="/resources/js/jquery-1.11.2.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>