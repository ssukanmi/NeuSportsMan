<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Your Event</title>
    </head>
    <body>
    	<a style="float: right" href="user-login">User Home</a><br/>
        <div align="center">
            <h3>Fill in the Event Information</h3>
            <form:form modelAttribute="event">
                <form:errors path="*" style="color: red"/><hr/>
                <table>
                    <tr>
                        <td>Title:</td>
                        <td><form:input path="title" type="text" placeholder="Title" required="required"/></td>
                    </tr>
                    <tr>
                        <td>Host:</td>
                        <td><form:input path="host" type="text" placeholder="Host" required="required"/></td>
                    </tr>
                    <tr>
                        <td>Venue:</td>
                        <td>
                            <form:select path="venue">
                                <form:option value="-" label="--Please Select--"/>
                                <form:options items="${requestScope.venues}"/>
                            </form:select>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td><form:textarea path="description" rows="4" cols="50"/></td>
                    </tr>
                    <tr>
                        <td>Date and Time:</td>
                        <td><form:input path="dateAndTime" type="datetime-local" placeholder="Select DateTime" required="required"/></td>
                    </tr>
                </table>
                <input type="submit" value="Book Event"/>
            </form:form>
        </div>
    </body>
</html>
