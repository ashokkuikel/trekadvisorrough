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

import com.springmvc.web.model.Post;
import com.springmvc.web.service.PostsService;

/**
 * @author Server
 *
 */

@Controller
public class PostController {
	
	private PostsService PostsService;
	
	@Autowired
	public void setPostsService(PostsService postsService) {
		PostsService = postsService;
	}

	
	@RequestMapping("/New")
	public String getCreateUserPage() {
		return "post/Add-post";
	}
	
	
	@RequestMapping("/createPost")
	public ModelAndView createPost(Model model , Post post) {
		PostsService.savePost(post);
		List<Post> posts= PostsService.getCurrent();
		model.addAttribute("posts", posts);
		return new ModelAndView("redirect:Allpost");
	}
	
	
	@RequestMapping(value="/updatePost", method = RequestMethod.POST)
	public ModelAndView updatePost(Model model , Post post) {
		PostsService.editPost(post);
		List<Post> posts= PostsService.getCurrent();
		model.addAttribute("users", posts);
		return new ModelAndView("redirect:Allpost");
//		return "userCreated";
	}
	
	
	
	@RequestMapping(value = "/deletePost", method = RequestMethod.GET)
	public ModelAndView deletePost(Model model ,int post_id) {
		PostsService.deletePost(post_id);
		List<Post> posts= PostsService.getCurrent();
		model.addAttribute("users", posts);
		return new ModelAndView("redirect:Allpost");
	}
	

	
	@RequestMapping("/Allpost")
	public ModelAndView showPost(Model model) {
		List<Post> posts= PostsService.getCurrent();
		model.addAttribute("posts", posts);
		return new ModelAndView("post/All-Posts");
//		return "userCreated";
	}
	
	
	@RequestMapping("/editPost")
	public ModelAndView editPost(Model model,Post post,HttpServletRequest request) {
	post =  PostsService.findId(new Integer(request
				.getParameter("post_id")));
	model.addAttribute("post", post);
	System.out.println(post);
		return new ModelAndView("post/editPost");
//		return "userCreated";
	}
	
}
