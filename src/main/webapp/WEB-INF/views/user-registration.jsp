<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
    </head>
    <body>
        <a style="float: right" href="home">Home</a><br/>
        <div align="center">
            <h3>User Sign Up Form</h3>
            <form:form modelAttribute="user">
                <form:errors path="*" style="color: red"/><hr/>
                <table>
                    <tr>
                        <td>Email:</td>
                        <td><form:input path="email" type="email" placeholder="Email" required="required"/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><form:input path="password" type="password" placeholder="Password" id="password" onKeyup="check()" required="required"/></td>
                    </tr>
                    <tr>
                        <td>Confirm Password:</td>
                        <td>
                            <input type="password" placeholder="Password" id="cpassword" onKeyup="check()" required/>
                            <span id="message"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>First Name:</td>
                        <td><form:input path="firstName" type="text" placeholder="First Name" required="required"/></td>
                    </tr>
                    <tr>
                        <td>Last Name:</td>
                        <td><form:input path="lastName" type="text" placeholder="Last Name" required="required"/></td>
                    </tr>
                    <tr>
                        <td>Username:</td>
                        <td><form:input path="username" type="text" placeholder="Username" required="required"/></td>
                    </tr>
                    <tr>
                        <td>Phone No:</td>
                        <td><form:input path="phoneNumber" type="text" placeholder="Phone number" title="Error Message" pattern="[1-9]{1}[0-9]{9}" required="required"/></td>
                    </tr>
                </table>
                <input type="submit" value="SIGN UP"/><br/></br>
                Already a user? <a href="user-login">Login Here</a><br/><br/>
            </form:form>
        </div>
    </body>
    <script>
        var check = function() {
            if (document.getElementById("password").value ==
                document.getElementById("cpassword").value) {
                document.getElementById("message").style.color = "green";
                document.getElementById("message").innerHTML = "matching";
            } else {
                      document.getElementById("message").style.color = "red";
                document.getElementById("message").innerHTML = "not matching";
            }
        } 
    </script>
</html>
