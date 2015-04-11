<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<div class="well lead">
    <div class="container-fluid">
        <div class="page-header"><h2><spring:message code='about.header'/></h2></div>
        <div class="col-sm-10 col-sm-offset-1">
            <spring:message code='about.maintext'/>
        </div>

    </div>
</div>