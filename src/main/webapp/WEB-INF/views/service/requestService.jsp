<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="../common/header.jsp" />
<body>
<div class="container">
    <div class="row justify-content-md-center">
        <h2>Request service</h2>
    </div>
    <p>Requested service : ${serviceRequest.service.label}</p>

    <form:form action="#" modelAttribute="serviceRequest" method="post">
    <div class="form-group col-md-6">
        <form:select path="service.id" id="service" cssClass="form-control">
            <form:option value="${serviceRequest.service.id}">${serviceRequest.service.label}</form:option>
        </form:select>
    </div>
        <div class="form-group col-md-6">
            <form:select path="neighbor.id" id="neighbor" cssClass="form-control">
                <form:option value="-1">Requesting neighbor</form:option>
                <form:options items="${neighbors}" itemLabel="firstName" itemValue="id" />
            </form:select>
        </div>
        <div class="form-group col-md-6">
            <label for="datepicker">Date</label>
            <fmt:formatDate value="${serviceRequest.date}" pattern="dd/MM/yyyy" var="theDate" />
            <form:input type="text" path="date" value="${theDate}" id="datepicker" cssClass="form-control"/>
        </div>

        <div class="form-group col-md-6">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form:form>
    <jsp:include page="../common/footer.jsp" />
</body>
</html>
