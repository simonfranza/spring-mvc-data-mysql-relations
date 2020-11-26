<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Add a booking</title>
        <link type="text/css" rel="stylesheet" href="form.css" />
    </head>
    <body>
      <form:form action="#" modelAttribute="booking" method="post">
          Full Name : <form:input type="text" path="customerFullName" />
         <br />
           <br />

            <label>Trip City
        <form:select path="trip.city">
            <form:option value="-1">Select your trip</form:option>
            <form:options items="${trips}" itemLabel="city" itemValue="city" />
        </form:select>

         </label>
      <br />
        <br />
          <button type="submit">Enregistrer</button>
      </form:form>
     </body>
</html>
