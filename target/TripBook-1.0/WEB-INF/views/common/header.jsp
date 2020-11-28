<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<head>
<title>Bird Trips Office</title>

<spring:url value="/resources/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />

<spring:url value="/resources/css/jquery-ui.min.css"
	var="jqueryCss" />
<link href="${jqueryCss}" rel="stylesheet" />

</head>

<spring:url value="/" var="home" />
<spring:url value="/trips" var="trips" />
<spring:url value="/bookings" var="bookings" />
<spring:url value="/login" var="login" />
<spring:url value="/logout" var="logout" />
<spring:url value="/dashboard" var="dashboard" />

<nav class="navbar navbar-expand navbar-dark bg-dark">
  <a class="navbar-brand" href="${home}">Home</a>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-item nav-link active" href="${dashboard}">Dashboard</a>
      </li>
      <li class="nav-item">
         <a class="nav-item nav-link" href="${trips}">Trips</a>
      </li>
      <li class="nav-item">
          <a class="nav-item nav-link" href="${bookings}">Bookings</a>
      </li>
      <li class="nav-item">
          <a class="nav-item nav-link" href="${login}">Login</a>
      </li>
      <li class="nav-item">
           <a class="nav-item nav-link disabled" href="${logout}" >Logout</a>
      </li>
    </ul>
  </div>
</nav>