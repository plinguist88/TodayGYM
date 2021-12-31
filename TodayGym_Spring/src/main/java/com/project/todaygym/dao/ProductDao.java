package com.project.todaygym.dao;

import java.util.List;

import com.project.todaygym.dto.CartDto;
import com.project.todaygym.dto.MyCartDto;
import com.project.todaygym.dto.OptionDto;
import com.project.todaygym.dto.ProductDto;

public interface ProductDao {
	
	//1. 구매메인 상품 리스트 출력하기
	public List<ProductDto> getProductList();
	//2. 구매 상세 상품 정보 출력하기
	public ProductDto getProductSelect(String p_code);
	//3. 구매 상세 옵션 가져오기
	public List<OptionDto> getOptionSelect(String getCode);
	//4. 장바구니에 저장하기
	public void myCartInsert(CartDto myCart);
	//5. 장바구니 가져오기
	public List<MyCartDto> getMyCart(String getId);
	
	public void deleteMyCart(String m_id);
}
