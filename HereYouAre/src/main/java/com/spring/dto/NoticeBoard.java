package com.spring.dto;

import java.io.Serializable;

public class NoticeBoard implements Serializable {
	
	private static final long serialVersionUID = -1280037900360314186L;
	
	private Integer id;
	private String title;
	private String contents;
	private String write_time;
	
	public NoticeBoard()
	{
		super();
	}
	
	public NoticeBoard(Integer id, String title, String contents, String write_time) {
		super();
		System.out.print(id+", "+title+", "+contents+", "+write_time);
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.write_time = write_time;
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

	@Override
	public String toString() {
		return "HereYouAre [id=" + id + ", title=" + title + ", contents=" + contents + ", write_time=" + write_time
				+ "]";
	}
	

}
