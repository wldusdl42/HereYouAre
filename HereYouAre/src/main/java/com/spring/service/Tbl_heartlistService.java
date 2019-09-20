package com.spring.service;

import java.util.List;

import com.spring.dto.Tbl_area;
import com.spring.dto.Tbl_heartlist;
import com.spring.dto.Tbl_join;

public interface Tbl_heartlistService {
	public String[][] getHeartInfo(String email);
	public int getHeartCount(int id); 
	public int insertHeartInfo(Tbl_heartlist dto); 
	public int deleteHeartInfo(Tbl_heartlist dto); 
	public String[] getAllHeartInfo();
	
	public List<Tbl_join> joinArea(int heartID);
	public int deleteOnMypage (int id);
}
