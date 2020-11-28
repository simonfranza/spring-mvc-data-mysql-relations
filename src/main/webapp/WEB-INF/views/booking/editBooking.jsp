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
      <form:form action="#" modelAttribute="booking" method="post">
         <div class="form-group col-md-6">
               <label for "customerFullName"> Full Name</label>
               <form:input type="text" path="customerFullName" placeholder="input customer full name" id="customerFullName" readonly="true" cssClass="form-control"/>
         </div>

         <div class="form-group col-md-6">
               <label for "tripCity"> Trip City</label>
                 <form:select path="trip.city" id="tripCity" cssClass="form-control">
                     <form:option value="-1">Select your trip</form:option>
                 <form:options items="${trips}" itemLabel="city" itemValue="city" />
                 </form:select>
           </div>

       	  <div class="form-group col-md-6">
          <button type="submit" class="btn btn-primary">Submit</button>
          </div>
      </form:form>
 <jsp:include page="../common/footer.jsp" />
     </body>
</html>
