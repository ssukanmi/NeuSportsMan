<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Events</title>
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
        <div class="container" style="margin-top:35px">
        	<h4>Select Number of Rows</h4>
        	<div class="form-group">
        		<select name="state" id="maxRows" class="form-control" style="width:150px;">
        			<option value="5000">Show All</option>
        			<option value="5">5</option>
        			<option value="10">10</option>
        			<option value="15">15</option>
        			<option value="20">20</option>
        			<option value="50">50</option>
        			<option value="75">75</option>
        			<option value="100">100</option>
        		</select>
        	</div>
	        <div align="center">
	            <h1>Filter Events to Your Liking</h1><br/><br/>
	            <sql:setDataSource var = "dbConn" driver = "com.mysql.cj.jdbc.Driver"
	                               url = "jdbc:mysql://localhost:3306/esdprojectdb" user = "root"
	                               password = "p@ssword"/>
	            <sql:query dataSource = "${dbConn}" var = "resultSet">
	               SELECT * FROM events
	               ORDER BY dateAndTime;
	            </sql:query>
	            <table border = "1">
	               <c:forEach var = "row" items = "${resultSet.rows}">
	                  <tr>
	                     <td><c:out value = "${row.id}"/></td>
	                     <td><c:out value = "${row.owner}"/></td>
	                     <td><c:out value = "${row.title}"/></td>
	                     <td><c:out value = "${row.host}"/></td>
	                     <td><c:out value = "${row.description}"/></td>
	                     <td><c:out value = "${row.dateAndTime}"/></td>
	                     <td><a href="#"><button>But Ticket</button></a></td>
	                  </tr>
	               </c:forEach>
	            </table>
			</div>
        </div>
    </body>
</html>