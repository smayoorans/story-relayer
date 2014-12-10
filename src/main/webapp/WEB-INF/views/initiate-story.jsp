<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Index</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="well">
                <form:form class="form-horizontal" role="form" method="post" commandName="story"
                           action="initiate-action">

                    <h3>Initiate Story</h3>
                    <br>

                    <div class="form-group">
                        <label for="summery" class="col-sm-2 control-label">Title</label>

                        <div class="col-sm-10">
                            <form:input type="text" class="form-control" id="title" path="title"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="summery" class="col-sm-2 control-label">Story</label>

                        <div class="col-sm-10">
                            <form:textarea rows="10" class="form-control" id="summery" path="summery"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Check box
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>

</body>
</html>