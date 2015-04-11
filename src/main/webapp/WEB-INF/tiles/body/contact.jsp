<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<div class="well lead">
    <div class="container-fluid">
        <div class="page-header"><h2><spring:message code='contact.header'/></h2></div>
        <div class="col-sm-10 col-sm-offset-1">
            <spring:message code='contact.maintext'/>
        </div>
        <form class="form-horizontal" action="/irontest/contact/save" method="post">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-8 contact-msg">
                    <c:if test="${not empty error}">
                        <div class="error"><spring:message code='${error}'/></div>
                    </c:if>
                    <c:if test="${not empty msg}">
                        <div class="msg"><spring:message code='${msg}'/></div>
                    </c:if>
                </div>
            </div>
            <div class="form-group">
                <label for="name" class="col-sm-2 control-label"><spring:message
                        code='contact.form.name'/><span class="error">*</span></label>

                <div class="col-sm-4">
                    <input type="text" name="name" class="form-control" id="name" required="required"
                           placeholder="<spring:message code='contact.form.name'/>">
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="col-sm-2 control-label"><spring:message
                        code='contact.form.email'/><span class="error">*</span></label>

                <div class="col-sm-4">
                    <input type="email" name="email" class="form-control" id="email" required="required"
                           placeholder="<spring:message code='contact.form.email'/>">
                </div>
            </div>
            <div class="form-group">
                <label for="phone" class="col-sm-2 control-label"><spring:message
                        code='contact.form.phone'/></label>

                <div class="col-sm-4">
                    <input type="text" name="phone" class="form-control" id="phone"
                           placeholder="<spring:message code='contact.form.phone'/>">
                </div>
            </div>
            <div class="form-group">
                <label for="message" class="col-sm-2 control-label"><spring:message
                        code='contact.form.message'/><span class="error">*</span></label>

                <div class="col-sm-4">
                    <textarea name="message" class="text-area form-control" id="message" required="required"
                              tabindex="6" rows="5" cols="30"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-6">
                    <button type="submit" class="btn btn-success">
                        <spring:message code='contact.form.submit'/>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>