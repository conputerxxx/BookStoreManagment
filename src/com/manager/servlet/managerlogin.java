package com.manager.servlet;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Managerlogin")
public class managerlogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public managerlogin() {
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
        managerloginmanagement mlm = new managerloginmanagement();
        if(mlm.login(account, password)) {
            request.setAttribute("managerlog", "ok");//回传给前端的参数
            dispatcher = getServletContext().getRequestDispatcher("/homepage.jsp");
        }else {
            request.setAttribute("managerlog", "err");//回传给前端的参数
            dispatcher = getServletContext().getRequestDispatcher("/error.jsp");
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

