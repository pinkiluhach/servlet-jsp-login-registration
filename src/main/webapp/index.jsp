<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login to our app</title>
</head>
<body>

<h1>Login Form</h1>

<form name="loginForm" method="post" action="login">

    Username: <input type="text" required name="username"/><br/>
    Password: <input type="password" required name="password"/><br/>
    <input type="submit" value="login"/>
    <input type="reset" value="reset">

    <input type="button" value="Register Now" onclick="doSubmit('register.jsp')">
</form>
<script>
    function doSubmit(registerpage) {
        window.location.href = registerpage;
    }
</script>
</body>
</html>