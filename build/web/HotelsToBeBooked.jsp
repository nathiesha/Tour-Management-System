<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Apr 8, 2015, 6:19:02 AM
    Author     : Nathie
--%>
<sql:query var="hot" dataSource="jdbc/ABCD">
    select hotel_name from hotel
</sql:query>

<h1>Hotels to be booked</h1>
<table border="0.5">
    <!-- column headers -->
    <tr>
        <th>Tour Reference No</th>
        <th>Tour Date</th>
    </tr>
    <!-- column data -->
    
    <c:forEach var="hot" items="${hotels}">
        <tr>

            <td><c:out value="${hotels}"/></td>

        </tr>
    </c:forEach>
</table>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Hotel Bookings</title>
    </head>
    <body>
        <h1> Select a hotel name</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>select a hotel name</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> <form method="POST" action="selectedHotel">
                            <strong>Hotel name:</strong>
                            <select name="hotelSelect">
                                <c:forEach var="hot" items="${hotels}">
                                    <option><c:out value="${hotels}"/></option>
                                </c:forEach>
                            </select>
                            <input type="submit" value="submit" name="submit" />
                        </form>
                    </td>
                </tr>

            </tbody>
        </table>


    </body>
</html>
