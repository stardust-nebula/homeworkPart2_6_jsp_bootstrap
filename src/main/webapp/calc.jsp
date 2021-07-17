<%--
  Created by IntelliJ IDEA.
  User: Lera
  Date: 16/07/21
  Time: 1:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<jsp:include page="_header.jsp"/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-4">
            <form action="/calc" method="post">
                <div class="mb-3">
                    <input name="num1" type="text" class="form-control" id="inputNumber1" placeholder="Number 1" required>
                </div>
                <div class="mb-3">
                <select name="operation" class="form-select" aria-label="Default select example" required>
                    <option selected>Select operation</option>
                    <option value="sum">+</option>
                    <option value="sub">-</option>
                    <option value="mul">*</option>
                    <option value="div">/</option>
                </select>
                </div>
                <div class="mb-3">
                    <input name="num2" type="text" class="form-control" id="inputNumber2" placeholder="Number 2" required>
                </div>
                <button type="submit" class="btn btn-primary">Calculate</button>
            </form>
            <%
                if (request.getAttribute("authorMessage") != null) {
            %>
            <div class="alert alert-primary" role="alert">
                ${requestScope.calcResult}
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
