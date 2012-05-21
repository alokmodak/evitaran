<%--
    Document   : Create Subscriber
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../templates/style.jsp"></jsp:include>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() + "/css/subscriber.css"%>"/>
        <title>Add Summer Fellows</title>
        <script type="text/javascript" src="<%=request.getContextPath() + "/js/subscriber/asf.js"%>"></script>
        <script type="text/javascript" src="<%=request.getContextPath() + "/js/subscriber/subscriber.js"%>"></script>
        <script>
            $(document).ready(function() {
                jdsAppend("CMasterData?md=subtype_free","subtype","subtype");
                jdsAppend("CMasterData?md=city","city","city");
                jdsAppend("CMasterData?md=country","country","country");
                jdsAppend("CMasterData?md=state","state","state");
                jdsAppend("CMasterData?md=district","district","district");
                jdsAppend("CMasterData?md=agent","agentName","agent");
                makeCreateSubscriberReadOnly();
                
            });
        </script>
    </head>
    <body>

        <%@include file="../templates/layout.jsp" %>
        <div id="bodyContainer">
            <form method="post" action="<%=request.getContextPath() + "/subscriber"%>" name="subscriberForm">
                <div class="MainDiv">
                    <fieldset class="MainFieldset">
                        <legend>Add Summer Fellows</legend>
                        <%@include file="subscriber.jsp"%>
                    </fieldset>
                </div>
            </form>
        </div>
    </body>
</html>