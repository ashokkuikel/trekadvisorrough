/**
 * 
 */
package com.springmvc.web.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
		return "index";

	}
	@RequestMapping("login")
	public String showlogin(Model model) {
		return "login";

	}
	
	@RequestMapping("/Signup")
	public String getCreateUserPage() {
		return "user/New-user";
	}
	
	
	@RequestMapping("/userCreate")
	public ModelAndView createUser(Model model , User user) {
		UsersService.saveUser(user);
		List<User>  users= UsersService.getCurrent();
		model.addAttribute("users", users);
		return new ModelAndView("redirect:View");
//		return "userCreated";
	}
	
	
	@RequestMapping(value="/userEdit", method = RequestMethod.POST)
	public ModelAndView updateUser(Model model , User user) {
		UsersService.editUser(user);
		List<User>  users= UsersService.getCurrent();
		model.addAttribute("users", users);
		return new ModelAndView("redirect:View");
//		return "userCreated";
	}
	
	
	
	@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
	public ModelAndView delete(Model model ,int id) {
		UsersService.deleteUser(id);
		List<User>  users= UsersService.getCurrent();
		model.addAttribute("users", users);
		return new ModelAndView("redirect:View");
		//return new ModelAndView("userCreated");
//		return "userCreated";
	}
	

	
	@RequestMapping("/View")
	public ModelAndView showUser(Model model) {
		List<User>  users= UsersService.getCurrent();
		model.addAttribute("users", users);
		return new ModelAndView("user/All-users");
//		return "userCreated";
	}
	
	
	@RequestMapping("/editUser")
	public ModelAndView editUserprofile(Model model,User user,HttpServletRequest request) {
	user =  UsersService.findId(new Integer(request
				.getParameter("id")));
	model.addAttribute("user", user);
	System.out.println(user);
		return new ModelAndView("user/editUser");
//		return "userCreated";
	}
	
}
