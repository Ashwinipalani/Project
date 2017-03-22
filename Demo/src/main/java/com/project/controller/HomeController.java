package com.project.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.*;

import com.project.service.CategoryService;

@Controller
public class HomeController {
	Logger logger=Logger.getLogger(HomeController.class);
	
	@Autowired
	private CategoryService categoryService;
	
	public HomeController(){
		logger.debug("Initiating controller");
		System.out.println("Initiating controller");
	}

@RequestMapping("/Home")
public String Home(HttpSession session){
	logger.debug("Entering home method in homecontroller");
	session.setAttribute("categories", categoryService.getCategories());
	return "Home";
}


@RequestMapping("/AboutUs")
public String aboutUs(){
	logger.debug("Entering aboutUs method in homecontroller");
	System.out.println("Initiating about us page");
	return "AboutUs";
}

@RequestMapping("/login")
public String login(@RequestParam(value="error",required=false) String error,
		@RequestParam(value="logout",required=false) String logout,
		Model model){
	if(error!=null)
		model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
	if(logout!=null)
		model.addAttribute("logout","Loggedout successfully..");
	return "login";
}


}
