<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
    </head>
    <body>
        <a style="float: right" href="home">Home</a><br/>
        <div align="center">
            <h3>Login Here</h3>
            <form action="user-login.htm" method="post">
                <table>
                    <tr>
                        <td>Email:</td>
                        <td><input type="email" placeholder="Email" name="email" required/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" placeholder="Password" name="password" required/></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"/> Remember me</td>
                    </tr>
                </table>
                <input type="submit" value="LOGIN"/><br/></br>
                Not a member? <a href="user-registration"><b>SIGN UP</b></a><br/><br/>
                <a href="#">Forgot Password?</a>
            </form>
        </div>
    </body>
</html>
