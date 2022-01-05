package com.project.todaygym.dao;

import java.util.List;

import com.project.todaygym.dto.MyClassDto;
import com.project.todaygym.dto.TicketDto;

public interface TicketDao {
	
	//________________________________________ 회원권 발급
	
	//__________ 회원권 발급하기
	public void issueClass(TicketDto tDto);
	
	
	//________________________________________ 마이페이지
	
	//__________ 수강내역 가져오기
	public List<MyClassDto> myClassListSelect(String getId);	
	
} // interface end
