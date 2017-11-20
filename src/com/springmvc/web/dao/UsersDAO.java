
package com.springmvc.web.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSourceUtils;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.web.model.User;


@Component("usersDao")
public class UsersDAO {

	private NamedParameterJdbcTemplate jdbc;

	
	public UsersDAO() {
		System.out.println("Successfully configured UsersDAO");
	}

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	public List<User> getUsers() {

		return jdbc.query("select * from users", new RowMapper<User>() {

			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();

				user.setId(rs.getInt("id"));
				user.setFullname(rs.getString("fullname"));
				user.setEmail(rs.getString("email"));
				user.setUsername(rs.getString("username"));

				return user;
			}

		});
	}

	
	public boolean update(User user) {
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(user);

		return jdbc.update("update users set fullname=:fullname, email=:email, username=:username,password=:password where id=:id", params) == 1;
	}
	
	public boolean create(User user) {
		
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(user);
		
		return jdbc.update("insert into users (fullname,email,username,password) values (:fullname, :email, :username,:password)", params) == 1;
	}
	
	@Transactional
	public int[] create(List<User> users) {
		
		SqlParameterSource[] params = SqlParameterSourceUtils.createBatch(users.toArray());
		
		return jdbc.batchUpdate("insert into users (id, fullname, email,username) values (:id, :fullname, :email, :username)", params);
	}
	
	public boolean delete(int id) {
		MapSqlParameterSource params = new MapSqlParameterSource("id", id);
		
		return jdbc.update("delete from users where id=:id", params) == 1;
	}

	public User getUser(int id) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);

		return jdbc.queryForObject("select * from users where id=:id", params,
				new RowMapper<User>() {

					public User mapRow(ResultSet rs, int rowNum)
							throws SQLException {
						User user = new User();

						user.setId(rs.getInt("id"));
						user.setFullname(rs.getString("fullname"));
						user.setEmail(rs.getString("email"));
						user.setUsername(rs.getString("username"));
						user.setPassword(rs.getString("password"));
						return user;
					}

				});
	}
	

}


	
