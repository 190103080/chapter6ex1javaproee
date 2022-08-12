<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 12.08.2022
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BITLAB TEST</title>
</head>
<body>

<%
    String cookieValue = (String) request.getAttribute("cookieValue");
%>

<h1>COOKIE <%=cookieValue%></h1>

<form action="/setcookie" method="post">
    Name of a Site: <input type="text" name="cookie_value">
    <button>Set Site Name</button>
</form>

</body>
</html>
