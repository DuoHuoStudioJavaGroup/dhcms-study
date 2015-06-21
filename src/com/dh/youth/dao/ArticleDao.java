package com.dh.youth.dao;

import java.util.ArrayList;

import com.dh.youth.beans.Article;

public interface ArticleDao {
	boolean insertArticle(Article article);
	ArrayList<Article> getArticleList();
	Article getArticleById(int id);
	int updateArticle(Article article);
	int deleteArticle(int id);
	ArrayList<Article> getArticleListForDisplayByColumnId(int columnid);
}
