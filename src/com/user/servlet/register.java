package com.user.servlet;

import com.entity.Users;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
        String ibutton = request.getParameter("button1");
        if(ibutton!=null)
        {
            String phone = request.getParameter("txtphone");
            //System.out.println(phone);
            String password = request.getParameter("txtpassword");
            //System.out.println(password);
            String password2 = request.getParameter("password2");
            //System.out.println(password2);
            String name = request.getParameter("txtname");
            //System.out.println(name);
            String sex = request.getParameter("txtsex");
            //System.out.println(sex);
            RequestDispatcher dispatcher = null;
            registermanagement lm1 = new registermanagement();
            if(lm1.register(phone,password,name,sex,password2)) {
                request.setAttribute("log", "ok");//回传给前端的参数
                dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
            }else {
                request.setAttribute("log", "err");//回传给前端的参数
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
