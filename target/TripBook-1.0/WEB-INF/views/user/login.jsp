<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<jsp:include page="../common/header.jsp" />
<body>
<div class="container">

<div class="row justify-content-md-center">
   <h2>Input your credentials</h2>
 </div>

       <form:form action="#" modelAttribute="user" method="post">
            <div class="form-group col-md-6">

            <label for="Login">Login</label>
             <form:input type="text" path="login" id="Login" cssClass="form-control"  placeholder="Login"/>
            </div>

            <div class="form-group col-md-6">
            <label for="Password">Password</label>
             <form:input type="text" path="password" id="Password"  cssClass="form-control" placeholder="Password"/>
             <small id="passwordHelp" class="form-text text-muted">Use a strong password</small>
            </div>

           	<div class="form-group col-md-6"">
       		<button type="submit" class="btn btn-success">Submit</button>
           	</div>

        </form:form>
   <jsp:include page="../common/footer.jsp" />
</div>
</body>
</html>