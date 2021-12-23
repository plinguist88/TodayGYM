package com.project.todaygym.dao;

import com.project.todaygym.dto.buyDto;

public interface buyDao {
	//1. 회원권 정보 가져오기
	public buyDto buySelect(String b_code);
	
}
