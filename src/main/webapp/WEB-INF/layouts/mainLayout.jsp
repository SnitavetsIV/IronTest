<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap-theme.min.css">
    <title><tiles:insertAttribute name="title"/></title>
</head>
<body>
<div class="row">
    <div class="col-sm-12">
        <tiles:insertAttribute name="header"/>
    </div>
</div>
<div class="row">
    <div class="col-sm-4"><tiles:insertAttribute name="menu"/></div>
    <div class="col-sm-8"><tiles:insertAttribute name="body"/></div>
</div>
<div class="row">
    <div class="col-sm-12"><tiles:insertAttribute name="footer"/></div>
</div>
<script src="/resources/js/jquery-1.11.0.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>