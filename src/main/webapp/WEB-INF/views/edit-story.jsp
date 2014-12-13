<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Story Relayer</title>
    <link href="resources/froala_editor/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="resources/froala_editor/css/froala_editor.min.css" rel="stylesheet" type="text/css">
    <link href="resources/froala_editor/css/froala_style.min.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <form class="form-horizontal" role="form" method="post" action="registration-action">
                <div class="panel panel-default">
                    <div class="panel-heading">Write down your story content here</div>
                    <div class="panel-body">
                        <section id="editor">
                            <div id='edit'>

                            </div>
                        </section>
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-default">Save as Draft</button>
                        &nbsp;&nbsp;
                        <button type="button" class="btn btn-primary">Submit</button>
                        &nbsp;&nbsp;
                        <button type="button" class="btn btn-default">Cancel</button>
                        &nbsp;
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>
</body>
</html>