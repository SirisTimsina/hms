package com.itn.springwebapp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itn.springwebapp.dao.DoctorDao;
import com.itn.springwebapp.model.Doctor;


@Service
public class DoctorServiceImpl implements DoctorService{

	@Autowired
	DoctorDao doctorDao;
	
	@Override
	public void addDoctor(Doctor d) {
		doctorDao.insert(d);
	}

	@Override
	public List<Doctor> getAllDoctors() {
		
		return doctorDao.selectAll();
	}

	@Override
	public Doctor getDoctorById(int id) {
		
		return doctorDao.selectById(id);
	}

	@Override
	public List<Doctor> getDoctorByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateDoctor(Doctor d) {
		
		doctorDao.update(d);
		
	}

	@Override
	public void deleteDoctor(Doctor d) {
		
			doctorDao.delete(d);
	}

}
