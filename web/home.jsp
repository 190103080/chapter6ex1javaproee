<%@ page import="db.LanguageUtil" %><%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 12.08.2022
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <title>BITLAB TEST</title>
</head>
<body>

<%
    String currentLanguages = "eng";

    Cookie cookies[] = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if (c.getName() .equals("yazyk")) {
                currentLanguages = c.getValue();
                break;
            }
        }
    }

%>

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

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar scroll</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        LANG
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                        <li><a class="dropdown-item" href="/setlang?lang=eng">ENG</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="/setlang?lang=rus">RUS</a></li>
                    </ul>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<%--    <div class="container">--%>
<%--        <h1>CURRENT LANGUAGES IS <%=currentLanguages%></h1>--%>
<%--    </div>--%>

    <div class="container">
        <h1><%=LanguageUtil.getTranslationLabelAndLanguages("name", currentLanguages)%>: <%=name%></h1>
        <h1><%=LanguageUtil.getTranslationLabelAndLanguages("surname", currentLanguages)%>: <%=surname%></h1>
        <h1><%=LanguageUtil.getTranslationLabelAndLanguages("age", currentLanguages)%>: <%=age%></h1>
        <h1><%=LanguageUtil.getTranslationLabelAndLanguages("country", currentLanguages)%>: <%=country%></h1>
        <h1><%=LanguageUtil.getTranslationLabelAndLanguages("gender", currentLanguages)%>: <%=gender%></h1>
        <h1><%=LanguageUtil.getTranslationLabelAndLanguages("creditCard", currentLanguages)%>: <%=creditCard%></h1>
    </div>

    <br><br>

    <div class="container">
        <form action="/setcookie" method="post">

            <%=LanguageUtil.getTranslationLabelAndLanguages("name", currentLanguages)%>:
            <input type="text" name="name" > <br>

            <%=LanguageUtil.getTranslationLabelAndLanguages("surname", currentLanguages)%>:
            <input type="text" name="surname" > <br>

            <%=LanguageUtil.getTranslationLabelAndLanguages("age", currentLanguages)%>:
            <select name="age">
                <option>18</option>
                <option>19</option>
                <option>20</option>
                <option>21</option>
                <option>22</option>
                <option>23</option>
            </select> <br>

            <%=LanguageUtil.getTranslationLabelAndLanguages("country", currentLanguages)%>:
            <select name="country">
                <option>Kazakhstan</option>
                <option>Russia</option>
                <option>USA</option>
                <option>Italy</option>
                <option>Paris</option>
                <option>Japan</option>
            </select> <br>

            <%=LanguageUtil.getTranslationLabelAndLanguages("gender", currentLanguages)%>:
            <input type="radio" name="gender" value="male"> <%=LanguageUtil.getTranslationLabelAndLanguages("male", currentLanguages)%>:
            <input type="radio" name="gender" value="female"> <%=LanguageUtil.getTranslationLabelAndLanguages("female", currentLanguages)%>: <br>

            <%=LanguageUtil.getTranslationLabelAndLanguages("creditCard", currentLanguages)%>:
            <input type="number" name="creditCard"> <br>

            <button><%=LanguageUtil.getTranslationLabelAndLanguages("save", currentLanguages)%></button>
        </form>
    </div>

</body>
</html>
