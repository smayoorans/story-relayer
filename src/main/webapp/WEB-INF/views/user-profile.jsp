<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Story Relayer</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="well">
                <form:form class="form-horizontal" role="form" method="post" commandName="user"
                           action="registration-action">

                    <h3>User Profile</h3>
                    <br>

                    <div class="panel panel-default">
                        <div class="panel-heading">Display Name</div>
                        <div class="panel-body">
                            <div class="form-group">

                                <div class="col-lg-4">
                                    <img src="resources/img/avatar.png" class="img-thumbnail" width="200px">
                                </div>
                                <div class="col-lg-8">
                                    <h2>Somasundaram Mayooran</h2>

                                    <br>

                                    <div class="form-group">
                                        <label class="col-lg-4 control-label">Preferred Genre</label>
                                        <div class="col-lg-6">
                                            <div class="form-control">Horror, Fantasy, etc</div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-4 control-label">Email Address</label>
                                        <div class="col-lg-7">
                                            <div class="form-control">smayoorans@gmail.com</div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-4 control-label">Username</label>
                                        <div class="col-lg-6">
                                            <div class="form-control">mayooran</div>
                                        </div>
                                    </div>


                                </div>

                            </div>

                        </div>
                    </div>


                    <br>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Edit</button>
                            &nbsp;
                            <button type="button" class="btn btn-default" onclick="location.href='index'">Cancel</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>