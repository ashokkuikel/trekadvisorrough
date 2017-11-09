/**
 * 
 */
package com.springmvc.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



import com.springmvc.web.model.User;
import com.springmvc.web.service.UsersService;

/**
 * @author Server
 *
 */

@Controller
public class HomeController {
	
	private UsersService UsersService;
	
	@Autowired
	public void setUsersService(UsersService usersService) {
		UsersService = usersService;
	}

	@RequestMapping("/")
	public String showTrek(Model model) {
		return "home";

	}
	
	@RequestMapping("/createuser")
	public String getCreateUserPage() {
		return "createUser";
	}
	
	
	@RequestMapping("/userCreate")
	public String createUser(Model model , User user) {
		UsersService.saveUser(user);
		List<User>  users= UsersService.getCurrent();
		model.addAttribute("users", users);
		return "userCreated";
	}
}
