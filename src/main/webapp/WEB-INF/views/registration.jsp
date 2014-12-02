<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Story Relayer</title>

    <!-- Bootstrap -->
    <link href="resources/css/registration.css" rel="stylesheet">

</head>
<body>

<h2>Register to Story-Relayer</h2>

<form:form method="POST" commandName="registration" action="registration-action">
    <form:errors path="*" cssClass="errorblock" element="div" />
    <table>
        <tr>
            <td>First Name :</td>
            <td><form:input path="firstName" />
            </td>
            <td><form:errors path="lastName" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td>Last Name :</td>
            <td><form:input path="lastName" />
            </td>
            <td><form:errors path="lastName" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td>Display Name :</td>
            <td><form:input path="displayName" />
            </td>
            <td><form:errors path="displayName" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td>Email Adress :</td>
            <td><form:input path="emailAddress" />
            </td>
            <td><form:errors path="emailAddress" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td>Password :</td>
            <td><form:password path="password" />
            </td>
            <td><form:errors path="password" cssClass="error" />
            </td>
        </tr>
        <tr>
            <td>Confirm Password :</td>
            <td><form:password path="confirmPassword" />
            </td>
            <td><form:errors path="confirmPassword" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td>Favourite :</td>
            <td><form:select path="favCatogery">
                <form:option value="NONE" label="--- Select ---" />
                <form:options items="${favCatogeryList}" />
            </form:select></td>
            <td><form:errors path="favCatogery" cssClass="error" />
            </td>
        </tr>

        <tr>
            <!--<td colspan="3"><input type="submit" /></td> -->
            <td colspan="2"><input type="submit" value="Register"/></td>
        </tr>

    </table>
</form:form>

<script src="resources/js/registration.js"></script>

</body>
</html>