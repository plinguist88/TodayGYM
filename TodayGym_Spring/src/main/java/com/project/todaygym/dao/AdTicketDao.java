package com.project.todaygym.dao;

import java.util.List;
import java.util.Map;

import com.project.todaygym.dto.AdTicketDto;

public interface AdTicketDao {
	
	//전체 회원권 리스트 가져오기
	public List<AdTicketDto> getAdTList(Map<String, Integer> tmap);
	//페이징 처리
	public int getTicketLCnt();
	//회원권 상세정보 가져오기
	public AdTicketDto getTDetail(int t_no);

}
