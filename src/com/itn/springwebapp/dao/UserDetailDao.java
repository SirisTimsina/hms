package com.itn.springwebapp.dao;

import java.util.List;

import com.itn.springwebapp.model.UserDetail;

public interface UserDetailDao {
	
	void saveUser(UserDetail ud);
	
	List<UserDetail> selectAll();
	
	UserDetail selectById(int id);
	
	UserDetail selectByUsername(String username);
	
	void update(UserDetail ud);
	
	void delete(UserDetail ud);
	
	

}
