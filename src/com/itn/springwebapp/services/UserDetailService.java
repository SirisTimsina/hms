package com.itn.springwebapp.services;

import java.util.List;

import com.itn.springwebapp.model.UserDetail;

public interface UserDetailService {
	
	public void addUser(UserDetail ud);
	
	
	public List<UserDetail> getAllUsers();
	
	public UserDetail getUserById(int id);
	
	public UserDetail getUserByUsername(String uname);
	
	public void updateUser(UserDetail ud);
	
	public void deleteUser(UserDetail ud);
	
	
	

}
