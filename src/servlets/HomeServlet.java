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
        String name = "Empty Name";
        String surname = "Empty Surname";
        String country = "Empty Country";
        String age = "Empty Age";
        String gender = "Empty Gender";
        String creditCard = "Empty Credit Card";


        Cookie[] cookies = request.getCookies();

        if (cookies!=null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("person_name")) {
                    name = c.getValue();
                    break;
                }
            }
        }

        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("person_surname"));
                surname = c.getValue();
                break;
            }
        }

        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("person_country"));
                country = c.getValue();
                break;
            }
        }

        if (cookies!=null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("person_age")) {
                    age = c.getValue();
                    break;
                }
            }
        }

        if (cookies!=null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("person_gender")) {
                    gender = c.getValue();
                    break;
                }
            }
        }

        if (cookies!=null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("person_creditCard")) {
                    creditCard = c.getValue();
                    break;
                }
            }
        }


        request.setAttribute("name", name);
        request.setAttribute("surname", surname);
        request.setAttribute("age", age);
        request.setAttribute("country", country);
        request.setAttribute("gender", gender);
        request.setAttribute("creditCard", creditCard);
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }
}
