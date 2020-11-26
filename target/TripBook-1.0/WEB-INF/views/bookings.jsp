<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trips Manager</title>
</head>
<body>
	<h2>Trips</h2>
	 <h3><a href="bookings/create">Add a trip</a></h3>
		<table border="2" width="70%" cellpadding="2">
        <tr><th>Full Name</th><th>Trip City</th><th colspan="2">Actions</th></tr>
           <c:forEach var="booking" items="${bookings}">
           <tr>
           <td>${booking.customerFullName}</td>
           <td>${booking.trip.city}</td>
           <td><a href="bookings/edit/${booking.idBooking}">Edit</a></td>
           <td><a href="bookings/delete?city=${booking.idBooking}">Delete</a></td>
           </tr>
           </c:forEach>
           </table>
</body>
</html>