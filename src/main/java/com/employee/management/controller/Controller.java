package com.employee.management.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.employee.management.repositeroy.EmployeeRepo;
import com.employee.management.repositeroy.UserRepositeory;
import com.employee.management.utils.Addemployee;
import com.employee.management.utils.User;
import com.sun.el.parser.ParseException;

@org.springframework.stereotype.Controller
public class Controller {
	
	
	
	@Autowired
	UserRepositeory userRepositeory;
	
	@Autowired
	 EmployeeRepo employeeRepo;
;
	
	@RequestMapping("/")
	public String home() {
	
		return "Home";
	}

	@PostMapping("/login")
	public ModelAndView Checklogin(@RequestParam String username) {

		 ModelAndView mv1 = new ModelAndView("Home");
		  Optional<User> as=userRepositeory.findByusername(username);
		  try {
			
		
		  System.out.println(as); User user=as.get(); if(as!=null) {
		  System.out.println("login");
		 
		  ModelAndView mv = new ModelAndView("adminactionpage");
		  
		  
		  return mv; } 
		  else
		 
		return mv1;
		  
	}catch (Exception e) {
		System.out.println(e.getMessage());
		return mv1;
	}
		
}
	@PostMapping("/AddEmployee")
	public ModelAndView AddEmployee(@ModelAttribute Addemployee addemployee, @RequestParam("image") MultipartFile file,BindingResult bindingResult) throws IOException, ParseException
	{
		 if (bindingResult.hasErrors()) {
	            System.out.println(bindingResult.getAllErrors());
	        }
		byte[] imageBytes = file.getBytes();
	  
	     	       addemployee.setPhoto(imageBytes);
	         employeeRepo.save(addemployee);
	         ModelAndView mv = new ModelAndView("adminactionpage");
	 		
		  
		
		return mv;
	
	}
	@GetMapping("/emplist")
	public void getemplist(Model model)
	{
		List list=employeeRepo.findAll();
		System.out.println(list);
		model.addAttribute("data",list);
		
		
	}
	
}