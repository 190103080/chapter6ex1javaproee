package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/setcookie")
public class SetCookieServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String cookieValue = request.getParameter("cookie_value");
//        Cookie cookie = new Cookie("my_cookie", cookieValue);
//        cookie.setMaxAge(10);
//        response.addCookie(cookie);
//        response.sendRedirect("/homeservlet");

        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String age = request.getParameter("age");
        String country = request.getParameter("country");
        String gender = request.getParameter("gender");
        String creditCard = request.getParameter("creditCard");

        Cookie cookie = new Cookie("person_name", name);
        Cookie cookie1 = new Cookie("person_surname", surname);
        Cookie cookie2 = new Cookie("person_age", age);
        Cookie cookie3 = new Cookie("person_country", country);
        Cookie cookie4 = new Cookie("person_gender", gender);
        Cookie cookie5 = new Cookie("person_creditCard", creditCard);

        response.addCookie(cookie);
        response.addCookie(cookie1);
        response.addCookie(cookie2);
        response.addCookie(cookie3);
        response.addCookie(cookie4);
        response.addCookie(cookie5);

        cookie.setMaxAge(20);

        response.sendRedirect("/homeservlet");



    }
}
