<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="container">
	<hr>
	<footer>
		<p>&copy; Copyrights www.dov.spring-2020</p>
	</footer>
</div>

<spring:url value="/resources/js/jquery-3.5.1.min.js"
	var="jquery" />
<script src="${jquery}"></script>

<spring:url value="/resources/js/bootstrap.min.js"
	var="bootstrapJs" />
<script src="${bootstrapJs}"></script>

<spring:url value="/resources/js/jquery-ui.min.js"
	var="jqueryUi" />
<script src="${jqueryUi}"></script>

<spring:url value="/resources/js/navbar-active.js"
	var="navbarActive" />
<script src="${navbarActive}"></script>



