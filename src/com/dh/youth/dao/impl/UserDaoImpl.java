package com.dh.youth.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dh.youth.beans.User;
import com.dh.youth.dao.UserDao;
import com.dh.youth.db.SqlDao;

public class UserDaoImpl implements UserDao {
	
	private ResultSet rs = null;
	SqlDao db = new SqlDao();
	
	@Override
	public User selectUserByNameAndPass(String loginName, String password) {
		// TODO Auto-generated method stub
		User user = new User();
		String sql = "select * from user where loginName='"+loginName+"' and password='"+password+"'";
		rs = db.executeQuery(sql);
		try {
			if(rs.next()){
				user.setId(rs.getInt(1));
				user.setLoginname(rs.getString(2));
				user.setNickname(rs.getString(3));
				user.setStatus(rs.getInt(5));
				user.setRoleid(rs.getInt(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		db.CloseDataBase();
		return user;
	}

}
