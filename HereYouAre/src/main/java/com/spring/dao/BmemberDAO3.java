package com.spring.dao;

import java.util.List;

import com.spring.dto.Bmember;

public interface BmemberDAO3 {
	
	public void saveEmployee(Bmember dto);

	public List<Bmember> deleteMember();

	public void saveDelreal(Bmember dto);

	public List<Bmember> delete_Req();
	
}
