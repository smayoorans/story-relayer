<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="js-no ie9"> <![endif]-->
<!--[if IE 10]> <html lang="en" class="js-no ie10"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title>Welcome to Story Relayer</title>
</head>

<body>

<!--===    HEADER     ===-->
<section class="bg-20 bg-centerTop70 bg-cover">
    <div class="bg-filter sTop">
        <div class="container" style="margin-top: -60px;">
            <div class="jumbotron trn v-center">
                <h1 class="wow fadeInUp" data-wow-delay="0.1s">Welcome to Story Relayer</h1>

                <div class="space-sm"></div>
                <p class="wow fadeInUp" data-wow-delay="0.2s">Story Relayer is a web application
                    <br>designed to support collaborative writing of non-linear stories in any language.</p>

                <div class="space-sm"></div>
                <ul class="list-inline wow fadeInUp" data-wow-delay="0.3s">
                    <li>
                        <a href="#get-started" class="btn btn-default-trn btn-xlg scroll"><i
                                class="fa fa-bolt"></i>
                            Initiate Story</a>
                    </li>
                    <li>
                        <a href="#learn-more" class="btn btn-primary btn-xlg scroll"><i class="fa fa-paper-plane-o"></i>
                            Browse Stories</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!--===/END      HEADER     ===-->

<!--===    MAIN WRAP     ===-->

<div id="top-rated-stories"></div>
<!-- Breaking news -->
<section class="section">
    <div class="container">
        <h2 class="lg-title lg-title-border">Top Rated Stories
            <a href="top-rated" class=" pull-right btn btn-primary scroll">
                <i class="fa fa-paper-plane-o"></i>Browse More</a>
        </h2>

        <div class="row">
            <c:forEach var="story" items="${topRatedStoryList}" varStatus="status" begin="0" end="5" step="1">

                <div class="col-md-3 col-lg-3 col-sm-6 wow fadeInLeft" data-wow-delay="0.8s">
                    <div class="news">
                        <img class="img-responsive" src="resources/HTML/assets/img/768w/011.jpg" alt="camera">

                        <jsp:useBean id="dateValue" class="java.util.Date"/>
                        <jsp:setProperty name="dateValue" property="time" value="${story.createdTimeStamp}"/>

                        <h3><c:out value="${story.storyName}"/></h3>

                        <em><fmt:formatDate value="${dateValue}" pattern="MM/dd/yyyy HH:mm"/>
                            by <b><c:out value="${story.initiator.displayName}"/></b>
                        </em>

                        <p>${story.summary}</p>
                        <a href="view-story?story-id=${story.storyId}" class="btn btn-primary-trn">Read more
                            <i class="fa fa-angle-double-right"></i>
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<section class="bg-9 bg-center bg-fixed">
    <h5 class="sr-only">Photo of Macbook Pro</h5>

    <div class="filling-section bg-filter-v1"></div>
</section>

