<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="well lead">
    <sec:authorize access="hasRole('USER')">
        <div class="page-header"><h2><spring:message code='user.main.header'/></h2></div>
    </sec:authorize>
</div>