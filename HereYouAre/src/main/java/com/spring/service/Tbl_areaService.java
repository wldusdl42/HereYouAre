package com.spring.service;

import java.util.List;

import com.spring.dto.Tbl_area;

public interface Tbl_areaService {
	public String[][] getEstateInfo(String adongCd);
	public String[] getEstateInfoById(int id);
	
	public List<Tbl_area> myBuilding(String email);//나의매물 가져오기

}
