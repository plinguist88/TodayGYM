package com.project.todaygym.dao;

import java.util.List;

import com.project.todaygym.dto.CartDto;
import com.project.todaygym.dto.MyCartDto;
import com.project.todaygym.dto.OptionDto;
import com.project.todaygym.dto.ProductDto;

public interface ProductDao {
	
	//__________ 상품 리스트 가져오기
	public List<ProductDto> getProductList();
	
	//__________ 상품 상세 가져오기
	public ProductDto getProductSelect(String p_code);
	
	//__________ 상품 옵션 가져오기
	public List<OptionDto> getOptionSelect(String getCode);
	
	//__________ 장바구니에 저장하기
	public void myCartInsert(CartDto myCart);
	
	//__________ 장바구니 가져오기
	public List<MyCartDto> getMyCart(String getId);
		
		
} // interface end
