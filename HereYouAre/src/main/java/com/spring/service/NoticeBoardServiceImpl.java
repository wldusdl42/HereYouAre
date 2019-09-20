package com.spring.service;

import java.util.List;

import com.spring.dao.NoticeBoardDAO;
import com.spring.dto.NoticeBoard;
import com.spring.dto.PageMaker;
import com.spring.dto.PageMaker2;

public class NoticeBoardServiceImpl implements NoticeBoardService {
	
	private NoticeBoardDAO nbDao;
	
	public NoticeBoardDAO getNbDao() {
		return nbDao;
	}

	public void setNbDao(NoticeBoardDAO nbDao) {
		this.nbDao = nbDao;
	}

	@Override
	public int saveNoticeBoard(NoticeBoard noticeBoard) {
		
		return nbDao.saveNoticeBoard(noticeBoard);
	}

	@Override
	public NoticeBoard getNoticeBoardById(int id) {
		
		return nbDao.getNoticeBoardById(id);
	}

	@Override
	public List<NoticeBoard> getAllNoticeBoard() {
		
		return nbDao.getAllNoticeBoard();
	}

	@Override
	public int getAllCount() {
		
		return nbDao.getAllCount();
	}

	@Override
	public List<NoticeBoard> getList(PageMaker pm) {
		
		return nbDao.getList(pm);
	}

	@Override
	public List<NoticeBoard> getMainNoticeBoardList(PageMaker pm) {
		
		return nbDao.getList(pm);
	}

	@Override
	public List<NoticeBoard> getNoticeSearch(PageMaker2 pm2) {
		// TODO Auto-generated method stub
		return nbDao.getNoticeSearch(pm2);
	}

	@Override
	public int getAllCountSearch(String keyword) {
		
		return nbDao.getAllCountSearch(keyword);
	}
}
