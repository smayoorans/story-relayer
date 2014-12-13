<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <a class="navbar-brand active" href="#">Story Relayer</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <%--<ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
            </ul>--%>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="index" class="dropdown-toggle">
                        Already have an account
                    </a>
                </li>
            </ul>




        </div>
        <!--/.nav-collapse -->
    </div>
</nav>


<decorator:body/>

<%@ include file="/WEB-INF/includes/footer.jsp"%>

<script src="<c:url value="/resources/js/jquery.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>
</body>
</html>



