package com.user.servlet;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/indexServlet")
public class indexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String log1 = request.getParameter("log");
        String reg1=request.getParameter("reg");
        String sp=request.getParameter("shopcar");
        String ord=request.getParameter("order");
        String my=request.getParameter("mine");
        String clas1=request.getParameter("cla1");
        String buy1=request.getParameter("buy1");
        RequestDispatcher dispatcher = null;
        if(log1!=null)
        {
            dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
            //response.sendRedirect("login.jsp");
        }
        else if(reg1!=null)
        {
            dispatcher = getServletContext().getRequestDispatcher("/register.jsp");
        }
        else if(sp!=null)
        {
            dispatcher = getServletContext().getRequestDispatcher("/shopcar.jsp");
        }
        else if(ord!=null)
        {
            dispatcher = getServletContext().getRequestDispatcher("/order.jsp");
        }
        else if(my!=null)
        {
            dispatcher = getServletContext().getRequestDispatcher("/address.jsp");
        }
        else if(buy1!=null)
        {
            dispatcher = getServletContext().getRequestDispatcher("/detailpage.jsp");
        }
        else if(clas1!=null)
        {
            dispatcher = getServletContext().getRequestDispatcher("/classification.jsp");
        }

        dispatcher.forward(request, response);//推送
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);

    }
}

