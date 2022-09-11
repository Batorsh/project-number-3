<%--
  Created by IntelliJ IDEA.
  User: Bator
  Date: 28.08.2022
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Enter your name</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
</head>

<body>
<div>
    <h1>Super app!</h1>
</div>

<div>
    <%
        if (request.getAttribute("userName") != null) {
            out.println("<p>User '" + request.getAttribute("userName") + "' added!</p>");
        }
    %>
    <div>
        <div>
            <h2>Enter your name</h2>
        </div>

        <form method="post">
            <label>Name:
                <input type="text" name="name"><br/>
            </label>
            <a class="btn btn-primary" type="submit" href="/start" role="button">GO!</a>

        </form>
    </div>
</div>


<div>
    <a class="btn btn-secondary btn-lg btn-block" href="/" role="button">Back to main</a>
</div>
</body>
</html>