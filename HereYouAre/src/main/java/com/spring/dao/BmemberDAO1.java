package com.spring.dao;

import java.util.List;

import com.spring.dto.Bmember;
public interface BmemberDAO1
{
	//----------------- realtor ---------------------
	
	public Bmember realtor_allInfo(String email);

	public List<Bmember> allRealtor();

	public List<Bmember> insertRequest();

	public void request(String email);

	public void real_update(Bmember dto);

	public List<Bmember> new_real();

	public List<Bmember> selectTop10();

  
}
