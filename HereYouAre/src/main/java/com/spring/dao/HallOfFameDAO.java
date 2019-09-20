package com.spring.dao;

import java.util.List;

import com.spring.dto.HallOfFame;

public interface HallOfFameDAO {
	
	public int saveHallOfFame(HallOfFame hallOfFame);
	public int getAllCount();
	public HallOfFame getHallOfFame(int allCount);
	public List<HallOfFame> getHallOfFameList(int page_id);

}
