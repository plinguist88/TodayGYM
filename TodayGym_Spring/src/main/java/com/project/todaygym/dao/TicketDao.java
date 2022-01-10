package com.project.todaygym.dao;

import java.util.List;

import com.project.todaygym.dto.MyClassDto;
import com.project.todaygym.dto.MyClassPageDto;
import com.project.todaygym.dto.TicketDto;

public interface TicketDao {
	
	//________________________________________ 회원권 발급
	
	//__________ 회원권 발급하기
	public void ticketInsert(TicketDto tDto);
	
	//________________________________________ 마이페이지
	
	//__________ 수강내역 가져오기
	public List<MyClassDto> classListSelect(MyClassPageDto pageDto);	
	
	//__________ 전체 회원권 수 가져오기
	public int allTicketSelect(String m_id);
	
} // interface end
