<%--
  Created by IntelliJ IDEA.
  User: arun
  Date: 4/4/19
  Time: 12:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
          pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error in Login</title>
</head>
<body>
<c:out value="${'Invalid Credentials!!!!.Please Enter Valid Details'}"/>
<h4></h4>
<a href="index.jsp">Click Here</a> to try Again.
</body>
</html>