package com.spring.dto;

import java.util.ArrayList;
import java.util.List;

public class HallOfFame {
	
	private Integer id;
	private String title;
	private String contents;
	private String write_time;
	private String contents_image;
	
	public HallOfFame() {
		super();
	}

	public HallOfFame(Integer id, String title, String contents, String write_time, String contents_image) {
		super();
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.write_time = write_time;
		this.contents_image = contents_image;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getWrite_time() {
		return write_time;
	}

	public void setWrite_time(String write_time) {
		this.write_time = write_time;
	}

	public String getContents_image() {
		return contents_image;
	}

	public void setContents_image(String contents_image) {
		this.contents_image = contents_image;
	}
	
	
}
