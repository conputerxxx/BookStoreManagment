package com.user.servlet;



import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/editBookServlet")
public class editBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String ibutton3 = request.getParameter("button3");
        if(ibutton3!=null)
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
