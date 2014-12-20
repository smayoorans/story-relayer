<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="js-no ie9"> <![endif]-->
<!--[if IE 10]> <html lang="en" class="js-no ie10"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title>Registration</title>
</head>

<body>

<!--===    HEADER     ===-->
<section class="bg-20 bg-center bg-cover">
    <div class="bg-filter">
        <div class="container section-lg">
            <h1 class="top-title">Register Now</h1>
        </div>
    </div>
</section>
<!--===/END      HEADER     ===-->

<!--===    MAIN WRAP     ===-->
<section class="container section-lg">
    <div class="row">
        <form:form class="form-horizontal" role="form" method="post" commandName="user" action="registration-action">
            <div class="col-md-6 col-sm-7">
                <!-- Contact Form -->
                <h3>Essential Info</h3>

                <div class="form-group">
                    <label for="fullName" class="col-sm-4 control-label">Full name</label>

                    <div class="col-sm-8 ">
                        <div class="control">
                            <form:input type="text" class="form-control" path="fullName" name="fullName"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-4 control-label">Email</label>

                    <div class="col-sm-8 ">
                        <div class="control">
                            <form:input type="text" class="form-control" path="email" id="email" name="email"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="displayName" class="col-sm-4 control-label">Display Name</label>

                    <div class="col-sm-8 ">
                        <div class="control">
                            <form:input type="text" class="form-control" path="displayName" name="displayName"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="username" class="col-sm-4 control-label">Username</label>

                    <div class="col-sm-8 ">
                        <div class="control">
                            <form:input type="text" class="form-control" path="username" name="username"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-4 control-label">Password</label>

                    <div class="col-sm-8 ">
                        <div class="control">
                            <form:input type="password" class="form-control" path="password" id="password"/>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-md-6 col-sm-5">
                <h3>Additional Info</h3>

                <div class="form-group">
                    <label for="genre" class="col-sm-4 control-label">Preferred Genre</label>

                    <div class="col-sm-8">
                        <div class="control">
                            <input type="text" class="form-control" id="genre"/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="language" class="col-sm-4 control-label">Preferred Language</label>

                    <div class="col-sm-8">
                        <div class="control">
                            <select class="form-control" id="language">
                                <option>Select</option>
                                <option>English</option>
                                <option>French</option>
                                <option>German</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                        <%--<label for="sex" class="col-sm-4 control-label">Preferred Language</label>--%>

                    <div class="col-sm-8">
                        <div class="control">

                            <input type="radio" class="form-control" name="sex"/>
                            <input type="radio" class="form-control" name="sex"/>

                            <i class="fa fa-user"></i>
                        </div>
                    </div>
                </div>

            </div>
            <div class="form-group icon">
                <div class="col-sm-offset-4 col-sm-8">
                    <button type="submit" class="btn btn-primary">
                        <i class="fa fa-paper-plane-o"></i>Submit
                    </button>
                    <button type="button" class="btn btn-default">
                        <i class="fa fa-close"></i>Cancel
                    </button>
                </div>
            </div>
            <div class="space visible-xs"></div>
        </form:form>
    </div>

</section>


</body>
</html>