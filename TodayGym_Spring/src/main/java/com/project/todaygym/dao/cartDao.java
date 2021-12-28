package com.project.todaygym.dao;

import java.util.List;

import com.project.todaygym.dto.cartDto;

public interface cartDao {
	//1. 장바구니 정보 불러오기
	public List<cartDto> getCartList();
}
