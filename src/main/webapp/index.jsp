<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Application</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-sm-4"></div>
<div align="center" class="col col-sm-5" style="border:1px solid slategrey;background:#70809038" >
<h1>Login Form</h1>
<br name="loginForm" class="form-group" method="post" action="login">
    <label>Username:</label>
    <input class="table-secondary" type="text" required name="username"/><br>
    <label>Password:</label>
    <input class="table-secondary" type="password" class="form-control" required name="password"/><br></br>
    <span>
        <input type="submit"  class="btn btn-success" value="login"/>
        <input type="reset"  class="btn btn secondary" value="reset">
    </span><br>
    <br>
    <input type="button" class="btn btn-success" value="Register Now" onclick="doSubmit('register.jsp')">
</form>
</div>
<div class="col-sm-4"></div>
</div>
</div>
<script>
    function doSubmit(registerpage) {
        window.location.href = registerpage;
    }
</script>
</body>
</html>