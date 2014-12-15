<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="js-no ie9"> <![endif]-->
<!--[if IE 10]> <html lang="en" class="js-no ie10"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title><c:out value="${story.storyName}"/></title>
</head>

<body>


<!--===    HEADER     ===-->
<section class="bg-15 bg-center bg-cover">
    <div class="bg-filter">
        <div class="container section-lg">
            <h1 class="top-title"><c:out value="${story.storyName}"/></h1>
        </div>
    </div>
</section>
<!--===/END      HEADER     ===-->


<!--===    MAIN WRAP     ===-->
<section class="section">
    <div class="container">
        <div class="post-header">
            <h2 class="visible-xs"><c:out value="${story.storyName}"/></h2>

            <p class="text-block visible-xs"><c:out value="${story.summary}"/></p>

            <div class="space-sm visible-xs"></div>
            <img class="img-responsive" src="${story.primeImageSrc}" alt="Photo of post">

            <div class="post-heading hidden-xs">
                <h2><c:out value="${story.storyName}"/></h2>

                <p class="lead"><c:out value="${story.summary}"/></p>

            </div>
        </div>
        <div class="article-info">
            <ul class="tags list-unstyled pull-left">
                <li>
                    <i class="fa fa-user fa-fw"></i>
                    <a href="#" title="View Profile">Initiator <c:out value="${story.initiator.displayName}"/></a>
                </li>
                <li>
                    <jsp:useBean id="dateValue" class="java.util.Date"/>
                    <jsp:setProperty name="dateValue" property="time" value="${story.createdTimeStamp}"/>
                    <i class="fa fa-clock-o fa-fw"></i><fmt:formatDate value="${dateValue}"
                                                                       pattern="MMMM dd, yyyy HH:mm"/>
                </li>
                <li>
                    <i class="fa fa-comments fa-fw">

                    </i>
                    <a href="#" title="Read Comments">27 Comments</a>
                </li>
                <li>
                    <i class="fa fa-tags fa-fw"></i>
                    <a href="#">Nature,</a>
                    <a href="#">Photo,</a>
                    <a href="#">Sea</a>

                </li>
            </ul>
            <ul class="square-icons share-icons-list pull-right">

                <li>

                    <a href="https://twitter.com/share" class="twitter-share-button">Tweet</a>

                </li>

                <li>

                    <div class="fb-share-button"
                         data-href="http://localhost:9090/story-relayer/view-story?story-id=${story.storyId}"
                         data-layout="button_count"></div>

                </li>


            </ul>
        </div>
        <div class="">
            <h3 class="md-title">Part 1</h3>

            <c:forEach var="st" items="${story.storyParts}">
                <p class="text-block-v1" style="text-align: justify;">
                    <c:out value="${st.partContent}" escapeXml="false"/>
                </p>

                <br>
            </c:forEach>

            <div class="space"></div>
        </div>


        <section class="bg-grey-1">
            <div class="container section">
                <div class="row margin-b30-xs">
                    <div class="col-sm-4">
                        <div class="float-box center">
                            <i class="fa fa-share icon-c"></i>
                            <div class="float-text">
                                <br>
                                <h4><a href="#">Nominate to Friend</a></h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="float-box center">
                            <a href="fork-story-next?story-id=${story.storyId}">
                            <i class="fa fa-copy icon-c"></i>
                            <div class="float-text">
                                <br>
                                <h4><a href="fork-story-next?story-id=${story.storyId}">Fork from Here</a></h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="float-box center">
                            <a href="view-story-next?story-id=${story.storyId}">
                            <i class="fa fa-long-arrow-right icon-c"></i>
                                </a>
                            <div class="float-text">
                                <br>
                                <h4><a href="view-story-next?story-id=${story.storyId}">Read Next Part</a></h4>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <div class="space"></div>
        <div class="comment-box-1 icon">
            <h3>Leave a Comment</h3>

            <div class="row">
                <div class="col-md-4">

                    <form>
                        <div class="form-group icon">
                            <div class="control">
                                <input type="text" class="form-control" placeholder="Full name" required>
                                <i class="fa fa-user"></i>
                            </div>
                        </div>
                        <div class="form-group icon">
                            <div class="control">
                                <input type="email" class="form-control" placeholder="Enter email" required>
                                <i class="fa fa-envelope"></i>
                            </div>
                        </div>
                        <button type="submit" class="hidden-xs hidden-sm btn btn-primary btn-block">
                            <i class="fa fa-pencil"></i>Send Message
                        </button>

                    </form>
                </div>
                <div class="col-md-8">

                    <div class="form-group icon">
                        <div class="control">
                            <textarea class="form-control" rows="8" placeholder="Message" required></textarea>
                            <i class="fa fa-comment"></i>
                        </div>
                    </div>
                    <button type="submit" class="visible-xs visible-sm btn btn-primary">
                        <i class="fa fa-pencil"></i>Send Message
                    </button>
                </div>

            </div>
        </div>
        <div class="comment-box-3">
            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object" alt="64x64" src="resources/HTML/assets/img/faces/face-23.jpg">
                </a>

                <div class="media-body">
                    <div class="media-header">
                        <h4 class="media-heading">
                            <a href="#">Caroline Harrison</a>
                        </h4>
                        <small>
                            <em class="media-body-time six" title="6:46 p.m.">5 minutes</em>
                        </small>

                    </div>
                    <div class="media-body-text">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin
                        commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    </div>
                    <div class="media-footer">
                        <em>12</em>
                        <a href="#">
                            <i title="Like" class="fa  fa-thumbs-o-up"></i>
                        </a>
                        <a href="#" class="pull-right comment-box-3-reply" title="Reply">
                            <i class="fa fa-reply"></i>Reply</a>
                    </div>
                </div>

            </div>
            <hr>


        </div>

    </div>

</section>
<!--===/END    MAIN WRAP     ===-->
</body>

</html>