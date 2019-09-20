package com.spring.dao;

import java.util.List;

import com.spring.dto.Bmember;

public interface BmemberDAO4 {

	List<Bmember> getNote(String email);

	void setOne(Bmember dto);
	
	public List<Bmember> getNoteByKeyword(Bmember dto);

	void insertNoteByUser(Bmember dto);//알림받는사람 일반회원

	void insertNoteByReal(Bmember dto);//알림받는사람 공인중개사

	String note_content(int id);

	int note_count(String email);

}
