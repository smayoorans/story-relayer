<%--
  Created by IntelliJ IDEA.
  User: pratheep
  Date: 11/30/14
  Time: 8:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
<h2>Registration Results</h2>

<table>
    <tr>
        <td>FirstName :</td>
        <td>${registration.firstName}</td>
    </tr>

    <tr>
        <td>LasttName :</td>
        <td>${registration.lastName}</td>
    </tr>

    <tr>
        <td>DisplayName :</td>
        <td>${registration.displayName}</td>
    </tr>

    <tr>
        <td>EmailAddress :</td>
        <td>${registration.emailAddress}</td>
    </tr>

    <tr>
        <td>Password :</td>
        <td>${registration.password}</td>
    </tr>

    <tr>
        <td>Confirm Password :</td>
        <td>${registration.confirmPassword}</td>
    </tr>

</table>

</body>
</html>

