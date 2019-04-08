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
</head>
<body>
Hi
<c:out value="${requestScope.fnme}${requestScope.lnme}"/> Your Registration Completed.
<a href="index.jsp">Login</a>
</body>
</html>
