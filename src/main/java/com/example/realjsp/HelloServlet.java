package com.example.realjsp;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Person;

@WebServlet(name = "helloServlet", urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String age = request.getParameter("age");

        StringBuilder error = new StringBuilder();
        if (firstName == null) {
            error.append("A first name was not provided");
        } else if (lastName == null) {
            error.append("A last name was not provided");
        } else if (age == null) {
            error.append("An age was not provided");
        }

        if (error.length() > 0) {
            request.setAttribute("error", error.toString());
            request.setAttribute("person", new Person());
        } else {
            request.setAttribute("person", new Person());
        }
        getServletContext().getRequestDispatcher("/Helloworld.jsp").forward(request, response);
    }
}