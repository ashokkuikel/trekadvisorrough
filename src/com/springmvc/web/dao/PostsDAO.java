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

import com.springmvc.web.model.Post;
import com.springmvc.web.model.User;


@Component("postsDAO")
public class PostsDAO {
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	
	public List<Post> getPosts() {

		return jdbc.query("select * from posts", new RowMapper<Post>() {

			public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
				Post post = new Post();

				post.setPost_id(rs.getInt("post_id"));
				post.setPost_title(rs.getString("post_title"));
				post.setPost_description(rs.getString("post_description"));
				post.setPost_category(rs.getString("post_category"));
				post.setPost_price(rs.getString("post_price"));
				
				
				return post;
			}

		});
	}
	
	public boolean create(Post post) {
		
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(post);
		
		return jdbc.update("insert into posts (post_title, post_description, post_category, post_price) values (:post_title, :post_description, :post_category, :post_price)", params) == 1;
	}
	
	@Transactional
	public int[] create(List<Post> posts) {
		
		SqlParameterSource[] params = SqlParameterSourceUtils.createBatch(posts.toArray());
		
		return jdbc.batchUpdate("insert into posts (post_id, post_title, post_description, post_category, post_price) values (:post_id, :post_title, :post_description, :post_category, :post_price)", params);
	}
	
	public boolean update(Post post) {
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(post);

		return jdbc.update("update posts set post_title=:post_title, post_description=:post_description, post_category=:post_category,post_price=:post_price where post_id=:post_id", params) == 1;
	}
	public boolean delete(int post_id) {
		MapSqlParameterSource params = new MapSqlParameterSource("post_id", post_id);
		
		return jdbc.update("delete from users where post_id=:post_id", params) == 1;
	}
	
	public Post getPost(int post_id) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("post_id", post_id);

		return jdbc.queryForObject("select * from posts where post_id=:post_id", params,
				new RowMapper<Post>() {

					public Post mapRow(ResultSet rs, int rowNum)
							throws SQLException {
						Post post = new Post();
						
						post.setPost_id(rs.getInt("post_id"));
						post.setPost_title(rs.getString("post_title"));
						post.setPost_description(rs.getString("post_description"));
						post.setPost_category(rs.getString("post_category"));
						post.setPost_price(rs.getString("post_price"));
						
						return post;
					}

				});
	}
	
	

}
