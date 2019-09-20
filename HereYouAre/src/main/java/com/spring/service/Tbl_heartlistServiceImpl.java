package com.spring.service;

import java.util.List;

import com.spring.dao.Tbl_heartlistDao;
import com.spring.dto.Tbl_area;
import com.spring.dto.Tbl_heartlist;
import com.spring.dto.Tbl_join;

public class Tbl_heartlistServiceImpl implements Tbl_heartlistService {

	private Tbl_heartlistDao dao;
	
	public Tbl_heartlistDao getDao() {
		return dao;
	}

	public void setDao(Tbl_heartlistDao dao) {
		this.dao = dao;
	}

	
	@Override
	public String[][] getHeartInfo(String email) {
		System.out.println("------------------getHeartInfo Strat------------------");
		
		System.out.println(email);
		List<Tbl_heartlist> list = dao.getHeartInfo(email);
		
		String[][] strArr = new String[list.size()][3];
		
		for(int i = 0;i<list.size();i++)
		{
			strArr[i][0] = String.valueOf(list.get(i).getHeartId());
			strArr[i][1] = String.valueOf(list.get(i).getId());
			strArr[i][2] = list.get(i).getEmail();
		}
		return strArr;
	}


	@Override
	public int insertHeartInfo(Tbl_heartlist dto) {
		return dao.insertHeartInfo(dto);
	}

	@Override
	public int deleteHeartInfo(Tbl_heartlist dto) {
		return dao.deleteHeartInfo(dto);
	}

	@Override
	public String[] getAllHeartInfo() {
		
		List<String> list = dao.getAllHeartInfo();
		String[] strArr = new String[list.size()];
		
		for(int a=0;a<list.size();a++)
		{
			strArr[a] = String.valueOf(list.get(a));
			System.out.println(strArr[a]);
		}
		return strArr;
	}
	
	public List<Tbl_join> joinArea(int heartID) {
		return dao.joinArea(heartID);
	}

	@Override
	public int getHeartCount(int id) {
		return dao.getHeartCount(id);
	}

	@Override
	public int deleteOnMypage(int id) {
		// TODO Auto-generated method stub
		return dao.deleteOnMypage(id);
	}
}
