package com.spring.dto;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	
	private int pageid;
	private int total;
	
	public int getPageid() {
		return pageid;
	}
	public void setPageid(int pageid) {
		this.pageid = pageid;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
}
