/**
 * 
 */
package com.springmvc.web.model;

///**
// * @author Server
// *
// */
//public class User {
//	private int id;
//	private String fullname;
//	private String email;
//	private String username;
//	private String password;
//	
//	
//	public User(String fullname, String email, String username) {
//		this.username = username;
//		this.email = email;
//		this.username = username;
//	}
//	
//	
//
//	public User(int id, String fullname, String email, String username) {
//		super();
//		this.id = id;
//		this.fullname = fullname;
//		this.email = email;
//		this.username = username;
//	}
//	public int getId() {
//		return id;
//	}
//	public void setId(int id) {
//		this.id = id;
//	}
//	public String getFullname() {
//		return fullname;
//	}
//	public void setFullname(String fullname) {
//		this.fullname = fullname;
//	}
//	public String getEmail() {
//		return email;
//	}
//	public void setEmail(String email) {
//		this.email = email;
//	}
//	public String getUsername() {
//		return username;
//	}
//	public void setUsername(String username) {
//		this.username = username;
//	}
//	public String getPassword() {
//		return password;
//	}
//	public void setPassword(String password) {
//		this.password = password;
//	}
//	
//	@Override
//	public String toString() {
//		return "User [id=" + id + ", fullname=" + fullname + ", email=" + email
//				+ ", username=" +username + ",password=" +password + "]";
//	}
//}

public class User {
	private int id;
	private String fullname;
	private String email;
	private String username;
	private String password;
	
	public User() {
		
	}

	public User(String fullname, String email, String username,String password) {
		
		this.fullname = fullname;
		this.email = email;
		this.username = username;
		this.password = password;
	}
	
	

	public User(int id, String fullname, String email, String username,String password) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.email = email;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", fullname=" + fullname + ", email=" + email
				+ ", username=" + username + ",password=" + password +"]";
	}

}
