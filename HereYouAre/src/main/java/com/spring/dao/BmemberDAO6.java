package com.spring.dao;

import java.util.List;

import com.spring.dto.Bmember;

public interface BmemberDAO6 {

	//----------------- 상담내역 ---------------------
	
	void insertConultList(Bmember dto); //상담신청하면 내용추가

	List<Bmember> consultList(String email);//보낸이가 유저 본인인 상담내역
	
	List<Bmember> consultList0(String email);

	List<Bmember> consultList1(String email);

	List<Bmember> consultList2(String email);

	List<Bmember> consultList3(String email);

	List<Bmember> consultList4(String email);
	
	List<Bmember> realConsult(String email);//받는이가 공인중개사 본인인 상담내역

	List<Bmember> realConsult0(String email);

	List<Bmember> realConsult1(String email);

	List<Bmember> realConsult2(String email);

	List<Bmember> realConsult3(String email);

	List<Bmember> realConsult4(String email);

	void set1(Bmember dto);

	void set2(Bmember dto);

	void set3(Bmember dto);


	
}
