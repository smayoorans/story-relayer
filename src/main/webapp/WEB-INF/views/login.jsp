<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>
<html>
<body>

<form id="login-form" method="get" action="<c:url value="/j_spring_security_check"/>">

    <label for="username">Username</label>
    <input type="text" id="username" name="username">
    <br>
    <label for="password">Password</label>
    <input type="text" id="password" name="password">

    <input type="submit" value="Login">


</form>


</body>
</html>