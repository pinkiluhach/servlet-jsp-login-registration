<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: arun
  Date: 4/4/19
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;
charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Completed</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
    <h2>Hi
        <c:out value="${requestScope.firstname}${requestScope.lastname}"/> Your Registration Completed.
    </h2><br>
    <a class="btn btn-primary" href="index.jsp">Login</a>
</div>
</body>
</html>
