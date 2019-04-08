<%--
  Created by IntelliJ IDEA.
  User: arun
  Date: 4/4/19
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
</head>
<body>
<h3>
    Registration Form
</h3>


<form name="registration" method="post" action="Registerservlet">
    <table border="0" width="30%" cellpadding="3">
        <thead>
        <tr>
            <th colspan="2">Registration Details</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>First Name</td>
            <td><input required type="text" name="first_Name" value="" placeholder="first name"></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><input type="text" required name="last_Name" value="" placeholder="last name"></td>
        </tr>
        <tr>
            <td>Username</td>
            <td><input type="text" required value="" name="userName" placeholder="username"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" required name="password" value="" placeholder="Password"></td>
        </tr>
        <td>
            <tr>
                <td><input type="submit" value="submit"></td>
                <td><input type="reset" value="Cancel"></td>
            </tr>
        </tbody>
    </table>
</form>
</body>
</html>