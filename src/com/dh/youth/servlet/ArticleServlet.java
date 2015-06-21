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

public class ArticleServlet extends HttpServlet {

	private String method;
	RequestDispatcher rd = null;
	ArticleDao articleDao;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		method = request.getParameter("method");
		if("edit".equals(method)){
			toedit(request, response);
			/*rd = getServletContext().getRequestDispatcher("/admin/article.jsp");
			rd.forward(request, response);*/
		}else if("save".equals(method)){
			saveArticle(request, response);
		}else if("list".equals(method)){
			listArticle(request, response);
		}else if("reedit".equals(method)){
			reeditor(request, response);
		}else if("update".equals(method)){
			updateArticle(request, response);
		}else if("delete".equals(method)){
			deleteArticle(request, response);
		}
		
	}

	//查询栏目信息
	private void toedit(HttpServletRequest request, HttpServletResponse response){
		ColumnDao columnDao = new ColumnDaoImpl();
		ArrayList<Column> columnList = columnDao.getColumnForArticle();
		
		request.setAttribute("columnList", columnList);
		rd = getServletContext().getRequestDispatcher("/admin/article.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void saveArticle(HttpServletRequest request, HttpServletResponse response){
		String msg = null;
		articleDao = new ArticleDaoImpl();
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int columnId = Integer.valueOf(request.getParameter("columnid"));
		Article article = new Article();
		article.setTitle(title);
		article.setColumnId(columnId);
		article.setContent(content);
		boolean flag = articleDao.insertArticle(article);
		if(flag){
			msg = "文章保存成功！";
		}else{
			msg = "文章保存失败！";
		}
		request.setAttribute("msg", msg);
		rd = getServletContext().getRequestDispatcher("/admin/article.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void listArticle(HttpServletRequest request, HttpServletResponse response){
		articleDao = new ArticleDaoImpl();
		ArrayList<Article> articleList = articleDao.getArticleList();
		request.setAttribute("articleList", articleList);
		rd = getServletContext().getRequestDispatcher("/admin/article-list.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void reeditor(HttpServletRequest request, HttpServletResponse response){
		articleDao = new ArticleDaoImpl();
		ColumnDao columnDao = new ColumnDaoImpl();
		ArrayList<Column> columnList = columnDao.getColumnForArticle();
		
		request.setAttribute("columnList", columnList);
		int id = Integer.valueOf(request.getParameter("id"));
		Article article = articleDao.getArticleById(id);
		request.setAttribute("article", article);
		rd = getServletContext().getRequestDispatcher("/admin/reeditarticle.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void updateArticle(HttpServletRequest request, HttpServletResponse response){
		articleDao = new ArticleDaoImpl();
		String msg = null;
		Article article = new Article();
		article.setId(Integer.valueOf(request.getParameter("id")));
		article.setTitle(request.getParameter("title"));
		article.setContent(request.getParameter("content"));
		article.setColumnId(Integer.valueOf(request.getParameter("columnid")));
		int flag = articleDao.updateArticle(article);
		if(flag ==1){
			msg = "文章保存成功！";
		}else{
			msg = "文章保存失败！";
		}
		request.setAttribute("msg", msg);
		rd = getServletContext().getRequestDispatcher("/admin/reeditarticle.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void deleteArticle(HttpServletRequest request, HttpServletResponse response){
		String msg = null;
		int id = Integer.valueOf(request.getParameter("id"));
		articleDao = new ArticleDaoImpl();
		int flag = articleDao.deleteArticle(id);
		if(flag ==1){
			msg = "文章删除成功！";
		}else{
			msg = "文章删除失败！";
		}
	}
}
