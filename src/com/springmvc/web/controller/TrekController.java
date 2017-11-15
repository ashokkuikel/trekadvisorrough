/**
 * 
 */
package com.springmvc.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.springmvc.web.service.UsersService;

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
