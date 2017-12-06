package com.springmvc.web.controller;

import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.web.model.Login;
import com.springmvc.web.service.LoginService;


@Controller
public class LoginController {
	
	private LoginService LoginService;
	
	@Autowired
	public void setLoginService(LoginService loginservice) {
		LoginService = loginservice;
	}
	

	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView displayLogin(HttpServletRequest request, HttpServletResponse response, Login login)
	{
		ModelAndView model = new ModelAndView("login");
		return model;
	}
	
	@RequestMapping(value="valid",method=RequestMethod.POST)
	public ModelAndView loginValid(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("login")Login login) throws SQLException
	{
		ModelAndView model= null;
		boolean status =  LoginService.getValid(login.getUsername(), login.getPassword());
		if(status!=false)
		{
			System.out.println("User Login Successful");
			request.setAttribute("loggedInUser", login.getUsername());
			model = new ModelAndView("welcome");
		}
		else
		{
			model = new ModelAndView("login");
			request.setAttribute("message", "Invalid credentials!!");
			System.out.println("Invalid");
		}
		return model;
	}
	}
