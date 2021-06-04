package com.itn.springwebapp.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itn.springwebapp.exceptions.ImageUploadException;
import com.itn.springwebapp.model.UserDetail;
import com.itn.springwebapp.services.UploadService;
import com.itn.springwebapp.services.UserDetailService;

@Controller
public class HomeController {
	
	@Autowired
	UploadService  uploadService;
	
	@Autowired
	UserDetailService userDetailService;
	
	@RequestMapping(value= {"/home","/"}, method=RequestMethod.GET)
	public String openHome() {
		return "home";
	}

	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String userRegistration() {
		
		return "signup";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String registerUser(@RequestParam("firstname") String fname,
								@RequestParam("lastname") String lname,
								@RequestParam("email") String email,
								@RequestParam("phone") String phone,
								@RequestParam("image") MultipartFile image,
								@RequestParam("dob") String dob,
								@RequestParam("authority") String authority,
								@RequestParam("username") String uname,
								@RequestParam("password") String pass,
								@RequestParam("cpassword") String cpass)  throws Exception {
		// process signup form
		
		UserDetail ud = new UserDetail();
		
		
		if(pass.equals("") ) {
			return "redirect:/signup?password_empty";
		}
		else if(pass.length()<=8) {
			return "redirect:/signup?password_too_short";
		}
		else  if(!pass.equals(cpass)) {
			return "redirect:/signup?password_mismatch";
		}else {
			ud.setPassword(pass);
		// password parameter ok	
		}
		
		// try to upload image
		if(uploadService.uploadUserImage(image)) {
			//upload Success
			ud.setImage(image.getOriginalFilename());
		}else {
			throw new ImageUploadException("Image not uploaded");
		}
		
		// place rest of the form data in userdetail object ud
		ud.setFirstName(fname);
		ud.setLastName(lname);
		ud.setEmail(email);
		ud.setPhone(phone);
		
		ud.setDob(LocalDate.parse(dob, DateTimeFormatter.ofPattern("mm/DD/yyyy")));
		ud.setAuthority(authority);
		ud.setUsername(uname);
		
		// send this ud object to database through service
		
		System.out.println(ud.toString());
		
		userDetailService.addUser(ud);
		
		
		// return to another page
		return "redirect:/login";
	}
	
	
	
}
