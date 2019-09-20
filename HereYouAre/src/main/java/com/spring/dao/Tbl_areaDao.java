package com.spring.dao;

import java.util.List;

import com.spring.dto.Tbl_area;

public interface Tbl_areaDao {
	public List<Tbl_area> getEstateInfo(String adongCd);
	public List<Tbl_area> getEstateInfoById(int id);
	public List<Tbl_area> myBuilding(String email);
}
