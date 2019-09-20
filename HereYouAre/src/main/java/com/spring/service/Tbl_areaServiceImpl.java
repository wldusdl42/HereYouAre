package com.spring.service;

import java.util.List;

import com.spring.dao.Tbl_areaDao;
import com.spring.dto.Tbl_area;

public class Tbl_areaServiceImpl implements Tbl_areaService {

	private Tbl_areaDao dao;
	
	public Tbl_areaDao getDao() {
		return dao;
	}

	public void setDao(Tbl_areaDao dao) {
		this.dao = dao;
	}

	@Override
	public String[][] getEstateInfo(String adongCd) {
		// TODO Auto-generated method stub
		System.out.println("------------------getEstateInfo Strat------------------");
		adongCd = adongCd.substring(0, adongCd.length()-2);
		
		List<Tbl_area> list = dao.getEstateInfo(adongCd);
		
		String[][] strArr = new String[list.size()][12];
		
		for(int i = 0;i<list.size();i++)
		{
			strArr[i][0] = String.valueOf(list.get(i).getId());
			strArr[i][1] = list.get(i).getAgencyName();
			strArr[i][2] = list.get(i).getBulidingType();
			strArr[i][3] = list.get(i).getRentType();
			strArr[i][4] = list.get(i).getAreaPrice();
			strArr[i][5] = list.get(i).getAreaSize();
			strArr[i][6] = list.get(i).getFloor();
			strArr[i][7] = list.get(i).getAdongCd();
			strArr[i][8] = list.get(i).getAreaAddress();
			strArr[i][9] = list.get(i).getEmail();
			strArr[i][10] = list.get(i).getTel();
			strArr[i][11] = list.get(i).getAgencyAddress();
			
		}
		
		return strArr;
	}

	@Override
	public String[] getEstateInfoById(int id) {
		// TODO Auto-generated method stub
List<Tbl_area> list = dao.getEstateInfoById(id);
		
		String[] strArr = new String[12];
		
		
			strArr[0] = String.valueOf(list.get(0).getId());
			strArr[1] = list.get(0).getAgencyName();
			strArr[2] = list.get(0).getBulidingType();
			strArr[3] = list.get(0).getRentType();
			strArr[4] = list.get(0).getAreaPrice();
			strArr[5] = list.get(0).getAreaSize();
			strArr[6] = list.get(0).getFloor();
			strArr[7] = list.get(0).getAdongCd();
			strArr[8] = list.get(0).getAreaAddress();
			strArr[9] = list.get(0).getEmail();
			strArr[10] = list.get(0).getTel();
			strArr[11] = list.get(0).getAgencyAddress();
			
		
		
		return strArr;
	}

	@Override
	public List<Tbl_area> myBuilding(String email) {
		// 나의매물
		return dao.myBuilding(email);
	}

}
