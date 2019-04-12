package com.servlet;

import java.sql.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            LOGGER.info("Dirver loaded");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails", "root", "root");
            LOGGER.info("Connection established");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from user where username='" + username + "' and password='" + password + "'");
            if (rs.next()) {
                LOGGER.info("Redirect to Success page");
                request.setAttribute("username", username);
                request.getRequestDispatcher("sucess.jsp").forward(request, response);
            } else {
                LOGGER.info("Redirect to Error page");
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Exception Occur", e);
        }
    }

}