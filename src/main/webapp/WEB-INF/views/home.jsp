<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Neu Sports Man</title>
    </head>
    <body>
        <div style="float: right">
            <table>
                <tr>
                    <td><a href="home">Home</a> | </td>
                    <td><a href="events"> All Events</a> | </td>
                    <td><a href="user-login"> Login</a></td>
                </tr>
            </table>
        </div><br/>
        <div align="center">
            <h1>Welcome To NEU Sporting Event Manage</h1><br/><br/>
            <h3>Upcoming Events</h3><hr/>
            <sql:setDataSource var = "dbConn" driver = "com.mysql.cj.jdbc.Driver"
                               url = "jdbc:mysql://localhost:3306/esdprojectdb" user = "root"
                               password = "p@ssword"/>
            <sql:query dataSource = "${dbConn}" var = "resultSet">
               SELECT title, dateAndTime FROM events
               ORDER BY dateAndTime
               LIMIT 5;
            </sql:query>
            <table border = "1">
               <c:forEach var = "row" items = "${resultSet.rows}">
                  <tr>
                     <td><c:out value = "${row.dateAndTime}"/></td>
                     <td><c:out value = "${row.title}"/></td>
                     <td><a href="#"><button>But Ticket</button></a></td>
                  </tr>
               </c:forEach>
            </table>
        </div>
    </body>
</html>
