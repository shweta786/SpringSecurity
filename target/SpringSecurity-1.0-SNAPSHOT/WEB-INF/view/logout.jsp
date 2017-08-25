<%-- 
    Document   : logout
    Created on : Aug 24, 2017, 12:00:33 PM
    Author     : SHWETA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% session.invalidate(); %>
You are now logged out!!
<a href="${pageContext.request.contextPath}/login">go back</a>
