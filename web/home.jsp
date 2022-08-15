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
    String name = (String) request.getAttribute("name");
    String surname=  (String) request.getAttribute("surname");
    String country = (String) request.getAttribute("country");
    String age = (String) request.getAttribute("age");
    String gender = (String) request.getAttribute("gender");
    String creditCard = (String) request.getAttribute("creditCard");
%>

<%--<h1>COOKIE <%=cookieValue%></h1>--%>

<%--<form action="/setcookie" method="post">--%>
<%--    Name of a Site: <input type="text" name="cookie_value"> <br>--%>
<%--    <button>Set Site Name</button>--%>
<%--</form>--%>

    <h1>Name: <%=name%></h1>
    <h1>Surname: <%=surname%></h1>
    <h1>Age: <%=age%></h1>
    <h1>Country: <%=country%></h1>
    <h1>Gender: <%=gender%></h1>
    <h1>Credit Card: <%=creditCard%></h1>

    <form action="/setcookie" method="post">

        Name: <input type="text" name="name" > <br>
        Surname: <input type="text" name="surname" > <br>
        Age:
        <select name="age">
            <option>18</option>
            <option>19</option>
            <option>20</option>
            <option>21</option>
            <option>22</option>
            <option>23</option>
        </select> <br>
        Country:
        <select name="country">
            <option>Kazakhstan</option>
            <option>Russia</option>
            <option>USA</option>
            <option>Italy</option>
            <option>Paris</option>
            <option>Japan</option>
        </select> <br>
        Gender: <input type="radio" name="gender" value="male">Male <input type="radio" name="gender" value="female">Female <br>
        Credit Card: <input type="number" name="creditCard"> <br>

        <button>Save</button>
    </form>

</body>
</html>
