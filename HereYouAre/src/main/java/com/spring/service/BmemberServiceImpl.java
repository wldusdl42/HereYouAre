package com.spring.service;

import java.util.List;

import com.spring.dao.BmemberDAO;
import com.spring.dao.BmemberDAO1;
import com.spring.dao.BmemberDAO3;
import com.spring.dao.BmemberDAO4;
import com.spring.dao.BmemberDAO5;
import com.spring.dao.BmemberDAO6;
import com.spring.dao.BmemberDAO7;
import com.spring.dao.BmemberDAO8;
import com.spring.dto.Bmember;

public class BmemberServiceImpl implements BmemberService {

	private BmemberDAO empDao;//일반회원
	private BmemberDAO1 empDao1;//공인중개사

	private BmemberDAO3 empDao3;//탈퇴회원
	private BmemberDAO4 empDao4;//알림
	private BmemberDAO5 empDao5;//관리자로그인
	private BmemberDAO6 empDao6;//상담내역
	private BmemberDAO7 empDao7;//상담내역
	private BmemberDAO8 empDao8;//todo 리스트
	
	// 1. 일반회원
	public BmemberDAO getEmpDao() {
		return empDao;
	}
	public void setEmpDao(BmemberDAO empDao) {
		this.empDao = empDao;
	}
	// 2. 공인중개사
	public BmemberDAO1 getEmpDao1() {
		return empDao1;
	}
	public void setEmpDao1(BmemberDAO1 empDao1) {
		this.empDao1 = empDao1;
	}
	
	// 3. 탈퇴/탈퇴신청 회원 
	public BmemberDAO3 getEmpDao3() {
		return empDao3;
	}
	public void setEmpDao3(BmemberDAO3 empDao3) {
		this.empDao3 = empDao3;
	}
	// 4. 알림 
	public BmemberDAO4 getEmpDao4() {
		return empDao4;
	}
	public void setEmpDao4(BmemberDAO4 empDao4) {
		this.empDao4 = empDao4;
	}
	//5.어드민
	public BmemberDAO5 getEmpDao5() {
		return empDao5;
	}
	public void setEmpDao5(BmemberDAO5 empDao5) {
		this.empDao5 = empDao5;
	}
	//6.상담내역
	public BmemberDAO6 getEmpDao6() {
		return empDao6;
	}
	public void setEmpDao6(BmemberDAO6 empDao6) {
		this.empDao6 = empDao6;
	}
	//7.부동산관련 정보 업데이트 요청
	public BmemberDAO7 getEmpDao7() {
		return empDao7;
	}
	public void setEmpDao7(BmemberDAO7 empDao7) {
		this.empDao7 = empDao7;
	}
	//8.todoList
	public BmemberDAO8 getEmpDao8() {
		return empDao8;
	}
	public void setEmpDao8(BmemberDAO8 empDao8) {
		this.empDao8 = empDao8;
	}
	// 1. 일반회원----------------------------------------------------------
	@Override
	public Bmember getPwName(String email) {
	
		return empDao.getPwName(email);
	}
	@Override
	public List<Bmember> allUser() { 
		// 로그인 할 수 있는 일반회원
		return  empDao.allUser();
	}
	@Override
	public void update(Bmember bm) {
		// TODO Auto-generated method stub
		empDao.update(bm);
	}
	@Override
	public List<Bmember> new_user() {
		// TODO Auto-generated method stub
		return empDao.new_user();
	}
	// 2. 공인중개사--------------------------------------------------------
	
	@Override
	public Bmember realtor_allInfo(String email) {
		// TODO Auto-generated method stub
		return empDao1.realtor_allInfo(email);
	}
	
	@Override
	public List<Bmember> allRealtor() {
		// 로그인 할 수 있는 공인중개사
		return  empDao1.allRealtor();
	}
	
