package com.itn.springwebapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	
	@RequestMapping(value="/admin/home", method=RequestMethod.GET)
	public String openHome() {
		
		return "admindashboard";
	}

	
}
