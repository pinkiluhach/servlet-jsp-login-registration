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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-5" align="center" style="border:1px solid slategrey;background:#70809038">
            <h3>Registration Form</h3>
            <form name="registration" class="form-group" method="post" action="Registerservlet">
                <label>First Name</label>
                <input class="table-secondary" required type="text" name="first_Name" value="" placeholder="First Name"><br>
                <label>Last Name</label>
                <input type="text"  class="table-secondary" required name="last_Name" value="" placeholder="Last Name"><br>
                <label>Username</label>
                <input type="text" class="table-secondary" required value="" name="userName" placeholder="Username"><br>
                <label>Password</label>
                <input type="password" class="table-secondary" required name="password" value="" placeholder="Password"><br>
                <br>
                <span>
                    <input type="submit" class="btn btn-success" value="submit">
                    <input type="reset" class="btn btn-default" value="Cancel">
                </span>
            </form>
        </div>
        <div class="col-sm-4"></div>
    </div>
</div>
</body>
</html>