<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Modifier une ville</title>
    </head>
    <body>
      <form:form action="#" modelAttribute="trip" method="post">
          Name : <form:input type="text" path="city" />
         <br />
           <br />
          Country : <form:input type="number" path="price" />
            <br />
        <br />
        <fmt:formatDate value="${trip.date}" pattern="dd/MM/yyyy" var="theDate" />

         Date : <form:input type="text" path="date" value="${theDate}" />
          <br />
          <br />
          <button type="submit">Enregistrer</button>
      </form:form>
     </body>
</html>
