package com.user.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/address")
public class address extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public address() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String ibutton = request.getParameter("button1");
        if(ibutton!=null)
        {
            String addr = request.getParameter("addr");
            String exact = request.getParameter("exact");
            String text = request.getParameter("email");
            String name = request.getParameter("name");
            String number = request.getParameter("phonenumber");
            RequestDispatcher dispatcher = null;
            addressmanagement am1 = new addressmanagement();
            if(am1.addaddress(addr,exact,text,name,number)) {
                request.setAttribute("log1", "ok");//回传给前端的参数
                dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
            }else {
                request.setAttribute("log1", "err");//回传给前端的参数
                dispatcher = getServletContext().getRequestDispatcher("/error.jsp");
            }
            dispatcher.forward(request, response);//推送
        }

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