	@Override
	public List<Bmember> insertRequest() {
		// 회원가입 승인을 원하는 공인중개사
		return empDao1.insertRequest();
	}
	@Override
	public void request(String email) {
		// TODO Auto-generated method stub
		empDao1.request(email);
	}
	@Override
	public void real_update(Bmember dto) {
		// TODO Auto-generated method stub
		empDao1.real_update(dto);
	}
	@Override
	public List<Bmember> new_real() {
		// TODO Auto-generated method stub
		return empDao1.new_real();
	}
	@Override
	public List<Bmember> selectTop10() {
		// TODO Auto-generated method stub
		return empDao1.selectTop10();
	}
	// 3. 회원탈퇴----------------------------------------------------------
	@Override
	public void saveEmployee(Bmember dto) {
		// TODO Auto-generated method stub
		empDao3.saveEmployee(dto);
	}
	@Override
	public List<Bmember> deleteMember() {
		// TODO Auto-generated method stub
		return empDao3.deleteMember();
	}
	@Override
	public void delete_process(Bmember bm) {
		//일반회원삭제
		empDao.delete_process(bm);
	}
	@Override
	public void saveDelreal(Bmember dto) {
		// TODO Auto-generated method stub
		empDao3.saveDelreal(dto);
	}
	@Override
	public List<Bmember> delete_Req() {
		// TODO Auto-generated method stub
		return empDao3.delete_Req();
	}
	// 4. 알림------------------------------------------------------------
	@Override
	public List<Bmember> getNote(String email) {
		// TODO Auto-generated method stub
		return empDao4.getNote(email);
	}
	@Override
	public void setOne(Bmember dto) {
		// TODO Auto-generated method stub
		empDao4.setOne(dto);
	}
	@Override
	public List<Bmember> getNoteByKeyword(Bmember bm) {
		//일반회원 알림 insert
		return empDao4.getNoteByKeyword(bm);
	}
	public void insertNoteByUser(Bmember dto) {
		// TODO Auto-generated method stub
		empDao4.insertNoteByUser(dto);
	}
	@Override
	public void insertNoteByReal(Bmember dto) {
		//공인중개사 알림 insert
		empDao4.insertNoteByReal(dto);
	}
	@Override
	public String note_content(int id) {
		// TODO Auto-generated method stub
		return empDao4.note_content(id);
	}	
	@Override
	public int note_count(String email) {
		// TODO Auto-generated method stub
		return empDao4.note_count(email);
	}

	// 5. 어드민-----------------------------------------------------------
	@Override
	public Bmember adminCheck(String email) {
		// TODO Auto-generated method stub
		return empDao5.adminCheck(email);
	}
	// 6.상담신청insert------------------------------------------------------
	@Override
	public void insertConultList(Bmember dto) {
		// TODO Auto-generated method stub
		empDao6.insertConultList(dto);
	}
	@Override
	public List<Bmember> consultList(String email) {
		//상담내역 전체 불러오기
		return empDao6.consultList(email);
	}
	@Override
	public List<Bmember> consultList0(String email) {
		// TODO Auto-generated method stub
		return empDao6.consultList0(email);
	}
	@Override
	public List<Bmember> consultList1(String email) {
		// TODO Auto-generated method stub
		return empDao6.consultList1(email);
	}
	@Override
	public List<Bmember> consultList2(String email) {
		// TODO Auto-generated method stub
		return empDao6.consultList2(email);
	}
	@Override
	public List<Bmember> consultList3(String email) {
		// TODO Auto-generated method stub
		return empDao6.consultList3(email);
	}
	@Override
	public List<Bmember> consultList4(String email) {
		// TODO Auto-generated method stub
		return empDao6.consultList4(email);
	}
	@Override
	public List<Bmember> realConsult(String email) {
		// TODO Auto-generated method stub
		return empDao6.realConsult(email);
	}
	@Override
	public List<Bmember> realConsult0(String email) {
		// TODO Auto-generated method stub
		return empDao6.realConsult0(email);
	}
	@Override
	public List<Bmember> realConsult1(String email) {
		// TODO Auto-generated method stub
		return empDao6.realConsult1(email);
	}
	@Override
	public List<Bmember> realConsult2(String email) {
		// TODO Auto-generated method stub
		return empDao6.realConsult2(email);
	}
	@Override
	public List<Bmember> realConsult3(String email) {
		// TODO Auto-generated method stub
		return empDao6.realConsult3(email);
	}
	@Override
	public List<Bmember> realConsult4(String email) {
		// TODO Auto-generated method stub
		return empDao6.realConsult4(email);
	}
	@Override
	public void set1(Bmember dto) {
		// TODO Auto-generated method stub
		empDao6.set1(dto);
	}
	@Override
	public void set2(Bmember dto) {
		// TODO Auto-generated method stub
		empDao6.set2(dto);
	}
	@Override
	public void set3(Bmember dto) {
		// TODO Auto-generated method stub
		empDao6.set3(dto);
	}
	//7. 공인중개사 부동산관련 업데이트..
	@Override
	public void reqestMod(Bmember dto) {
		//  부동산 관련정보 업데이트
		empDao7.reqestMod(dto);
	}
	@Override
	public List<Bmember> update_req() {
		// TODO Auto-generated method stub
		return empDao7.update_req();
	}
	@Override
	public void Create(Bmember dto) {
		// TODO Auto-generated method stub
		empDao8.Create(dto);
	}
	@Override
	public void Update(Bmember dto) {
		// TODO Auto-generated method stub
		empDao8.Update(dto);
	}
	@Override
	public void Delete(Bmember dto) {
		// TODO Auto-generated method stub
		empDao8.Delete(dto);
	}
	@Override
	public List<Bmember> Read() {
		// TODO Auto-generated method stub
		return empDao8.Read();
	}
	
	
		
	}
