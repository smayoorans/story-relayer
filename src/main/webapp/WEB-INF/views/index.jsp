<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Index</title>
</head>
<body>

<div class="container">

    <div class="row">
        <div class="col-lg-8">
            <div class="panel panel-default">
                <div class="panel-body">
                <h3>Welcome to Story Relayer!</h3>
                <p class="">
                    Story Relayer is a web application designed to support
                    collaborative writing of non-linear stories in any language.
                    With Novlet you will be able to read stories written by other users,
                    create your own ones, and choose the plot you like most from several alternatives.
                </p>
                </div>
            </div>

            <div class="panel panel-info">
                <div class="panel-heading">
                    Stories
                </div>
                <div class="panel-body">

                    <c:forEach items="${stories}" var="story">
                    <a class="bg-primary" href="edit-story?story-id=${story.storyId}">
                        <c:out value="${story.storyId}"/> <br>
                    </a>
                        <c:out value="${story.summery}"/> <br>

                    </c:forEach>

                </div>
            </div>

            <div class="jumbotron">
                <p>
                    <a class="btn btn-lg btn-primary" href="initiate-story" role="button">Initiate New Story </a>
                </p>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="well">
                <c:forEach items="${stories}" var="story">
                        <c:out value="${story.storyId}"/> <br>
                        <c:out value="${story.summery}"/> <br>
                </c:forEach>
                Hellow
            </div>
            <div class="well">
                Hellow
            </div>
        </div>

    </div>
    <div class="well">
        Hellow
    </div>


</div>

</body>
</html>