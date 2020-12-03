<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="../common/header.jsp" />
<body>
<div class="container">
    <div class="row justify-content-md-center">
        <h2>Update service</h2>
    </div>
    <form:form action="#" modelAttribute="service" method="post">
        <div class="form-group col-md-6">
            <label for="label">Name</label>
            <form:input type="text" path="label" placeholder="Plumbing" id="label" cssClass="form-control"/>
        </div>

        <div class="form-group col-md-6">
            <c:if test="${service.neighbors.size() > 0}">
                <h3>This service is proposed by</h3>

                <table class="table table-striped table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th colspan="2">Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="neighbor" items="${service.neighbors}">
                            <tr>
                                <td>${neighbor.firstName}</td>
                                <td>${neighbor.lastName}</td>
                                <td>${neighbor.phone}</td>
                                <td>${neighbor.email}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${service.neighbors.size() == 0}">
                <p>No one in the neighborhood has proposed this service yet.</p>
            </c:if>
        </div>

        <div class="form-group col-md-6">
            <c:if test="${service.requests.size() > 0}">
                <h3>This service has been requested by</h3>

                <table class="table table-striped table-hover">
                    <thead class="thead-dark">
                    <tr>
                        <th colspan="2">Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="request" items="${service.requests}">
                        <tr>
                            <td>${request.neighbor.firstName}</td>
                            <td>${request.neighbor.lastName}</td>
                            <td>${request.neighbor.phone}</td>
                            <td>${request.neighbor.email}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${service.requests.size() == 0}">
                <p>No one in the neighborhood has requested this service yet.</p>
            </c:if>
        </div>

        <div class="form-group col-md-6">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form:form>
    <jsp:include page="../common/footer.jsp" />
</body>
</html>
