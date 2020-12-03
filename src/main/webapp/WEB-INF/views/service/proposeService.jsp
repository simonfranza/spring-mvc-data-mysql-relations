<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="../common/header.jsp" />
<body>
<div class="container">
    <div class="row justify-content-md-center">
        <h2>Propose service</h2>
    </div>
    <form:form action="#" modelAttribute="serviceProposition" method="post">
        <div class="form-group col-md-6">
            <form:select path="service.id" id="service" cssClass="form-control">
                <form:option value="-1">Select a service</form:option>
                <form:options items="${services}" itemLabel="label" itemValue="id" />
            </form:select>
        </div>

        <div class="form-group col-md-6">
            <form:select path="neighbor.id" id="neighbor" cssClass="form-control">
                <form:option value="-1">Select a neighbor</form:option>
                <form:options items="${neighbors}" itemLabel="firstName" itemValue="id" />
            </form:select>
        </div>

        <div class="form-group col-md-6">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form:form>
    <jsp:include page="../common/footer.jsp" />
</body>
</html>
