<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Index</title>
</head>
<body>

<div class="container">

    <div class="row">
        <div class="col-lg-9">
            <div class="jumbotron">
                <p>
                    <a class="btn btn-lg btn-primary" href="initiate-story" role="button">Initiate New Story </a>
                </p>
            </div>
        </div>
        <div class="col-lg-3">
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