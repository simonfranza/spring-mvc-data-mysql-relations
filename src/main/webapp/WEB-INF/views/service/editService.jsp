<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form:form>
    <jsp:include page="../common/footer.jsp" />
</body>
</html>
