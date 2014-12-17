<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="js-no ie9"> <![endif]-->
<!--[if IE 10]> <html lang="en" class="js-no ie10"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title>Top Rated Stories</title>
</head>

<body>

<!--===    HEADER     ===-->
<section class="bg-15 bg-center bg-cover">
    <div class="bg-filter">
        <div class="container section-lg">
            <h1 class="top-title">Top Rated Stories</h1>
        </div>
    </div>
</section>
<!--===/END      HEADER     ===-->


<!--===    MAIN WRAP     ===-->
<section class="section">
    <div class="container">
        <div class="row">

            <div class="col-md-8 col-lg-9">


                <%--Story Block Start--%>
                <c:forEach var="story" items="${topRatedStoryList}">

                    <div class="row blog-post">
                        <div class="col-sm-6">
                            <div class="hover-content">
                                <div class="part-a">
                                    <h3>12</h3>

                                    <h3>December</h3>
                                </div>
                                <div class="part-c">
                                    <img class="img-responsive" src="resources/HTML/assets/img/faces/face-2.jpg"
                                         alt="Blog Post Author" title="Nicole Perry">
                                </div>
                                <div class="part-b">
                                    <ul>
                                        <li>
                                            <i class="fa fa-user fa-fw"></i>
                                            <a href="view-story?story-id=${story.storyId}" title="View Profile">${story.initiator.displayName}</a>
                                        </li>
                                        <li>
                                            <i class="fa fa-clock-o fa-fw"></i>12 December 2014
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
                                </div>
                                <img class="img-responsive" alt="Blog Image"
                                     src="resources/HTML/assets/img/768w/kitsune-4.jpg">
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <a href="view-story?story-id=${story.storyId}" title="Read all article">
                                <h2>${story.storyName}</h2>
                            </a>

                            <p>${story.summary}</p>
                            <a href="#" title="Read all article" class="btn btn-primary-trn">
                                <i class="fa fa-angle-right"></i>Read More
                            </a>
                        </div>

                    </div>

                </c:forEach>


                <div class="row blog-post">
                    <div class="col-sm-6">
                        <div class="hover-content">
                            <div class="part-a">
                                <h3>12</h3>

                                <h3>December</h3>
                            </div>
                            <div class="part-c">
                                <img class="img-responsive" src="resources/HTML/assets/img/faces/face-2.jpg"
                                     alt="Blog Post Author" title="Nicole Perry">
                            </div>
                            <div class="part-b">
                                <ul>
                                    <li>
                                        <i class="fa fa-user fa-fw"></i>
                                        <a href="#" title="View Profile">Mayooran</a>
                                    </li>
                                    <li>
                                        <i class="fa fa-clock-o fa-fw"></i>18 April 2014
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
                            </div>
                            <img class="img-responsive" alt="Blog Image"
                                 src="resources/HTML/assets/img/768w/kitsune-4.jpg">
                        </div>

                    </div>
                    <div class="col-sm-6">
                        <a href="#" title="Read all article">
                            <h2>The Spectacles</h2>
                        </a>

                        <p>The narrator, 22-year-old Napoleon Buonaparte, changes his
                            last name as a requirement
                            to inherit a large sum from a distant cousin, Adolphus Simpson.
                            At the opera he sees a beautiful woman in the audience and falls
                            in love instantly. He describes her beauty at length.</p>
                        <a href="#" title="Read all article" class="btn btn-primary-trn">
                            <i class="fa fa-angle-right"></i>Read More
                        </a>
                    </div>

                </div>
                <div class="row blog-post">
                    <div class="col-sm-6">
                        <div class="hover-content">
                            <div class="part-a">
                                <h3>12</h3>

                                <h3>December</h3>
                            </div>
                            <div class="part-c">
                                <img class="img-responsive" src="resources/HTML/assets/img/faces/face-2.jpg"
                                     alt="Blog Post Author" title="Nicole Perry">
                            </div>
                            <div class="part-b">
                                <ul>
                                    <li>
                                        <i class="fa fa-user fa-fw"></i>
                                        <a href="#" title="View Profile">Mayooran</a>
                                    </li>
                                    <li>
                                        <i class="fa fa-clock-o fa-fw"></i>December 12 2014
                                    </li>
                                    <li>
                                        <i class="fa fa-comments fa-fw">

                                        </i>
                                        <a href="#" title="Read Comments">7 Comments</a>
                                    </li>
                                    <li>
                                        <i class="fa fa-tags fa-fw"></i>
                                        <a href="#">Nature,</a>
                                        <a href="#">Photo,</a>
                                        <a href="#">Sea</a>

                                    </li>
                                </ul>
                            </div>
                            <img class="img-responsive" alt="Blog Image"
                                 src="resources/HTML/assets/img/768w/oliver_twist.jpg">
                        </div>

                    </div>
                    <div class="col-sm-6">
                        <a href="#" title="Read all article">
                            <h2>Oliver Twist</h2>
                        </a>

                        <p>Oliver Twist, subtitled The Parish Boy's Progress, is the second novel by English author
                            Charles
                            Dickens, published by Richard Bentley in 1838. The story is about an orphan, Oliver Twist,
                            who</p>
                        <a href="#" title="Read all article" class="btn btn-primary-trn">
                            <i class="fa fa-angle-right"></i>Read More
                        </a>
                    </div>

                </div>


                <div class="text-center">
                    <ul class="pagination ">
                        <li>
                            <a href="#">&laquo;</a>
                        </li>
                        <li class="active">
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">4</a>
                        </li>
                        <li>
                            <a href="#">5</a>
                        </li>
                        <li>
                            <a href="#">&raquo;</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 col-lg-3 hidden-sm hidden-xs">


                <div class="categories simple-box">
                    <h3>Categories</h3>
                    <ul class="list-unstyled">
                        <li>
                            <i class="fa fa-angle-right fa-fw"></i>
                            <a href="#" title="Category Business">Romance</a>
                        </li>
                        <li>
                            <i class="fa fa-angle-right fa-fw"></i>
                            <a href="#" title="Category photos">Horror</a>
                        </li>
                        <li>
                            <i class="fa fa-angle-right fa-fw"></i>
                            <a href="#" title="Category Education">Crime</a>
                        </li>
                        <li>
                            <i class="fa fa-angle-right fa-fw"></i>
                            <a href="#" title="Category Music">Science Fiction</a>
                        </li>
                        <li>
                            <i class="fa fa-angle-right fa-fw"></i>
                            <a href="#" title="Category Movies">Comedy</a>
                        </li>
                        <li>
                            <i class="fa fa-angle-right fa-fw "></i>
                            <a href="#" title="Category Internet">Thriller</a>
                        </li>
                    </ul>
                </div>

                <div class="tags simple-box">
                    <h3>Tags</h3>
                    <ul class="list-unstyled">
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Music</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Movies</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Radio</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Internet</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Business</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">People</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Photo</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">USA</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Canada</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Mexiko</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Nature</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">City</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Light</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Dark</a>
                        </li>
                        <li>
                            <i class="fa fa-tags"></i>
                            <a href="#">Education</a>
                        </li>
                    </ul>
                </div>


            </div>
        </div>

    </div>
</section>
<!--===/END    MAIN WRAP     ===-->


</body>

</html>