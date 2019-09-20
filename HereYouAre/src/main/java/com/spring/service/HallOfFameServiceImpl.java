package com.spring.service;

import java.util.List;

import com.spring.dao.HallOfFameDAO;
import com.spring.dto.HallOfFame;

public class HallOfFameServiceImpl implements HallOfFameService {
	
	private HallOfFameDAO hfDao;

	public HallOfFameDAO getHfDao() {
		return hfDao;
	}

	public void setHfDao(HallOfFameDAO hfDao) {
		this.hfDao = hfDao;
	}

	@Override
	public int saveHallOfFame(HallOfFame hallOfFame) {
		return hfDao.saveHallOfFame(hallOfFame);
	}

	@Override
	public int getAllCount() {
		return hfDao.getAllCount();
	}

	@Override
	public HallOfFame getHallOfFame(int allCount) {
		return hfDao.getHallOfFame(allCount);
	}

	@Override
	public List<HallOfFame> getHallOfFameList(int page_id) {
		return hfDao.getHallOfFameList(page_id);
	}
	
	
	
}
