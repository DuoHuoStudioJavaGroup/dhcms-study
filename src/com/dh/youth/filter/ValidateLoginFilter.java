package com.dh.youth.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dh.youth.beans.User;

public class ValidateLoginFilter implements Filter {

	private FilterConfig config;
	private String loginPage;
	private String homePage;
	private String login;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse rep,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) rep;
		
		loginPage = config.getInitParameter("loginPage");//login.jsp
		homePage = config.getInitParameter("homePage");//index.jsp
		login = config.getInitParameter("login");
		
		String requestUri = request.getRequestURI();//用户请求的uri
		String contextPath = request.getContextPath();//web上下文路径
		String uri = requestUri.substring(contextPath.length());
		
//		System.out.println(requestUri);
//		System.out.println(contextPath);
//		System.out.println(uri);
		
		//不包含index.jsp||login.jsp页面,验证是否登录
		if(uri.indexOf(homePage) == -1 && uri.indexOf("/") == -1&& uri.indexOf(login) == -1&& uri.indexOf(loginPage) == -1){
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			if(user != null){
				chain.doFilter(request, response);
			}else{
				response.sendRedirect(uri+"tologin");
			}
		}else{
			chain.doFilter(request, response);
		}
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub
		this.config = config;
	}

}
