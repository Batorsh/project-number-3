<%--
  Created by IntelliJ IDEA.
  User: Bator
  Date: 28.08.2022
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
</head>

<body>
<div>
    <h1>Hello man!</h1>
</div>
<%
    List<String> names = (List<String>) request.getAttribute("userNames");

    if (names != null && !names.isEmpty()) {
        out.println("<ui>");
        for (String s : names) {
            out.println("<li>" + s + "</li>");
        }
        out.println("</ui>");
    } else out.println("<p>There are no users yet!</p>");
%>

<div>
    <a class="btn btn-secondary btn-lg btn-block" href="/" role="button">Exit game</a>
</div>
</body>
</html>