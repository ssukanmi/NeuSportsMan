<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Success</title>
    </head>
    <body>
        <div align="center">
            <h1>User ${requestScope.user.email} has been successfully registered</h1>
            Click here to <a href="user-login">Login</a><br/>
            <h2>OR</h2>
            Go back <a href="home">Home</a>
        </div>
    </body>
</html>
