package com.dh.youth.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dh.youth.beans.User;
import com.dh.youth.dao.UserDao;
import com.dh.youth.dao.impl.UserDaoImpl;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserDao userDao = new UserDaoImpl();
		HttpSession session = request.getSession();
		RequestDispatcher rd = null;
		String loginName = request.getParameter("loginName");
		String encodePass = request.getParameter("encodePass");
		
		User user = userDao.selectUserByNameAndPass(loginName, encodePass);
		
		if(user != null){
			session.setAttribute("user", user);
			rd = getServletContext().getRequestDispatcher("/admin/index.jsp");
		}else{
			request.setAttribute("tip", "用户名或密码不正确！");
			rd = getServletContext().getRequestDispatcher("/login.jsp");
		}
		rd.forward(request, response);
	}

}