package com.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * Servlet implementation class RegisterationController
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        try {
            String username = request.getParameter("userName");
            String firstname = request.getParameter("first_Name");
            String lastname = request.getParameter("last_Name");
            String password = request.getParameter("password");
            LOGGER.info("Username=" + username + "First Name=" + firstname + "Last Name=" + lastname + "Password=" + password);
            Class.forName("com.mysql.jdbc.Driver");
            LOGGER.info("Dirver loaded");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails", "root", "root");
            LOGGER.info("Connection established");
            PreparedStatement st = con.prepareStatement("INSERT INTO user (firstname,lastname,username,password) VALUES (?, ?, ?, ?)");
            st.setString(1, firstname);
            st.setString(2, lastname);
            st.setString(3, username);
            st.setString(4, password);
            st.executeUpdate();
            LOGGER.finer("Record Inserted Succesfully");
            request.setAttribute("firstname", firstname);
            request.setAttribute("lastname", lastname);
            request.getRequestDispatcher("registrationcomplete.jsp").forward(request, response);
            LOGGER.info("Redirect Page to RegistrationComplete Page");
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Exception Occur" + e);
        }
    }

}