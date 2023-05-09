package com.manager.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.JDBC.jdbcutils.jdbcutils;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/addbook")
public class addbook extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String ibutton2 = request.getParameter("button2");
            if(ibutton2!=null)
            {
                String ISBN = request.getParameter("ISBN");
                System.out.println(ISBN);
                String price = request.getParameter("price");
                System.out.println(price);
                String bookname = request.getParameter("bookname");
                System.out.println(bookname);
                String number= request.getParameter("number");
                System.out.println(number);
                String author= request.getParameter("author");
                String publisher= request.getParameter("publisher");
                String bookinfo= request.getParameter("extra");
                RequestDispatcher dispatcher = null;
                addBookManagement ad1 = new  addBookManagement();
                if(ad1.addBook(ISBN, price,bookname, number,author,publisher,bookinfo)) {
                    request.setAttribute("loog", "ok");//回传给前端的参数
                    dispatcher = getServletContext().getRequestDispatcher("/bookinfo.jsp");
                }else {
                    request.setAttribute("loog", "err");//回传给前端的参数
                    dispatcher = getServletContext().getRequestDispatcher("/error.jsp");
                }
                dispatcher.forward(request, response);//推送
            }
        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            doGet(request, response);
        }
    }


