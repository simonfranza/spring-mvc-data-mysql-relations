<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../common/header.jsp" />
<body>
<div class="container">
	<br />
	 <a class="btn btn-dark btn-lg" href="trips/create" role="button">Add a trip</a>
	 <br />
	 <br />
		<table class="table table-striped table-hover">
		 <thead class="thead-dark">
          <tr><th scope="col">City</th>
              <th scope="col">Price</th>
              <th scope="col">Date</th>
              <th scope="col" colspan="2">Actions</th>
          </tr>
          </thead>
          <tbody>
           <c:forEach var="trip" items="${trips}">
           <tr>
           <td>${trip.city}</td>
           <td>${trip.price}</td>

           <fmt:formatDate value="${trip.date}" var="formattedDate"
           type="date" pattern="dd/MM/yyyy" />
           <td>${formattedDate}</td>
           <td><a href="trips/edit/${trip.city}" class="btn btn-info">Edit</a>
           <a href="trips/delete?city=${trip.city}" class="btn btn-danger" onclick="if (!(confirm('Are you sure ?'))) return false">Delete</a>
           <a href="bookings/trip/${trip.city}" class="btn btn-secondary">Display bookings</a>

           </td>
           </tr>
           </c:forEach>
           </tbody>
           </table>
</div>
<jsp:include page="../common/footer.jsp" />
</body>
</html>