package com.project.todaygym.dao;

import java.util.List;

import com.project.todaygym.dto.priceDto;

public interface priceDao {
	//1. 상세항목 가져오기
	public List<priceDto> getContents(String b_code);
	//2. 장바구니 상세항목 가져오기
	public String cartInsert(priceDto cart);
}
