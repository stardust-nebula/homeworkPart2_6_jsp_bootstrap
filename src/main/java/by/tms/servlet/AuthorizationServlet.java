package by.tms.servlet;

import by.tms.entity.User;
import by.tms.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/authorization")
public class AuthorizationServlet extends HttpServlet {

    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/authorization.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        User userByUsername = userService.getUserByUsername(username);
        String authorMessage = null;

        if (userByUsername == null) {
            authorMessage = "Error";
        } else

        if (userByUsername.getPassword().equals(password)) {
            authorMessage = "Authorized";
        } else {
            authorMessage = "Error";
        }

        req.setAttribute("authorMessage", authorMessage);
        getServletContext().getRequestDispatcher("/authorization.jsp").forward(req, resp);
    }
}
