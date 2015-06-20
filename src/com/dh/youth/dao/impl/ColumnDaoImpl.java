package com.dh.youth.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.dh.youth.beans.Column;
import com.dh.youth.dao.ColumnDao;
import com.dh.youth.db.SqlDao;

public class ColumnDaoImpl implements ColumnDao {

	private SqlDao db;
	private ResultSet rs;
	@Override
	public int insertColumn(Column column) {
		// TODO Auto-generated method stub
		db = new SqlDao();
		String sql = "insert into dhcolumn (column_name,column_index,column_description,column_isuse) values ('"
				+column.getColumnName()+"',"
				+column.getColumnIndex()+",'"
				+column.getColumnDescription()+"',"
				+column.getIsuse()+")";
		return db.executeInsert(sql);
	}
	
	@Override
	public ArrayList<Column> getColumnList() {
		// TODO Auto-generated method stub
		Column column;
		ArrayList<Column> columnList = new ArrayList();
		db = new SqlDao();
		String sql = "select id,column_name,column_index from dhcolumn where column_isuse=0";
		rs = db.executeQuery(sql);
		try {
			while(rs.next()){
				column = new Column();
				column.setId(rs.getInt(1));
				column.setColumnName(rs.getString(2));
				column.setColumnIndex(rs.getInt(3));
				
				columnList.add(column);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		db.CloseDataBase();
		return columnList;
	}

	@Override
	public Column getColumnById(int id) {
		// TODO Auto-generated method stub
		db = new SqlDao();
		Column column = new Column();
		String sql = "select column_name,column_index,column_description from dhcolumn where id='"+id+"'";
		rs = db.executeQuery(sql);
		try {
			if(rs.next()){
				column.setId(id);
				column.setColumnName(rs.getString(1));
				column.setColumnIndex(rs.getInt(2));
				column.setColumnDescription(rs.getString(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		db.CloseDataBase();
		return column;
	}

	@Override
	public int deleteColumn(int id) {
		// TODO Auto-generated method stub
		db = new SqlDao();
		String sql = "update dhcolumn set column_isuse=1 where id='"+id+"'";
		int flag = db.Update(sql);
		db.CloseDataBase();
		return flag;
	}

	@Override
	public int updateColumn(Column column) {
		// TODO Auto-generated method stub
		db = new SqlDao();
		String sql = "update dhcolumn set column_name='"+column.getColumnName()+"',"
				+ "column_index='"+column.getColumnIndex()+"',"
						+ "column_description='"+column.getColumnDescription()+"'"
								+ " where id='"+column.getId()+"'";
		int flag = db.Update(sql);
		db.CloseDataBase();
		return flag;
	}
}
