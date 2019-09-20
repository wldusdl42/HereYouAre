package com.spring.service;

import java.util.List;

import com.spring.dto.HallOfFame;

public interface HallOfFameService {
	
	public int saveHallOfFame(HallOfFame hallOfFame);
	public int getAllCount();
	public HallOfFame getHallOfFame(int allCount);
	public List<HallOfFame> getHallOfFameList(int page_id);
}
