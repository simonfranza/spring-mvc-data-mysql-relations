<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../common/header.jsp" />
<body>
<div class="container">
	 <br />
     	 <a class="btn btn-dark btn-lg" href="bookings/create">Add a booking</a></h3>
		 <br />
    	 <br />
    		<table class="table table-striped table-hover">
    		 <thead class="thead-dark">
        <tr><th>Full Name</th><th>Trip City</th><th colspan="2">Actions</th></tr>
         </thead>
          <tbody>
           <c:forEach var="booking" items="${bookings}">
           <tr>
           <td>${booking.customerFullName}</td>
           <td>${booking.trip.city}</td>
           <td><a href="bookings/edit/${booking.idBooking}" class="btn btn-info">Edit</a>
           <a href="bookings/delete?id=${booking.idBooking}" class="btn btn-danger" onclick="if (!(confirm('Are you sure ?'))) return false">Delete</a>
           </td>
           </tr>
           </c:forEach>
           </tbody>
           </table>
</div>
</body>
</html>