package com.spring.dao;

import java.util.List;

import com.spring.dto.Tbl_heartlist;
import com.spring.dto.Tbl_join;

public interface Tbl_heartlistDao {
	public List<Tbl_heartlist> getHeartInfo(String email); 
	public int getHeartCount(int id); 
	public int insertHeartInfo(Tbl_heartlist dto); 
	public int deleteHeartInfo(Tbl_heartlist dto); 
	public List<String> getAllHeartInfo();
	
	public List<Tbl_join> joinArea(int heartID);
	public int deleteOnMypage (int id);
}
