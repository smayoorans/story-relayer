<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Story Relayer</title>
</head>
<body>
<br>

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="well">
                <form:form class="form-horizontal" role="form" method="post" commandName="user"
                           action="registration-action">

                    <h3>Registration Details</h3>
                    <br>

                    <div class="form-group">
                        <label for="firstName" class="col-sm-2 control-label">First Name</label>

                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="firstName" path="firstName"
                                        placeholder="First Name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="lastName" class="col-sm-2 control-label">Last Name</label>

                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="lastName" path="lastName"
                                        placeholder="Last Name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="displayName" class="col-sm-2 control-label">Display Name</label>

                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="displayName" path="displayName"
                                        placeholder="Display Name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="emailAddress" class="col-sm-2 control-label">Email</label>

                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="emailAddress" path="emailAddress"
                                        placeholder="Email"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">UserName</label>

                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="username" path="username"
                                        placeholder="Username"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">Password</label>

                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="password" path="password"
                                        placeholder="Password"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Remember me
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">Sign in</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>