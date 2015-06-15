package com.dh.youth.dao;

import com.dh.youth.beans.User;

public interface UserDao {
	User selectUserByNameAndPass(String loginName, String password);
}
