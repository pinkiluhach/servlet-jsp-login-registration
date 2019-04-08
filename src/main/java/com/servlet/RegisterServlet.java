package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.PreparedStatement;
import java.sql.Statement;

/**
 * Servlet implementation class LoginController
 */
//@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        try {
            String uname = request.getParameter("userName");
            String frstname = request.getParameter("first_Name");
            String lastname = request.getParameter("last_Name");
            String pwd = request.getParameter("password");
            System.out.println("username" + uname + "password" + pwd + "___________" + lastname + frstname);
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("\\\\ dirver loaded");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails", "root", "root");
            System.out.println("connection established in registration page");
            PreparedStatement st = con.prepareStatement("INSERT INTO user (firstname,lastname,username,password) VALUES (?, ?, ?, ?)");
            st.setString(1, frstname);
            st.executeQuery();
//            st.executeUpdate("INSERT INTO user (firstname,lastname,username,password) VALUES('" + frstname + "','" + lastname + "','" + uname + "','" + pwd + "');");
            //  response.sendRedirect("");
            request.setAttribute("fnme", frstname);
            request.setAttribute("lnme", lastname);
            request.getRequestDispatcher("registrationcom.jsp").forward(request, response);

        } catch (Exception e) {
            System.err.println(e);
        }
    }

}