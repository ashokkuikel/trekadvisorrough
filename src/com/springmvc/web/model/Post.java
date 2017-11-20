/**
 * 
 */
package com.springmvc.web.model;

import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author Server
 *
 */
public class Post {
	
	private int post_id;
	private String post_title;
	private String post_description;
	private String post_category;
	private String post_price;
	private byte[] post_image;
	
	public Post(){
		
	}
	

	public Post(String post_title, String post_description, String post_category, String post_price,
			byte[] post_image) {
		this.post_title = post_title;
		this.post_description = post_description;
		this.post_category = post_category;
		this.post_price = post_price;
		this.post_image = post_image;
	}

	public Post(int post_id, String post_title, String post_description, String post_category, String post_price,
			byte[] post_image) {
		super();
		this.post_id = post_id;
		this.post_title = post_title;
		this.post_description = post_description;
		this.post_category = post_category;
		this.post_price = post_price;
		this.post_image = post_image;
	}

	public int getPost_id() {
		return post_id;
	}

	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}

	public String getPost_title() {
		return post_title;
	}

	public void setPost_title(String string) {
		this.post_title = string;
	}

	public String getPost_description() {
		return post_description;
	}

	public void setPost_description(String post_description) {
		this.post_description = post_description;
	}

	public String getPost_category() {
		return post_category;
	}

	public void setPost_category(String post_category) {
		this.post_category = post_category;
	}

	public String getPost_price() {
		return post_price;
	}

	public void setPost_price(String post_price) {
		this.post_price = post_price;
	}


	public byte[] getPost_image() {
		return post_image;
	}


	public void setPost_image(byte[] post_image) {
		this.post_image = post_image;
	}


	@Override
	public String toString() {
		return "Post [post_id=" + post_id + ", post_title=" + post_title + ", post_description=" + post_description
				+ ", post_category=" + post_category + ", post_price=" + post_price + ", post_image="
				+ Arrays.toString(post_image) + "]";
	}
	
	

}
