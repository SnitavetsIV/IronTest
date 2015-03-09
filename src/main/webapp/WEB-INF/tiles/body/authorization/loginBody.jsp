<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="well lead">
    <div class="container-fluid">
        <div class="page-header"><h2><spring:message code='authorization.login.header'/></h2></div>

        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
        <c:if test="${not empty msg}">
            <div class="msg">${msg}</div>
        </c:if>

        <form class="form-horizontal" action="<c:url value='/j_spring_security_check' />" method="post">
            <div class="form-group">
                <label for="inputLogin" class="col-sm-3 control-label"><spring:message
                        code='authorization.login.login.name'/></label>

                <div class="col-sm-4">
                    <input type="text" name="login" class="form-control" id="inputLogin" required="required"
                           placeholder="<spring:message code='authorization.login.login.name'/>"
                           pattern="<spring:message code='authorization.login.login.pattern'/>"
                           title="<spring:message code='authorization.login.login.title'/>">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-sm-3 control-label"><spring:message
                        code='authorization.login.password.name'/></label>

                <div class="col-sm-4">
                    <input type="password" name="password" class="form-control" id="inputPassword" required="required"
                           placeholder="<spring:message code='authorization.login.password.name'/>"
                           pattern="<spring:message code='authorization.login.password.pattern'/>"
                           title="<spring:message code='authorization.login.password.title'/>">
                </div>
            </div>
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-6">
                    <button type="submit" class="btn btn-success"><spring:message
                            code='authorization.login.button.singin'/></button>
                    <button type="button" onclick="window.location='/irontest/registration'" class="btn btn-success">
                        <spring:message code='authorization.login.button.registration'/>
                    </button>
                </div>
            </div>
        </form>

    </div>
</div>
