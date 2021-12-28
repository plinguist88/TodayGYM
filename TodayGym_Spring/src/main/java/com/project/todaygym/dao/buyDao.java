package com.project.todaygym.dao;

import java.util.List;

import com.project.todaygym.dto.buyDto;

public interface buyDao {
	//1. 구매메인페이지 내용불러오기
	public List<buyDto> getBuyList();
	//2. 구매상세페이지 내용불러오기
	public buyDto getDetail(String b_code);
	
}
