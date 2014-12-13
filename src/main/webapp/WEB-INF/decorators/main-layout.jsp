<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <title><decorator:title default="Welcome"/></title>
    <link rel="icon" href="<c:url value="/resources/img/favicon.ico"/>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/sticky-footer-navbar.css"/>" rel="stylesheet">

    <%--<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js" type="text/javascript"></script>--%>
    <%--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js" type="text/javascript"></script>--%>
    <decorator:head/>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand active" href="index">Story Relayer</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp; Home</a></li>
            </ul>
            <form class="navbar-form navbar-left" role="search" action="#">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <%--<button type="submit" class="btn btn-default">Submit</button>--%>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">

                    <sec:authorize access="isAuthenticated()">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Welcome
                            <sec:authentication property="principal.username"/>
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Setting</a>
                            </li>
                            <li><a href="user-profile"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                Profile</a></li>

                            <li class="divider"></li>
                            <li><a href="j_spring_security_logout"><span class="glyphicon glyphicon-log-out"
                                                                         aria-hidden="true"></span> Logout</a></li>
                        </ul>
                    </sec:authorize>
                    <sec:authorize access="isAnonymous()">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            <span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span>&nbsp;  Get Involved
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp; Login</a></li>
                            <li><a href="registration"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Register</a></li>

                        </ul>
                    </sec:authorize>


                </li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>

<decorator:body/>

<sec:authorize access="isAuthenticated()">
    <%--<p><sec:authentication property="username"/></p>--%>

    <sec:authentication property="principal.username"/>

</sec:authorize>

<%@ include file="/WEB-INF/includes/footer.jsp" %>

<script src="<c:url value="/resources/js/jquery.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>

<%--<script src="resources/froala_editor/js/libs/jquery-1.11.1.min.js" type="text/javascript"></script>--%>
<script src="resources/froala_editor/js/froala_editor.min.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="resources/froala_editor/js/froala_editor_ie8.min.js" type="text/javascript"></script>
<![endif]-->
<script src="resources/froala_editor/js/plugins/tables.min.js" type="text/javascript"></script>
<script src="resources/froala_editor/js/plugins/lists.min.js" type="text/javascript"></script>
<script src="resources/froala_editor/js/plugins/colors.min.js" type="text/javascript"></script>
<script src="resources/froala_editor/js/plugins/font_family.min.js" type="text/javascript"></script>
<script src="resources/froala_editor/js/plugins/font_size.min.js" type="text/javascript"></script>
<script src="resources/froala_editor/js/plugins/block_styles.min.js" type="text/javascript"></script>
<script src="resources/froala_editor/js/plugins/media_manager.min.js" type="text/javascript"></script>
<script src="resources/froala_editor/js/plugins/video.min.js" type="text/javascript"></script>
<script src="resources/froala_editor/js/plugins/char_counter.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $('#edit').editable({inlineMode: false, height: 250})
    });
</script>
<%--$('#edit').editable({inlineMode: false, height: 300})--%>
<script type="text/javascript">
    $(function () {
        $('[data-toggle="popover"]').popover();
    });
</script>

</body>
</html>



