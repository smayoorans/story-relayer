<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <script src="//tinymce.cachefly.net/4.1/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({
            selector: "textarea",
            theme: "modern",
            plugins: [
                "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                "searchreplace wordcount visualblocks visualchars code fullscreen",
                "insertdatetime media nonbreaking save table contextmenu directionality",
                "emoticons template paste textcolor colorpicker textpattern"
            ],
            toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
            toolbar2: "print preview | forecolor backcolor emoticons | styleselect formatselect fontselect fontsizeselect ",
            image_advtab: true,
            templates: [
                {title: 'Test template 1', content: 'Test 1'},
                {title: 'Test template 2', content: 'Test 2'}
            ]
        });
    </script>
    <title>Story Relayer</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="well">
<<<<<<< HEAD
                <form class="form-horizontal" role="form" method="post" action="registration-action">
                    <div class="panel-heading">Story Editor</div>
=======
                <form class="form-horizontal" role="form" method="post" action="#">
>>>>>>> origin/master
                    <div class="panel panel-info">
                        <div class="panel-body">
                            <div class="form-group">
<<<<<<< HEAD
                                <div class="col-lg-12">
                                    <textarea>Your Story</textarea>
=======
                                <label for="username" class="col-sm-3 control-label">Story Id</label>

                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="username" value="${story.storyId}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="summary" class="col-sm-3 control-label">Summary</label>

                                <div class="col-sm-6">
                                    <textarea rows="5" class="form-control" id="summary">${story.summery}</textarea>
>>>>>>> origin/master
                                </div>
                            </div>
                        </div>
                    </div>

                    <br>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-saveDraft">Save as Draft</button>
                            <button type="submit" class="btn btn-submit">Submit</button>
                            <button type="submit" class="btn btn-cancel">Cancel</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>