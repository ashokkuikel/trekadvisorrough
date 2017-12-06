package com.springmvc.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.web.model.User;



import com.springmvc.web.dao.UsersDAO;

@Service("usersService")
public class UsersService {
	
	public UsersService() {
		System.out.println("hello service");
	}

	private UsersDAO usersDao;

	@Autowired
	public void setUsersDao(UsersDAO usersDao) {
		this.usersDao = usersDao;
	}

	
	
	public List<User> getCurrent() {
		return usersDao.getUsers();
	}
	
	
	public boolean saveUser(User user) {
		return usersDao.create(user);
	}

	public boolean deleteUser(int id) {
		return usersDao.delete(id);
	}
	
	
	public boolean updateUser(User user)
	{
		return usersDao.update(user);
	}
	
	public User findId(int id) {
		return usersDao.getUser(id);
	}
	
	public boolean editUser(User user) {
		// TODO Auto-generated method stub
		return usersDao.update(user);
	}
	

}