<!-- Our works/ projects section -->
<div id="learn-more"></div>
<section class="section-lg">
    <div class="container">

        <h2 class="lg-title lg-title-border">Browse Stories <a href="top-rated"
                                                               class=" pull-right btn btn-primary scroll">
            <i class="fa fa-paper-plane-o"></i>Browse More</a></h2>

        <ul class="filter-tabs">
            <li class="filter active" data-filter="mix"><span>All</span>
            </li>
            <li class="filter" data-filter="apps"><span>Horror</span>
            </li>
            <li class="filter" data-filter="devices"><span>Romance</span>
            </li>
            <li class="filter" data-filter="action"><span>Action</span>
            </li>
            <li class="filter" data-filter="adventure"><span>Adventure</span>
            </li>
            <li class="filter" data-filter="comedy"><span>Comedy</span>
            </li>
            <li class="filter" data-filter="crime"><span>Crime</span>
            </li>
        </ul>

        <ul class="row  filter-grid-v2" id="Grid">
            <!-- Item 1 -->
            <li class="col-md-4 col-sm-6 mix devices ">
                <a href="portfolio-item-v2.html" title="View portfolio item">
                    <div class="hover-content wow easeUp" data-wow-delay="0.5s">
                        <img src="resources/HTML/assets/img/sign-up-sketch.jpg" class="img-responsive"
                             alt="Portfolio - application">

                        <div class="top-part hidden-xs">
                            <i class="fa fa-eye"></i> Some thing here
                        </div>
                        <div class="bottom-part hidden-xs">
                            <h3>Some Title</h3>
                        </div>
                    </div>
                </a>
            </li>
            <!-- mix - select all, devices - filter only devices -->

            <!-- Item 2 -->
            <li class="col-md-4 col-sm-6 mix apps web ">
                <a href="portfolio-item-v2.html" title="View portfolio item">
                    <div class="hover-content wow easeUp" data-wow-delay="0.25s">
                        <img src="resources/HTML/assets/img/minimal-wireframe-assets.jpg" class="img-responsive"
                             alt="Websites Layout">

                        <div class="top-part hidden-xs">
                            <i class="fa fa-eye"></i>
                        </div>
                        <div class="bottom-part hidden-xs">
                            <h3>Some Title</h3>
                        </div>
                    </div>
                </a>
            </li>

            <!-- Item 3 -->
            <li class="col-md-4 col-sm-6 mix apps ">
                <a href="portfolio-item-v2.html" title="View portfolio item">
                    <div class="hover-content wow easeUp" data-wow-delay="0.75s">
                        <img src="resources/HTML/assets/img/App-Preview.jpg" class="img-responsive"
                             alt="Portfolio - application">

                        <div class="top-part hidden-xs">
                            <i class="fa fa-eye"></i>
                        </div>
                        <div class="bottom-part hidden-xs">
                            <h3>Some Title</h3>
                        </div>
                    </div>
                </a>
            </li>

            <!-- Item 4 -->
            <li class="col-md-4 col-sm-6 mix devices ">
                <a href="portfolio-item-v2.html" title="View portfolio item">
                    <div class="hover-content wow easeUp" data-wow-delay="0.6s">
                        <img src="resources/HTML/assets/img/macbook.jpg" class="img-responsive" alt="Apple Macbook Pro">

                        <div class="top-part hidden-xs">
                            <i class="fa fa-eye"></i>
                        </div>
                        <div class="bottom-part hidden-xs">
                            <h3>Some Title</h3>
                        </div>
                    </div>
                </a>
            </li>

            <!-- Item 5 -->
            <li class="col-md-4 col-sm-6 mix web ">
                <a href="portfolio-item-v2.html" title="View portfolio item">
                    <div class="hover-content wow easeUp" data-wow-delay="0.35s">
                        <img src="resources/HTML/assets/img/webdesign.jpg" class="img-responsive" alt="Webdesign">

                        <div class="top-part hidden-xs">
                            <i class="fa fa-eye"></i>
                        </div>
                        <div class="bottom-part hidden-xs">
                            <h3>Some Title</h3>
                        </div>
                    </div>
                </a>
            </li>

            <!-- Item 6 -->
            <li class="col-md-4 col-sm-6 mix apps ">
                <a href="portfolio-item-v2.html" title="View portfolio item">
                    <div class="hover-content wow easeUp" data-wow-delay="0.85s">
                        <img src="resources/HTML/assets/img/app-screen.jpg" class="img-responsive" alt="application">

                        <div class="top-part hidden-xs">
                            <i class="fa fa-eye"></i>
                        </div>
                        <div class="bottom-part hidden-xs">
                            <h3>Some Title</h3>
                        </div>
                    </div>
                </a>
            </li>

            <!-- Item 7 -->
            <li class="col-md-4 col-sm-6 mix crime ">
                <a href="portfolio-item-v2.html" title="View portfolio item">
                    <div class="hover-content wow easeUp" data-wow-delay="0.85s">
                        <img src="resources/HTML/assets/img/app-screen.jpg" class="img-responsive" alt="application">

                        <div class="top-part hidden-xs">
                            <i class="fa fa-eye"></i>
                        </div>
                        <div class="bottom-part hidden-xs">
                            <h3>Some Title</h3>
                        </div>
                    </div>
                </a>
            </li>
            <!-- Item 7 -->
            <li class="col-md-4 col-sm-6 mix crime ">
                <a href="portfolio-item-v2.html" title="View portfolio item">
                    <div class="hover-content wow easeUp" data-wow-delay="0.85s">
                        <img src="resources/HTML/assets/img/app-screen.jpg" class="img-responsive" alt="application">

                        <div class="top-part hidden-xs">
                            <i class="fa fa-eye"></i>
                        </div>
                        <div class="bottom-part hidden-xs">
                            <h3>Some Title</h3>
                        </div>
                    </div>
                </a>
            </li>
            <!-- Item 7 -->
            <li class="col-md-4 col-sm-6 mix crime ">
                <a href="portfolio-item-v2.html" title="View portfolio item">
                    <div class="hover-content wow easeUp" data-wow-delay="0.85s">
                        <img src="resources/HTML/assets/img/app-screen.jpg" class="img-responsive" alt="application">

                        <div class="top-part hidden-xs">
                            <i class="fa fa-eye"></i>
                        </div>
                        <div class="bottom-part hidden-xs">
                            <h3>Some Title</h3>
                        </div>
                    </div>
                </a>
            </li>
        </ul>

    </div>
