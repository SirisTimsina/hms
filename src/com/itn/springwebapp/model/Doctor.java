package com.itn.springwebapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Doctor {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id; 
	private String name;
	private String email;
	private String department;
	private String specialization;
	private String job_type;
	
	public Doctor() {
		super();
	}

	public Doctor(int id, String name, String email, String department, String specialization, String job_type) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.department = department;
		this.specialization = specialization;
		this.job_type = job_type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSpecialization() {
		return specialization;
	}

	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}

	public String getJob_type() {
		return job_type;
	}

	public void setJob_type(String job_type) {
		this.job_type = job_type;
	}
	
	

}
