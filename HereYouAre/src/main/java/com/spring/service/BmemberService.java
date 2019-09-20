package com.spring.service;


import java.util.List;

import com.spring.dto.Bmember;

public interface BmemberService
{
	//-----------[ 일반회원 ]----------------------------
	
	public Bmember getPwName(String email);

	public List<Bmember> allUser(); // 로그인 할 수 있는 일반회원
	
	public void update(Bmember dto);//전체 업데이트
	
	public List<Bmember> new_user();
	//-----------[ 공인중개사 ]----------------------------
	
	public Bmember realtor_allInfo(String email);
	
	public List<Bmember> allRealtor(); //로그인 할 수 있는 공인중개사
	
	public List<Bmember> insertRequest(); //가입승인 요청 수 checking=null 의 수
	
	public void request(String email);//가입승인 받으면 checking='y'로 업데이트
	
	public void real_update(Bmember dto);//기본정보 업데이트
	
	public List<Bmember> new_real();

	//-----------[ 회원탈퇴 ]----------------------------
	public void saveEmployee(Bmember dto);

	public List<Bmember> deleteMember(); // 탈퇴회원 추가

	public void delete_process(Bmember dto); //일반회원에서 삭제
	
	public void saveDelreal(Bmember dto); //탈퇴요청
	//-------------[ 알림 ]----------------------
	public List<Bmember> getNote(String email);

	public void setOne(Bmember dto);

	public Bmember adminCheck(String email);

	public void insertNoteByUser(Bmember dto);//상담신청완료하면 알림에 추가
	
	public String note_content(int id);
	
	public int note_count(String email);
	//-------------[ 상담 ]----------------------
	public void insertConultList(Bmember dto);//알림받는사람 일반회원

	public void insertNoteByReal(Bmember dto);//알림받는사람 공인중개사

	public List<Bmember> consultList(String email);//보낸사람이 유저본인의 상담내역
	
	public List<Bmember> consultList0(String email);
	
	public List<Bmember> consultList1(String email);

	public List<Bmember> consultList2(String email);

	public List<Bmember> consultList3(String email);

	public List<Bmember> consultList4(String email);
	
	public List<Bmember> realConsult(String email);//받는사람이 공인중개사 본인의 상담내역
	
	public List<Bmember> realConsult0(String email);

	public List<Bmember> realConsult1(String email);

	public List<Bmember> realConsult2(String email);

	public List<Bmember> realConsult3(String email);

	public List<Bmember> realConsult4(String email);
	//-------------[ 요청 ]----------------------
	public void reqestMod(Bmember dto);//부동산관련 정보 업데이트 요청

	public List<Bmember> update_req();
	
	public List<Bmember> getNoteByKeyword(Bmember bm);

	public List<Bmember> delete_Req();

	public void set1(Bmember dto);

	public void set2(Bmember dto);

	public void set3(Bmember dto);
	//-------------[ todoList ]----------------------
	public void Create(Bmember dto);

	public List<Bmember> Read();

	public void Update(Bmember dto);

	public void Delete(Bmember dto);

	public List<Bmember> selectTop10();


	




	

	

	

	

	

	

	
	

	

	
	
	
	
}
