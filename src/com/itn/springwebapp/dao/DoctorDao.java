package com.itn.springwebapp.dao;

import java.util.List;

import com.itn.springwebapp.model.Doctor;

public interface DoctorDao {
	
	public void insert(Doctor d);
	
	public List<Doctor> selectAll();
	
	public Doctor selectById(int id);
	
	public List<Doctor> selectByName(String name);
	
	public void update(Doctor d);
	
	public void delete(Doctor d);
	

}
