/**
 * 
 */
package com.springmvc.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.web.dao.PostsDAO;
import com.springmvc.web.model.Post;


/**
 * @author Server
 *
 */
@Service("postsService")
public class PostsService {
	
	private PostsDAO postsDAO;
	
	@Autowired
	public void setPostsDao(PostsDAO postsDAO) {
		this.postsDAO = postsDAO;
	}
	
	
	public List<Post> getCurrent() {
		return postsDAO.getPosts();
	}
	
	
	public boolean savePost(Post post) {
		return postsDAO.create(post);
	}

	public boolean deletePost(int post_id) {
		return postsDAO.delete(post_id);
	}
	

	public boolean updatePost(Post post)
	{
		return postsDAO.update(post);
	}
	
	public Post findId(int post_id) {
		return postsDAO.getPost(post_id);
	}
	
	public boolean editPost(Post post) {
		return postsDAO.update(post);
	}
	


}
