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
	 <h3><a href="trips/create">Add a trip</a></h3>
	 <h3><a href="bookings/create">Add a booking</a></h3>
		<table border="2" width="70%" cellpadding="2">
        <tr><th>City</th><th>Price</th><th>Date</th><th colspan="2">Actions</th></tr>
           <c:forEach var="trip" items="${trips}">
           <tr>
           <td>${trip.city}</td>
           <td>${trip.price}</td>
           <td>${trip.date}</td>
           <td><a href="trips/edit/${trip.city}">Edit</a></td>
           <td><a href="trips/delete?city=${trip.city}">Delete</a></td>
           </tr>
           </c:forEach>
           </table>
</body>
</html>