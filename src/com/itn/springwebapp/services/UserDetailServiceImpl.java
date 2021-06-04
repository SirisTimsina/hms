package com.itn.springwebapp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.itn.springwebapp.dao.UserDetailDao;
import com.itn.springwebapp.model.UserDetail;

@Service
public class UserDetailServiceImpl implements UserDetailService {

	@Autowired
	UserDetailDao userDetailDao;
	
	@Autowired
	PasswordEncoder passwordEncoder;

	@Override
	public void addUser(UserDetail ud) {

//		if user registers as admin let other admin verify and enable them by assigning active = 0
//		or else set the user enable by assigning active = 1
		if (ud.getAuthority().equals("ADMIN")) {
			ud.setActive("0"); // disable user
		} else {
			ud.setActive("1"); // enable user
		}
		// save encoded password
		ud.setPassword(passwordEncoder.encode(ud.getPassword()));
		
//		System.out.println(passwordEncoder.encode("sadmin123"));
		
		userDetailDao.saveUser(ud);
	}

	@Override
	public List<UserDetail> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDetail getUserById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDetail getUserByUsername(String uname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateUser(UserDetail ud) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteUser(UserDetail ud) {
		// TODO Auto-generated method stub

	}

}
