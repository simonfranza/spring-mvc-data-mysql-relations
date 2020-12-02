<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<jsp:include page="../common/header.jsp" />
<body>
<div class="container">
<div class="row justify-content-md-center">
   <h2>update trip trip information</h2>
 </div>
      <form:form action="#" modelAttribute="trip" method="post">
         <div class="form-group col-md-6">
         <label for "city">City</label>
         <form:input type="text" path="city" placeholder="input trip city" id="city" cssClass="form-control" readonly="true"/>
         </div>

          <div class="form-group col-md-6">
          <label for="price">Price</label>
           <form:input type="number" path="price" placeholder="input trip price" id="price" cssClass="form-control"/>
          </div>

          <div class="form-group col-md-6">
          <label for="datepicker">Date</label>
          <fmt:formatDate value="${trip.date}" pattern="dd/MM/yyyy" var="theDate" />
          <form:input type="text" path="date" value="${theDate}" placeholder="input trip date" id="datepicker" cssClass="form-control"/>
          </div>

       	  <div class="form-group col-md-6">
          <button type="submit" class="btn btn-primary">Submit</button>
          </div>
      </form:form>
     </div>
 <jsp:include page="../common/footer.jsp" />
  <script>
    $(function () {
    $("#datepicker").datepicker();
    });
  </script>
     </body>
</html>