</section>


<section class="bg-9 bg-center bg-fixed">
    <h5 class="sr-only">Photo of Macbook Pro</h5>

    <div class="filling-section bg-filter-v1"></div>
</section>

<!-- Our works/ projects section -->
<div id="get-started"></div>
<section class="section-lg">
    <div class="container">

        <h2 class="lg-title lg-title-border">Initiate Story</h2>


        <form:form class="form-horizontal" role="form" method="post" commandName="story" action="initiate-action">

            <%--<p>Please provide following details to initiate new story</p>--%>
            <%--<br/>--%>

            <div class="form-group">
                <label for="story-name" class="col-sm-3 control-label">Story Name</label>

                <div class="col-sm-9">
                    <form:input type="text" class="form-control" id="story-name" path="storyName"/>
                </div>
            </div>

            <div class="form-group">
                <label for="story-genre" class="col-sm-3 control-label">Genre</label>

                <div class="col-sm-9">
                    <form:select class="form-control" id="story-genre" path="genre">
                        <c:forEach var="type" items="<%=com.express.pony.model.Genre.values()%>">
                            <form:option value="${type}">${type}</form:option>
                        </c:forEach>
                    </form:select>
                </div>
            </div>

            <div class="form-group">
                <label for="story-genre" class="col-sm-3 control-label">Language</label>

                <div class="col-sm-9">
                    <form:select class="form-control" id="story-genre" path="language">
                        <option>Select</option>
                        <option>English</option>
                        <option>German</option>
                        <option>French</option>
                    </form:select>
                </div>
            </div>

            <div class="form-group">
                <label for="summary" class="col-sm-3 control-label">Summary</label>

                <div class="col-sm-9">
                    <form:textarea rows="3" class="form-control" id="summary" path="summary"/>
                </div>
            </div>

            <div class="form-group">
                <label for="restriction-type" class="col-sm-3 control-label">Restriction Type</label>

                <div class="col-sm-9">
                    <form:select class="form-control" id="restriction-type" path="storySpec.restrictionType">
                        <c:forEach var="type" items="<%=com.express.pony.model.RestrictionType.values()%>">
                            <form:option value="${type}">${type}</form:option>
                        </c:forEach>
                    </form:select>
                </div>
            </div>
            <br>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-primary" >Initiate Story</button>
                    &nbsp;
                    <button type="button" class="btn btn-default" onclick="location.href='index'">Cancel</button>
                </div>
            </div>

        </form:form>

    </div>
</section>

<!--===/END    MAIN WRAP     ===-->

</body>

</html>