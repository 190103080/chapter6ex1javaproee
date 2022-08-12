package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/homeservlet")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cookieValue = "No Value";
        Cookie[] cookies = request.getCookies();
        if (cookies!=null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("my_cookie")) {
                    cookieValue = c.getValue();
                    break;
                }
            }
        }
        request.setAttribute("cookieValue", cookieValue);
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }
}
