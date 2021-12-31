package com.project.todaygym.dao;

import com.project.todaygym.dto.TicketDto;

public interface TicketDao {
	
	//________________________________________ 회원권 발급
	
	//__________ 회원권 발급하기
	public void issueClass(TicketDto tDto);
	
} // interface end
