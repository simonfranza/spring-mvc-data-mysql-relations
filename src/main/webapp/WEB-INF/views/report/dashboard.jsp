<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../common/header.jsp" />
<body>
<div class="container">
	<br />
	 <h1> Trips Report </h1>

		<table class="table table-striped ">
		 <thead class="thead-dark">
          <tr><th scope="col">City</th>
              <th scope="col">Date</th>
              <th scope="col">Number of passengers</th>
              <th scope="col">Total Amount</th>
          </tr>
          </thead>
          <tbody>
           <c:forEach var="dashboardData" items="${dashboardDatas}">
           <tr>
           <td>${dashboardData.tripCity}</td>
           <td>${dashboardData.tripDate}</td>
           <td>${dashboardData.numberOfPassengers}</td>
           <td>${dashboardData.totalAmount}</td>
           </tr>
           </c:forEach>
           </tbody>
           </table>
</div>
<jsp:include page="../common/footer.jsp" />
</body>
</html>