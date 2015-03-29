<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="well lead">
    <sec:authorize access="hasRole('USER')">
        <!-- For login user -->

        <form action="<c:url value="/j_spring_security_logout"/>" method="post" id="logoutForm">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>
        </form>
        <script>
            function formSubmit() {
                document.getElementById("logoutForm").submit();
            }
        </script>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                User : ${pageContext.request.userPrincipal.name} | <a
                    href="javascript:formSubmit()"> Logout</a>
            </h2>
        </c:if>
    </sec:authorize>
</div>