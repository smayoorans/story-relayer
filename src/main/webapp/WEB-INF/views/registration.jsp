<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Story Relayer</title>

    <!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<body>
<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Story Relayer</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <%--<li><a href="">Default</a></li>--%>
                <li><a href="">Sign Up</a></li>
                <li class="active">
                    <a href="">Login <span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="well">
                <form:form class="form-horizontal" role="form" method="post" commandName="user" action="registration-action">

                    <h3>Registration Details</h3>
                    <br>
                    <div class="form-group">
                        <label for="firstName" class="col-sm-2 control-label">First Name</label>
                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="firstName" path="firstName" placeholder="First Name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="lastName" class="col-sm-2 control-label">Last Name</label>
                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="lastName" path="lastName" placeholder="Last Name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="displayName" class="col-sm-2 control-label">Display Name</label>
                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="displayName" path="displayName" placeholder="Display Name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="emailAddress" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="emailAddress" path="emailAddress" placeholder="Email"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">UserName</label>
                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="username" path="username" placeholder="Username"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="password" path="password" placeholder="Password"/>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
</body>
</html>