<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="well lead">
    <div class="container-fluid">
        <div class="page-header"><h2><spring:message code='auth.reg.header'/></h2></div>
        <form class="form-horizontal" action="/irontest/registration/save" method="post">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>

            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-8">
                    <c:if test="${not empty error}">
                        <div class="error"><spring:message code='${error}'/></div>
                    </c:if>
                    <c:if test="${not empty msg}">
                        <div class="msg"><spring:message code='${msg}'/></div>
                    </c:if>
                </div>
            </div>
            <div class="form-group">
                <label for="inputLogin" class="col-sm-3 control-label"><spring:message
                        code='auth.reg.login.name'/><span class="error">*</span></label>

                <div class="col-sm-4">
                    <input type="text" name="login" class="form-control" id="inputLogin" required="required"
                           placeholder="<spring:message code='auth.reg.login.name'/>"
                           pattern="<spring:message code='auth.reg.login.pattern'/>"
                           title="<spring:message code='auth.reg.login.title'/>"
                           value="${login}">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-sm-3 control-label"><spring:message
                        code='auth.reg.password.name'/><span class="error">*</span></label>

                <div class="col-sm-4">
                    <input type="password" name="password" class="form-control" id="inputPassword" required="required"
                           placeholder="<spring:message code='auth.reg.password.name'/>"
                           pattern="<spring:message code='auth.reg.password.pattern'/>"
                           title="<spring:message code='auth.reg.password.title'/>">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword2" class="col-sm-3 control-label"><spring:message
                        code='auth.reg.password.repeat.name'/><span class="error">*</span></label>

                <div class="col-sm-4">
                    <input type="password" name="password2" class="form-control" id="inputPassword2" required="required"
                           placeholder="<spring:message code='auth.reg.password.repeat.name'/>"
                           pattern="<spring:message code='auth.reg.password.pattern'/>"
                           title="<spring:message code='auth.reg.password.title'/>">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-6">
                    <button type="submit" class="btn btn-success">
                        <spring:message code='auth.reg.button.registration'/>
                    </button>
                </div>
            </div>
        </form>

    </div>
</div>
