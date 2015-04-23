<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<div class="well lead">
    <div class="container-fluid">
        <sec:authorize access="hasRole('USER')">
            <div class="page-header"><h2><spring:message code='user.profile.header'/></h2></div>
            <div class="row">
                <div class="col-sm-4 col-offset-1">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <spring:message code='user.profile.pnl.general.header'/>
                        </div>
                        <div class="panel-body row">
                            <div class="col-sm-4 control-label"><spring:message
                                    code='user.profile.pnl.general.login'/></div>
                            <div class="col-sm-5 control-label">
                                <input type="text" name="login" value="${user.login}" class="input-sm">
                            </div>
                        </div>
                        <div class="panel-body row">
                            <div class="col-sm-4 control-label"><spring:message
                                    code='user.profile.pnl.general.email'/></div>
                            <div class="col-sm-5 control-label">
                                <input type="text" name="email" value="${user.email}" class="input-sm">
                            </div>
                        </div>
                        <div class="panel-body row">
                            <div class="col-sm-4 control-label"><spring:message
                                    code='user.profile.pnl.general.role'/></div>
                            <div class="col-sm-5 control-label">
                                    ${user.type}
                            </div>
                        </div>
                        <div class="panel-body row">
                            <div class="col-sm-4 control-label"><spring:message
                                    code='user.profile.pnl.general.gender'/></div>
                            <div class="col-sm-5 control-label">
                                <select id="gender" name="gender">
                                    <c:if test="${user.sex}">
                                        <option value="0"><spring:message
                                                code='user.profile.pnl.general.gender.woman'/></option>
                                        <option value="1" selected><spring:message
                                                code='user.profile.pnl.general.gender.man'/></option>
                                    </c:if>
                                    <c:if test="${!user.sex}">
                                        <option value="0" selected><spring:message
                                                code='user.profile.pnl.general.gender.woman'/></option>
                                        <option value="1"><spring:message
                                                code='user.profile.pnl.general.gender.man'/></option>
                                    </c:if>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-offset-1">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <spring:message code='user.profile.pnl.additional.interests'/>
                        </div>
                        <div class="panel-body row">
                                ${user.interests}
                        </div>
                        <div class="panel-heading">
                            <spring:message code='user.profile.pnl.additional.about'/>
                        </div>
                        <div class="panel-body row">
                                ${user.about}
                        </div>
                    </div>
                </div>
            </div>
        </sec:authorize>
        <sec:authorize access="isAnonymous()">
            <c:redirect url="/j_spring_security_logout"/>
        </sec:authorize>
    </div>
</div>