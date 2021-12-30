package com.project.todaygym.dao;

import com.project.todaygym.dto.AdTicketDto;

public interface AdTicketDao {
	
	//전체 회원권 리스트 가져오기
	
	//회원권 상세정보 가져오기
	public AdTicketDto getTDetail(int t_no);

}
