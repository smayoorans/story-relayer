<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="resources/tooltip/themes/2/tooltip.css" rel="stylesheet" type="text/css" />
    <script src="resources/tooltip/themes/2/tooltip.js" type="text/javascript"></script>
    <title>Index</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-9">

            <div class="bs-component">
                <div class="list-group">
                    <a href="#" class="list-group-item active" style="background-color: #060452;">
                        <c:out value="${story.storyName}"/> <span class="pull-right">Back to Dashboard</span>
                    </a>

                    <div class="list-group-item" onmouseover="tooltip.ajax(this, 'resources/tooltip/src/tooltip-ajax.jsp#div2');" >


                        <h4 class="list-group-item-heading"><c:out value="${story.storyName}"/></h4>

                        <p class="list-group-item-text">
                            <c:forEach var="st" items="${story.storyParts}">
                                <c:out value="${st.partContent}"  escapeXml="false"/>
                            </c:forEach>
                        </p>
                        <br>
                        <br>
                        <br>
                        <br>
                    </div>
                    <a href="#" class="list-group-item">
                        <h4 class="list-group-item-heading">List group item heading</h4>

                        <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed
                            diam eget risus varius blandit.Lorem Ipsum is simply dummy text of the
                            printing and typesetting industry. Lorem Ipsum has been the industry's
                            standard dummy text ever since the 1500s, when an unknown printer
                            took a galley of type and scrambled it to make a type specimen book.
                            It has survived not only five centuries, but also the leap into
                            electronic typesetting, remaining essentially unchanged. It was popularised
                            in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
                            and more recently with desktop publishing software like Aldus PageMaker including
                            versions of Lorem Ipsum.
                        </p>
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>