<%-- 
    Document   : editEmployeeList
    Created on : Aug 24, 2017, 12:00:58 PM
    Author     : SHWETA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Spring Security</title>
    </head>
    <body>
         <center>
        <h2>Employee Management Screen</h2>
        <h4><a href="logout">Click here to logout</a></h4>
        <form method="post" action="add">
            <table>
                <tr>
                    <td>Name  <input name="name" /></td>
                </tr>
                <tr>
                    <td>Email  <input name="email" /></td>
                </tr>
            </table>  
            <br>
            <input type="submit"/>                              
        </form>
        <br><br>
        <h3><u>Employees</u></h3>
        <c:if  test="${!empty employeeList}">
            <table class="data">
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach items="${employeeList}" var="emp">
                    <tr>
                        <td>${emp.name} </td>
                        <td>${emp.email}</td>
                        <td><a href="delete/${emp.id}">delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </center>
    </body>
</html>
