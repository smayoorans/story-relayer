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
        <div class="col-md-8 col-md-offset-2">
            <div class="well">
                <form class="form-horizontal" role="form" method="post"
                           action="registration-action">



                    <div class="panel panel-info">
                        <div class="panel-heading">Essential Information</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="username" class="col-sm-3 control-label">Story Id</label>

                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="username" value="${story.storyId}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="summary" class="col-sm-3 control-label">Summary</label>

                                <div class="col-sm-6">
                                    <textarea rows="5" class="form-control" id="summary">${story.summery}</textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="confirm-password" class="col-sm-3 control-label">Confirm Password</label>

                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="confirm-password" placeholder="Confirm Password"/>
                                </div>
                            </div>
                            <div class="checkbox">
                                <label class="col-sm-offset-3 col-sm-10">
                                    <input type="checkbox"> I accept terms and conditions
                                </label>
                            </div>
                        </div>
                    </div>


                    <br>



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
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>