<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<jsp:include page="../common/header.jsp" />
<body>
<div class="container">
    <div class="row justify-content-md-center">
        <h2>Update booking</h2>
    </div>
    <form:form action="#" modelAttribute="neighbor" method="post">
    <div class="form-group col-md-6">
        <label for=firstName">First Name</label>
        <form:input type="text" path="firstName" placeholder="John" id="firstName" cssClass="form-control"/>
        <br>
        <label for="lastName">Last Name</label>
        <form:input type="text" path="lastName" placeholder="Doe" id="lastName" cssClass="form-control"/>
    </div>

    <div class="form-group col-md-6">
        <label for="address">Address</label>
        <form:input type="text" path="address" id="address" cssClass="form-control"/>
        <br>
        <label for="phone">Phone number</label>
        <form:input type="tel" path="phone" id="phone" cssClass="form-control"/>
        <label for="email">Email address</label>
        <form:input type="email" path="email" id="email" cssClass="form-control"/>
    </div>

    <div class="form-group col-md-6">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
    </form:form>
    <jsp:include page="../common/footer.jsp" />
</body>
</html>
