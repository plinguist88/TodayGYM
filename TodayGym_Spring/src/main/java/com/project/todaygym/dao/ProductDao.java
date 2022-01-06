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
	//6. 장바구니 개별삭제하기
	public boolean cartDelete(Integer c_code);
	//7. 장바구니 전체삭제하기
	public boolean cartTDel();
	
	//________________________________________ Order area
	
	//__________ 장바구니 결제 갯수 가져오기
	public int getTotalCartCnt(String m_id);
	
	//__________ 장바구니 코드 최솟값 가져오기
	public int getCartCode(String m_id);
	
	//__________ 장바구니 해당코드 데이터 가져오기
	public CartDto getCartList(Integer getCartCode);
		
	//__________ 장바구니 삭제하기
	public void deleteCart(Integer Ccode);
	
}
