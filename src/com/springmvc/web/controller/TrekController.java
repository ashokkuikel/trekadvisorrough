/**
 * 
 */
package com.springmvc.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.web.service.UsersService;
import com.springmvc.web.model.User;

/**
 * @author Server
 *
 */
@Controller
public class TrekController {

	
	private UsersService UsersService;
	@Autowired
	public void setUsersService(UsersService usersService) {
		UsersService = usersService;
	}
}
