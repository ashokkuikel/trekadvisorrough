package com.springmvc.web.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.sql.PreparedStatement;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSourceUtils;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowCountCallbackHandler;

import com.springmvc.web.model.Post;
import com.springmvc.web.model.User;

import com.springmvc.web.model.Login;


@Component("loginDAO")
public class LoginDAO  {
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
		

	public Login isValidUser(String username, String password) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("username", username);
		params.addValue("password", password);

		return jdbc.queryForObject("select username from users where username=:username and password=:password", params,
				new RowMapper<Login>() {

					public Login mapRow(ResultSet rs, int rowNum)
							throws SQLException {
						
						Login login = new Login();
						login.setUsername(rs.getString("username"));
						
						return login;
					}
		});
	}
	
	public boolean doesRegionExist(String username, String password) {
	    HashMap<String, Object> params = new HashMap<String, Object>();
	    params.put("username", username);
		params.put("password", password);

	    SqlRowSet result = jdbc.queryForRowSet("SELECT * FROM USERS WHERE username = (:username) AND password = (:password)", params);
	    boolean status= false;
		if (result.next())
			return (result.getInt(1) > 0);
		else
			status = false;
		return status;
	    }
}
