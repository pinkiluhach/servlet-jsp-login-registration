<%--
  Created by IntelliJ IDEA.
  User: arun
  Date: 4/4/19
  Time: 12:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;
charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Successfully Login</title>
</head>
<body>
<c:out value="${'Welcome'}${requestScope.usrname}${' Login Successfully @@@@@@@@@@@@@@@@@@@@@@@@'}"/>

</body>
</html>