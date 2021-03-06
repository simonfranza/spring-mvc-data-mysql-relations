<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../common/header.jsp" />
<body>
<div class="container">
    <br />
    <a class="btn btn-dark btn-lg" href="services/create">Add a service</a>
    <a class="btn btn-dark btn-lg" href="services/propose">Offer a service</a>
    <br />
    <br />
    <table class="table table-striped table-hover">
        <thead class="thead-dark">
        <tr>
            <th>Service</th>
            <th>Offers</th>
            <th>Requests</th>
            <th colspan="3">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="service" items="${services}">
            <tr>
                <td>${service.label}</td>
                <td>${fn:length(service.neighbors)}</td>
                <td>${fn:length(service.requests)}</td>
                <td><a href="services/edit/${service.id}" class="btn btn-info">Edit</a></td>
                <td><a href="services/delete?id=${service.id}" class="btn btn-danger" onclick="if (!(confirm('Are you sure ?'))) return false">Delete</a></td>
                <td>
                    <c:if test="${fn:length(service.neighbors) > 0}">
                        <a href="services/request/${service.id}" class="btn btn-info">Request service</a>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>