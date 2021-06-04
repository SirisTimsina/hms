package com.itn.springwebapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itn.springwebapp.model.Doctor;
import com.itn.springwebapp.services.DoctorService;

@Controller
@RequestMapping("/admin/doctor")
public class DoctorController {
	
	@Autowired
	DoctorService doctorService;
	
	// url =->  /admin/doctor/add
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addDoctor() {
		return"doctor_add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String saveDoctor(@RequestParam("fullName")	String name, 
							@RequestParam("email") String email,
							@RequestParam("department")	String department,
							@RequestParam("specialization")	String speciality,
							@RequestParam("jobType") String jobType) {
		
		Doctor d = new Doctor();
		d.setName(name);
		d.setEmail(email);
		d.setDepartment(department);
		d.setSpecialization(speciality);
		d.setJob_type(jobType);
		
		doctorService.addDoctor(d);
		
		return "redirect:/admin/doctor/add";
	}
	
	
	@RequestMapping(value="/show", method=RequestMethod.GET)
	public String viewDoctoesd(Model model) {
		
		model.addAttribute("doctorlist", doctorService.getAllDoctors());
		
		return "doctor_list";
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editDaoctor(Model model, @PathVariable("id") int id) {
		// read id and fetch the record of doctor using that id
		// add the doctor object into model
		model.addAttribute("doctor", doctorService.getDoctorById(id) );
		model.addAttribute("edit", true);
		return "doctor_add";
	}
	
	@RequestMapping(value="/edit", method=RequestMethod.POST)
	public String updateDoc(@ModelAttribute("doctor") Doctor doctor) {
		// ModelAttribute annotation binds form fields to object fileds
		doctorService.updateDoctor(doctor);
		
		return "redirect:/admin/doctor/show";
	}
	
	@RequestMapping(value="/delete/{id}" , method=RequestMethod.GET)
	public String deleteRecord(@PathVariable("id") int id) {
	// deleting transient object
		Doctor d = new Doctor();
		d.setId(id);
		doctorService.deleteDoctor(d);
		
	// deleting presistant object
		// 	Doctor dd = doctorService.getDoctorById(id); 
		//		doctorService.deleteDoctor(dd);
				
		return "redirect:/admin/doctor/show?delete_success";
	}
	
	@ExceptionHandler(value=Exception.class)
	public String handleException() {
		return "error_page";
	}
	
}
