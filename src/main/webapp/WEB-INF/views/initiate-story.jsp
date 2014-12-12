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
                        <label for="summery" class="col-sm-2 control-label">Story Name</label>

                        <div class="col-sm-10">
                            <form:textarea rows="1" class="form-control" id="summery" path=""/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="summery" class="col-sm-2 control-label">Gener</label>

                        <div class="col-sm-10">
                            <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="summery" class="col-sm-2 control-label">Summary</label>

                        <div class="col-sm-10">
                            <form:textarea rows="3" class="form-control" id="summery" path="summery"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="summery" class="col-sm-2 control-label">Restriction Type</label>

                        <div class="col-sm-10">
                            <select class="form-control">
                                <option>Initiate Controlled</option>
                                <option>Non-Controlled </option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10" name="btn_submit">
                            <button type="button" class="btn btn-primary btn-lg">Submit</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>

</body>
</html>