<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Story Relayer</title>
    <link href="resources/froala_editor/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="resources/froala_editor/css/froala_editor.css" rel="stylesheet" type="text/css">
    <link href="resources/froala_editor/css/froala_style.css" rel="stylesheet" type="text/css">

    <script type="text/javascript">
        function readText(){
            var wysiwygHtml = document.getElementById("edit").lastChild.childNodes.item(0).innerHTML;
            document.getElementById("story-text").value = wysiwygHtml;
            return true;
        }
    </script>

</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <form class="form-horizontal" role="form" method="post" action="add-initial-story-action">

                <div class="panel panel-default">
                    <div class="panel-heading">${story.storyName}</div>
                    <div class="panel-body">
                        <c:forEach var="st" items="${story.storyParts}">
                            <p class="text-block-v1" style="text-align: justify;">
                                <c:out value="${st.partContent}" escapeXml="false"/>
                            </p>

                            <br>
                        </c:forEach>
                    </div>
                </div>


                <div class="panel panel-default">
                    <div class="panel-heading">Write down your story content here</div>
                    <div class="panel-body">
                        <section id="editor">
                            <div id='edit'>

                            </div>
                        </section>
                    </div>
                </div>
                <br>
                <input type="text" hidden="hidden" id="story-text" name="story-text"/>
                <input type="text" hidden="hidden" id="story-id" name="story-id" value="${storyId}"/>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-default">Save as Draft</button>
                        &nbsp;&nbsp;
                        <button type="submit" onclick="readText()" class="btn btn-primary">Submit</button>
                        &nbsp;&nbsp;
                        <button type="button" class="btn btn-default">Cancel</button>
                        &nbsp;
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>
</body>

</html>