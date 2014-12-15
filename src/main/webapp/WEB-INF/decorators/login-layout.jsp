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
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Mayooran">
    <!--  Boostrap Framework  -->
    <link href="resources/HTML/assets/css/bootstrap.css" rel="stylesheet">

    <!--=== CSS - Dragonfly ===-->
    <link href="resources/HTML/assets/css/themes/light-blue.css" rel="stylesheet" id="colors">

    <!--=== LESS - Dragonfly ===-->
    <!--<link href="resources/HTML/assets/less/main.less" rel="stylesheet/less">-->

    <!-- Google Fonts - Lato -->
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400" rel="stylesheet">

    <!-- Font Awesome Icons -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- CSS Animations -->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.1/animate.min.css" rel="stylesheet">

    <!--  Slippry Slideshow -->
    <link href="resources/HTML/assets/css/slippry.min.css" rel="stylesheet">
    <decorator:head/>
</head>
<body>
<%@ include file="/WEB-INF/includes/nav-bar-fixed.jsp" %>

<decorator:body/>

<!--===    SCRIPTS     ===-->

<!--Back to top-->
<a href="#" class="back-to-top">
    <i class="fa fa-angle-up"></i>
</a>

<!-- Modernizr -->
<script src="resources/HTML/assets/js/min/modernizr.custom.min.js" type="text/javascript"></script>

<!-- jQuery -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js" type="text/javascript"></script>

<!-- Bootstrap JS -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>

<!-- Bootstrap Plugin - open dropdown on hover -->
<script src="resources/HTML/assets/js/min/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>

<!-- LESS preprocessor -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/less.js/1.7.4/less.min.js" type="text/javascript"></script>

<!-- WOW.js - loading animations -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/wow/0.1.6/wow.min.js" type="text/javascript"></script>

<!-- Knobs - our skills -->
<script src="http://cdn.jsdelivr.net/jquery.knob/1.2.9/jquery.knob.min.js" type="text/javascript"></script>

<!-- Slippry - Slideshow -->
<script src="resources/HTML/assets/js/min/slippry.min.js" type="text/javascript"></script>

<!-- Mixitup plugin - Portfolio Filter Grid -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/mixitup/1.5.6/jquery.mixitup.min.js" type="text/javascript"></script>

<!-- Make sticky whatever elements -->
<script src="http://cdn.jsdelivr.net/jquery.sticky/1.0.0/jquery.sticky.min.js" type="text/javascript"></script>

<!-- Smooth sroll -->
<script src="http://cdn.jsdelivr.net/jquery.nicescroll/3.5.4/jquery.nicescroll.min.js" type="text/javascript"></script>

<!-- Contact Form -->
<script src="resources/HTML/assets/js/min/contact-form.min.js" type="text/javascript"></script>

<!-- Must be last of all scripts -->
<script src="resources/HTML/assets/js/min/scripts.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>
<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<!--===/END    SCRIPTS     ===-->
<%--
<script src="<c:url value="/resources/js/jquery.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>

&lt;%&ndash;<script src="resources/froala_editor/js/libs/jquery-1.11.1.min.js" type="text/javascript"></script>&ndash;%&gt;
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
&lt;%&ndash;$('#edit').editable({inlineMode: false, height: 300})&ndash;%&gt;
<script type="text/javascript">
    $(function () {
        $('[data-toggle="popover"]').popover();
    });
</script>
--%>

</body>
</html>



