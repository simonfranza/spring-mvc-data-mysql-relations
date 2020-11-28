<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../common/header.jsp" />
<body>
<div class="container">
    <div class="row justify-content-md-center">
    <h2>Access denied</h2>
    </div>
	<a class="btn btn-primary btn-lg" href="login" role="button">Retry login</a>
	<p>
<jsp:include page="../common/footer.jsp" />
</body>
</html>