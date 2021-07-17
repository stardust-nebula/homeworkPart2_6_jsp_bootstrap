<%--
  Created by IntelliJ IDEA.
  User: Lera
  Date: 16/07/21
  Time: 0:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authorization</title>
</head>
<body>
<jsp:include page="_header.jsp"/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-4">
            <form action="/authorization" method="post">
                <div class="mb-3">
                    <label for="inputUsername" class="form-label">Username</label>
                    <input name="username" type="text" class="form-control" id="inputUsername">
                </div>
                <div class="mb-3">
                    <label for="inputPassword" class="form-label">Password</label>
                    <input name="password" type="password" class="form-control" id="inputPassword">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
                <%
                    if (request.getAttribute("authorMessage") != null) {
                %>
            <div class="alert alert-primary" role="alert">
                ${requestScope.authorMessage}
            </div>
                <%
                    }
                %>
        </div>
    </div>
</div>
</body>
</html>
