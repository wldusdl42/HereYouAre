package com.spring.service;

import com.spring.dao.JoinDAO;
import com.spring.dto.JoinRealtor;
import com.spring.dto.JoinUser;

public class JoinServiceImpl implements JoinService {
	private JoinDAO dao;
	
	public JoinDAO getDao() {
		return dao;
	}

	public void setDao(JoinDAO dao) {
		this.dao = dao;
	}

	@Override
	public int insertUser(JoinUser juser) {
		return dao.insertUser(juser);
	}

	@Override
	public int insertRealtor(JoinRealtor jreal) {
		return dao.insertRealtor(jreal);
	}

	@Override
	public int getKey(String email, String checkEmail) {
		return dao.getKey(email, checkEmail);
	}

	@Override
	public int alterKey(String email, String checkEmail) {
		return dao.alterKey(email, checkEmail);
	}

	@Override
	public int getKey_Realtor(String email, String checkEmail) {
		return dao.getKey_Realtor(email, checkEmail);
	}

	@Override
	public int alterKey_Realtor(String email, String checkEmail) {
		return dao.alterKey_Realtor(email, checkEmail);
	}

	@Override
	public int emailck(String email) {
		return dao.emailck(email);
	}
}
