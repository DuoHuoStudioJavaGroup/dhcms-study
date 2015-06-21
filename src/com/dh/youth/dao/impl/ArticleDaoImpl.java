package com.dh.youth.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.dh.youth.beans.Article;
import com.dh.youth.dao.ArticleDao;
import com.dh.youth.db.SqlDao;

public class ArticleDaoImpl implements ArticleDao {

	private SqlDao db;
	ResultSet rs ;
	@Override
	public boolean insertArticle(Article article) {
		// TODO Auto-generated method stub
		db = new SqlDao();
		String sql = "insert into article (title, content,columnid) values ('"+article.getTitle()+"', '"+article.getContent()+"','"+article.getColumnId()+"')";
		int flag = db.executeInsert(sql);
		db.CloseDataBase();
		if(flag == 1){
			return true;
		}else{
			return false;
		}
	}
	
	@Override
	public ArrayList<Article> getArticleList() {
		// TODO Auto-generated method stub
		ArrayList<Article> articleList = new ArrayList();
		Article article = null;
		db = new SqlDao();
		String sql = "select id, title,columnid from article where deleteflag!=1 limit 20";
		rs = db.executeQuery(sql);
		
		try {
			while(rs.next()){
				article = new Article();
				article.setId(rs.getInt(1));
				article.setTitle(rs.getString(2));
				article.setColumnId(rs.getInt(3));
				articleList.add(article);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		db.CloseDataBase();
		return articleList;
	}

	@Override
	public Article getArticleById(int id) {
		// TODO Auto-generated method stub
		Article article = null;
		db = new SqlDao();
		String sql = "select title, content from article where id='"+id+"'";
		rs = db.executeQuery(sql);
		try {
			if(rs.next()){
				article = new Article();
				article.setId(id);
				article.setTitle(rs.getString(1));
				article.setContent(rs.getString(2));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		db.CloseDataBase();
		return article;
	}

	@Override
	public int updateArticle(Article article) {
		// TODO Auto-generated method stub
		db = new SqlDao();
		String sql = "update article set title='"+article.getTitle()+"',content='"+article.getContent()+"',columnid='"+article.getColumnId()+"' where id='"+article.getId()+"'";
		int flag = db.Update(sql);
		return flag;
	}

	@Override
	public int deleteArticle(int id) {
		// TODO Auto-generated method stub
		db = new SqlDao();
		String sql = "update articel set deleteflag=1 where id='"+id+"'";
		return db.Update(sql);
	}

	@Override
	public ArrayList<Article> getArticleListForDisplayByColumnId(int columnid) {
		// TODO Auto-generated method stub
		Article article;
		ArrayList<Article> articleList = new ArrayList(); 
		db = new SqlDao();
		String sql = "select id,title from article where columnid='"+columnid+"' limit 10";
		rs = db.executeQuery(sql);
		try {
			while(rs.next()){
				article = new Article();
				article.setId(rs.getInt(1));
				article.setTitle(rs.getString(2));
				
				articleList.add(article);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return articleList;
	}
}
