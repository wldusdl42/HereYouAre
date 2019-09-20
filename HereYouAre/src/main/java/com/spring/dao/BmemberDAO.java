package com.spring.dao;

import java.util.List;

import com.spring.dto.Bmember;

public interface BmemberDAO
{
	//----------------- user ---------------------
	
	public Bmember getPwName(String email);

	public List<Bmember> allUser();

	public void update(Bmember bm);

	public void delete_process(Bmember bm);

	public List<Bmember> new_user();
}
