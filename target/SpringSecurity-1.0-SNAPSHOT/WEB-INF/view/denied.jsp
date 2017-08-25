<%-- 
    Document   : denied
    Created on : Aug 24, 2017, 12:00:41 PM
    Author     : SHWETA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <body>
        <h1 id="banner">Unauthorized Access !!</h1>
        <hr />
        <c:if test="${not empty error}">
            <div style="color:red">
                Fake login attempt!!<br /> 
                Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
            </div>
        </c:if>
        <p class="message">Access denied!</p>
        <a href="/SpringSecurity/login">Go back to login page</a> 
    </body>
</html>
