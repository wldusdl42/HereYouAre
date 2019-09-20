package com.spring.dao;

import java.util.List;

import com.spring.dto.Bmember;

public interface BmemberDAO7 {

	//----------------- 부동산관련 정보 업데이트 요청 insert ---------------------
	
	void reqestMod(Bmember dto);

	List<Bmember> update_req();
	
}
