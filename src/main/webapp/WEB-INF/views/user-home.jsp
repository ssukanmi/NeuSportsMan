<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account: ${sessionScope.user.username}</title>
    </head>
    <body>
        <div style="float: right">
            <table>
                <tr>
                    <td><a href="home.htm">Home</a> | </td>
                    <td><a href="user/events"> Your Events</a> | </td>
                    <td><a href="user-logout"> Logout</a></td>
                </tr>
            </table>
        </div><br/>
        <div  align="center">
        	<h1>Welcome: ${sessionScope.user.username}</h1><hr/>
        	<a href="user-book-event"><button>Book new Event</button></a>
        </div>
    </body>
</html>
