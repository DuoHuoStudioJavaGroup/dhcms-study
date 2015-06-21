package com.dh.youth.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dh.youth.beans.Article;
import com.dh.youth.beans.Column;
import com.dh.youth.dao.ArticleDao;
import com.dh.youth.dao.ColumnDao;
import com.dh.youth.dao.impl.ArticleDaoImpl;
import com.dh.youth.dao.impl.ColumnDaoImpl;

public class InitIndexPage extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/*
	 * 查询栏目
	 * 查询二级栏目对应的文章列表
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String method = request.getParameter("method");
		
		if("init".equals(method)){
			initPage(request, response);
		}else if("displayarticle".equals(method)){
			displayArticle(request, response);
		}else if("listColumnArticle".equals(method)){
			listColumnArticle(request, response);
		}
		
		
	}

	public void initPage(HttpServletRequest request, HttpServletResponse response){
		ColumnDao columnDao = new ColumnDaoImpl();
		
		//查询一级栏目
		ArrayList<Column> columnTopList = columnDao.getColumnListByColimnIndexId(1);
		ArrayList<Column> columnSecondList = columnDao.getColumnListByColimnIndexId(2);
		
		request.setAttribute("topcolumn", columnTopList);
		request.setAttribute("secondcolumn", columnSecondList);
		
		//查询二级栏目对应的文章(二级标题定死了)
		ArticleDao articleDao = new ArticleDaoImpl();
		
		//所属分类是定死的，不够灵活
		ArrayList<Article> articleFirstList = articleDao.getArticleListForDisplayByColumnId(9);
		ArrayList<Article> articleSecondtList = articleDao.getArticleListForDisplayByColumnId(10);
		
		request.setAttribute("articleFirst", articleFirstList);
		request.setAttribute("articleSecond", articleSecondtList);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/subindex.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void displayArticle(HttpServletRequest request, HttpServletResponse response){
		
		//查询一级栏目
		ColumnDao columnDao = new ColumnDaoImpl();
		ArrayList<Column> columnTopList = columnDao.getColumnListByColimnIndexId(1);
		request.setAttribute("topcolumn", columnTopList);
		
		//查询指定文章
		ArticleDao articleDao = new ArticleDaoImpl();
		int articleid = Integer.valueOf(request.getParameter("id"));
		
		Article article = articleDao.getArticleById(articleid);
		request.setAttribute("article", article);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/articledisplay.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void listColumnArticle(HttpServletRequest request, HttpServletResponse response){
		int columnid = Integer.valueOf(request.getParameter("columnid"));
		
		ArticleDao articleDao = new ArticleDaoImpl();
		ColumnDao columnDao = new ColumnDaoImpl();
		
		//查询一级栏目
		ArrayList<Column> columnTopList = columnDao.getColumnListByColimnIndexId(1);
		request.setAttribute("topcolumn", columnTopList);
		
		//查询文章列表
		ArrayList<Article> articleList = articleDao.getArticleListForDisplayByColumnId(columnid);
		request.setAttribute("articlelist", articleList);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/columndisplay.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
