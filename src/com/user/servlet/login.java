package com.user.servlet;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String account = request.getParameter("username");
        String password = request.getParameter("password");
        RequestDispatcher dispatcher = null;
        loginmana lm = new loginmana();
        if(lm.login(account, password)) {
            request.setAttribute("log", "ok");//回传给前端的参数
            dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
        }else {
            request.setAttribute("log", "err");//回传给前端的参数
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
        dispatcher.forward(request, response);//推送
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}