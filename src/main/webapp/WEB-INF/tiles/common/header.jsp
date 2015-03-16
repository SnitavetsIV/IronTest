<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/irontest/"><img src="/resources/img/logo.png" class="logo"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#"><spring:message code='header.home'/></a></li>
                <li><a href="#about"><spring:message code='header.about'/></a></li>
                <li><a href="#contact"><spring:message code='header.contact'/></a></li>
            </ul>
            <sec:authorize access="isAnonymous()">
                <form class="navbar-form navbar-right" action="<c:url value='/j_spring_security_check' />" method="get">
                    <div class="form-group">
                        <input type="text" name="login" class="form-control" required="required"
                               placeholder="<spring:message code='authorization.login.login.name'/>"
                               pattern="<spring:message code='authorization.login.login.pattern'/>"
                               title="<spring:message code='authorization.login.login.title'/>">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control" required="required"
                               placeholder="<spring:message code='authorization.login.password.name'/>"
                               pattern="<spring:message code='authorization.login.password.pattern'/>"
                               title="<spring:message code='authorization.login.password.title'/>">
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}"
                           value="${_csrf.token}"/>
                    <button type="submit" class="btn btn-success"><spring:message code='header.singin'/></button>
                    <a class="btn btn-success" href="/irontest/registration"><spring:message
                            code='header.registration'/></a>
                </form>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <c:url value="/j_spring_security_logout" var="logoutUrl"/>
                <form action="${logoutUrl}" method="post" id="logoutForm">
                    <input type="hidden" name="${_csrf.parameterName}"
                           value="${_csrf.token}"/>
                </form>
                <script>
                    function formSubmit() {
                        document.getElementById("logoutForm").submit();
                    }
                </script>

                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <div class="navbar-right">
                        Hello, ${pageContext.request.userPrincipal.name}! | <a
                            href="javascript:formSubmit()"> Logout</a>
                    </div>
                </c:if>
            </sec:authorize>
        </div>
    </div>
</nav>
