/**
 * 
 */
package com.springmvc.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.springmvc.web.service.UsersService;
import com.springmvc.web.service.PostsService;
//import com.springmvc.web.service.LoginService;
/**
 * @author Server
 *
 */
@Controller
public class TrekController {

	
	private UsersService UsersService;
	private PostsService PostsService;
	//private LoginService LoginService;
	@Autowired
	public void setUsersService(UsersService usersService) {
		UsersService = usersService;
	}
	
	public void setPostsService(PostsService postsservice) {
		PostsService = postsservice;
	}
	
//	public void setLoginService(LoginService loginservice) {
//		LoginService = loginservice;
//	}
//	
	
}
