package com.servlet;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;


//@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        String un = request.getParameter("username");
        String pw = request.getParameter("password");


        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("\\\\ dirver loaded");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails", "root", "root");
            System.out.println("connection established for login");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from user where username='" + un + "' and password='" + pw + "'");
            if (rs.next()) {
                System.out.println("Redirect to Success page" + un);
                request.setAttribute("usrname", un);
                request.getRequestDispatcher("Sucess.jsp").forward(request, response);
            } else {
                System.out.println("Redirect to Error page");
                response.sendRedirect("Error.jsp");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}