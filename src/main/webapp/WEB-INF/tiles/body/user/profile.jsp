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
                <div class="col-sm-3 col-sm-offset-1">
                    <div class="panel panel-info">
                        <div class="img-responsive">
                            <c:if test="${user.sex}">
                                <img src="/resources/img/man.png" width="250">
                            </c:if>
                            <c:if test="${!user.sex}">
                                <img src="/resources/img/woman.png" width="250">
                            </c:if>
                        </div>

                    </div>
                    <form method="get" action="/irontest/profile/edit">
                        <button type="submit">Edit profile</button>
                    </form>
                </div>
                <div class="col-sm-3 col-offset-1">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <spring:message code='user.profile.pnl.general.header'/>
                        </div>
                        <div class="panel-body row">
                            <div class="col-sm-6 control-label"><spring:message
                                    code='user.profile.pnl.general.login'/></div>
                            <div class="col-sm-5 control-label">
                                    ${user.login}
                            </div>
                        </div>
                        <div class="panel-body row">
                            <div class="col-sm-6 control-label"><spring:message
                                    code='user.profile.pnl.general.email'/></div>
                            <div class="col-sm-5 control-label">
                                    ${user.email}
                            </div>
                        </div>
                        <div class="panel-body row">
                            <div class="col-sm-6 control-label"><spring:message
                                    code='user.profile.pnl.general.role'/></div>
                            <div class="col-sm-5 control-label">
                                    ${user.type}
                            </div>
                        </div>
                        <div class="panel-body row">
                            <div class="col-sm-6 control-label"><spring:message
                                    code='user.profile.pnl.general.gender'/></div>
                            <div class="col-sm-5 control-label">
                                <c:if test="${user.sex}">
                                    <spring:message code='user.profile.pnl.general.gender.man'/>
                                </c:if>
                                <c:if test="${!user.sex}">
                                    <spring:message code='user.profile.pnl.general.gender.woman'/>
                                </c:if>
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