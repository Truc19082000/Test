<%-- 
    Document   : login
    Created on : Aug 8, 2020, 1:39:06 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="j_spring_security_check" method="post">
            <label>User Name: </label>
            <input type="text" name="username" /><br>
            
            <label>Password: </label>
            <input type="password" name="password" /><br>
            
            <input type="submit" value="Login" />
            <input type="hidden" name="${_crsf.parameterName}" value="${_crsf.token}"/>
        </form>
        <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
            <p stype="color: red">Your username or password is incorrect. Try again.</p>
        </c:if>
    </body>
</html>
