<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<div class="well lead">
    <div class="container-fluid">
        <div class="page-header"><h2><spring:message code='authorization.registration.header'/></h2></div>
        <form class="form-horizontal" action="/irontest/save">
            <div class="form-group">
                <label for="inputLogin" class="col-sm-3 control-label"><spring:message
                        code='authorization.registration.login.name'/></label>

                <div class="col-sm-4">
                    <input type="text" name="login" class="form-control" id="inputLogin" required="required"
                           placeholder="<spring:message code='authorization.registration.login.name'/>"
                           pattern="<spring:message code='authorization.registration.login.pattern'/>"
                           title="<spring:message code='authorization.registration.login.title'/>">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-sm-3 control-label"><spring:message
                        code='authorization.registration.password.name'/></label>

                <div class="col-sm-4">
                    <input type="password" name="password" class="form-control" id="inputPassword" required="required"
                           placeholder="<spring:message code='authorization.registration.password.name'/>"
                           pattern="<spring:message code='authorization.registration.password.pattern'/>"
                           title="<spring:message code='authorization.registration.password.title'/>">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword2" class="col-sm-3 control-label"><spring:message
                        code='authorization.registration.password.repeat.name'/></label>

                <div class="col-sm-4">
                    <input type="password" name="password2" class="form-control" id="inputPassword2" required="required"
                           placeholder="<spring:message code='authorization.registration.password.repeat.name'/>"
                           pattern="<spring:message code='authorization.registration.password.pattern'/>"
                           title="<spring:message code='authorization.registration.password.title'/>">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-6">
                    <button type="submit" class="btn btn-success">
                        <spring:message code='authorization.registration.button.registration'/>
                    </button>
                </div>
            </div>
        </form>

    </div>
</div>
