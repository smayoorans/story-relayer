<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Initiate Story</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="well">
                <form:form class="form-horizontal" role="form" method="post" commandName="story"
                           action="initiate-action">

                    <h3>Initiate New Story</h3>
                    <p>Please provide following details to initiate new story</p>
                    <br/>

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
                                <%--<c:forEach var="type" items="${com.express.pony.model.Genre.names}">--%>
                                <c:forEach var="type" items="<%=com.express.pony.model.Genre.values()%>">
                                    <form:option value="${type}">${type}</form:option>
                                </c:forEach>
                                <%--<option>Select</option>
                                <option>Comedy</option>
                                <option>Romance</option>
                                <option>Thriller</option>
                                <option>Horror</option>
                                <option>Crime</option>--%>
                            </form:select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="story-genre" class="col-sm-3 control-label">Language</label>

                        <div class="col-sm-9">
                            <form:select class="form-control" id="story-genre" path="language">
                                <%--<c:forEach var="type" items="${com.express.pony.model.Genre.names}">
                                    <form:option value="${type}">${type}</form:option>
                                </c:forEach>--%>
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
                            <select class="form-control" id="restriction-type">
                                <option>Select</option>
                                <option>Initiate Controlled</option>
                                <option>Non-Controlled</option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Initiate Story</button>
                            &nbsp;
                            <button type="button" class="btn btn-default" onclick="location.href='index'">Cancel</button>
                        </div>
                    </div>

                </form:form>
            </div>
        </div>
    </div>
</div>

</body>
</html>