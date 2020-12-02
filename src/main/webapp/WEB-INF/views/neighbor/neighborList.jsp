<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../common/header.jsp" />
<body>
<div class="container">
    <br />
    <a class="btn btn-dark btn-lg" href="neighbors/create">Add a neighbor</a>
    <br />
    <br />
    <table class="table table-striped table-hover">
        <thead class="thead-dark">
        <tr>
            <th colspan="2">Full name</th>
            <th>Address</th>
            <th>Phone number</th>
            <th>Email address</th>
            <th colspan="2">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="neighbor" items="${neighbors}">
            <tr>
                <td>${neighbor.firstName}</td>
                <td>${neighbor.lastName}</td>
                <td>${neighbor.address}</td>
                <td>${neighbor.phone}</td>
                <td>${neighbor.email}</td>
                <td><a href="neighbors/edit/${neighbor.id}" class="btn btn-info">Edit</a>
                    <a href="neighbors/delete?id=${neighbor.id}" class="btn btn-danger" onclick="if (!(confirm('Are you sure ?'))) return false">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>