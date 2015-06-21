package com.dh.youth.dao;

import java.util.ArrayList;

import com.dh.youth.beans.Column;

public interface ColumnDao {
	int insertColumn(Column column);
	ArrayList<Column> getColumnList();
	ArrayList<Column> getColumnListByColimnIndexId(int id);
	ArrayList<Column> getColumnForArticle();
	Column getColumnById(int id);
	int updateColumn(Column column);
	int deleteColumn(int id);
}
