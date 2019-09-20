package com.spring.dao;

import java.util.List;

import com.spring.dto.Bmember;

public interface BmemberDAO8 {

	void Create(Bmember dto);

	List<Bmember> Read();

	void Update(Bmember dto);

	void Delete(Bmember dto);


	
}
