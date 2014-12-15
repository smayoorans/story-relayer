<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="dateValue" class="java.util.Date"/>
<jsp:setProperty name="dateValue" property="time" value="${story.createdTimeStamp}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Story Relayer</title>
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

            <div class="bs-component">
                <div class="list-group">
                    <a href="#" class="list-group-item active" style="background-color: #c4074c;">
                        <span class="badge">92</span>
                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Top Rated Stories
                    </a>
                    <c:forEach var="story" items="${topRatedStoryList}">

                        <a href="view-story?story-id=${story.storyId}" class="list-group-item">
                            <h4 class="list-group-item-heading" style="color:#003cb3">${story.storyName}</h4>

                            <p class="list-group-item-text">
                                <img src="<c:url value="${story.primeImageSrc}"/>" align="left" class="img-thumbnail img1">
                                    ${story.summary}</p>
                            <small>Create by <span style="color: #2780e3">${story.initiator.username}</span>,
                                <cite><fmt:formatDate value="${dateValue}" pattern="MM/dd/yyyy HH:mm"/> </cite></small>
                            &nbsp;
                            <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                            <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                            <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                            <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                            <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        </a>
                    </c:forEach>

                    <a href="view-story" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>

                    <a href="view-story" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>

                    <a href="view-story" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>

                    <a href="view-story" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>

                    <a href="view-story" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>

                    <a href="view-story" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>


                </div>
            </div>
            <div class="pull-right"><a href="#">Back to top</a></div>
        </div>
        <div class="col-lg-4">

            <div class="well">
                <a class="btn btn-primary btn-block btn-lg" href="initiate-story" role="button">Initiate New Story </a>
            </div>

            <div class="bs-component">
                <div class="list-group">
                    <a href="#" class="list-group-item active">
                        <span class="badge">14</span>
                        <span class="glyphicon glyphicon-list" aria-hidden="true"></span> Horror Stories
                    </a>
                    <c:forEach var="story" items="${horrorStoryList}">

                        <a href="view-story?story-id=${story.storyId}" class="list-group-item">
                            <h4 class="list-group-item-heading">${story.storyName}</h4>

                            <p class="list-group-item-text">${story.summary}</p>
                        </a>
                    </c:forEach>


                    <a href="#" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>

                    <a href="#" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>

                    <a href="#" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>

                </div>
            </div>

            <div class="bs-component">
                <div class="list-group">
                    <a href="#" class="list-group-item active" style="background-color: #1c6c04;">
                        <span class="badge">56</span>
                        <span class="glyphicon glyphicon-list" aria-hidden="true"></span> Fantasy Stories
                    </a>
                    <a href="view-story" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>

                    <a href="view-story" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>

                    <a href="#" class="list-group-item">
                        <h4 class="list-group-item-heading" style="color:#003cb3">List group item heading</h4>

                        <p class="list-group-item-text">
                            <img src="<c:url value="/resources/img/bg1.png"/>" align="left"
                                 class="img-thumbnail img1">
                            Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit. orta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.</p>
                        <small>Create by <span style="color: #2780e3">smayoorans</span>, <cite> 23/12/2013
                            12:33PM</cite></small>
                        &nbsp;
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                        <small><img src="<c:url value="/resources/img/star.png"/>" class="star-rate"></small>
                    </a>

                </div>
            </div>

        </div>
    </div>
</div>


<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">

        <div class="modal-content">
            <form class="form-horizontal" role="form" method="post" action="j_spring_security_check">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Provide your credentials</h4>
                </div>
                <div class="modal-body">


                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">Username</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="username" name="j_username"
                                   placeholder="Username">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">Password</label>

                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="password" name="j_password"
                                   placeholder="Password">
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
                    <a href="registration">To Register</a>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Sign in</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>