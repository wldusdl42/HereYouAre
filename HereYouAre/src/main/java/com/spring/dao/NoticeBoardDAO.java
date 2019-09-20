package com.spring.dao;

import java.util.List;

import com.spring.dto.NoticeBoard;
import com.spring.dto.PageMaker;
import com.spring.dto.PageMaker2;

public interface NoticeBoardDAO {

	public int saveNoticeBoard(NoticeBoard noticeBoard);
	public NoticeBoard getNoticeBoardById(int id);
	
	public List<NoticeBoard> getAllNoticeBoard();
	public int getAllCount();
	
	public List<NoticeBoard> getList(PageMaker pm);
	public List<NoticeBoard> getMainNoticeBoardList(PageMaker pm);
	
	public int getAllCountSearch(String keyword);
	public List<NoticeBoard> getNoticeSearch(PageMaker2 pm2);
}
