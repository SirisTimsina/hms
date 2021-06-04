package com.itn.springwebapp.services;

import java.util.List;

import com.itn.springwebapp.model.Doctor;

public interface DoctorService {

	public void addDoctor(Doctor d);
	
	public List<Doctor> getAllDoctors();
	
	public Doctor getDoctorById(int id);
	
	public List<Doctor> getDoctorByName(String name);
	
	public void updateDoctor(Doctor d);
	
	public void deleteDoctor(Doctor d);
	
}
