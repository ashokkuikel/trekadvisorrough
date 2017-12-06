package com.springmvc.web.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.web.model.Login;
import com.springmvc.web.dao.LoginDAO;

@Service("loginService")
public class LoginService {
	
	public LoginService() {
		System.out.println("Login service");
	}

	private LoginDAO loginDao;

	@Autowired
	public void setLoginDao(LoginDAO loginDao) {
		this.loginDao = loginDao;
	}

	
	public boolean getValid(String username,String password) throws SQLException {
		return loginDao.doesRegionExist(username,password);
	}

	
}