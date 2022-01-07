package com.project.todaygym.dao;

import java.util.List;
import java.util.Map;

import com.project.todaygym.dto.CartDto;
import com.project.todaygym.dto.MyCartDto;
import com.project.todaygym.dto.OrderDto;

public interface OrderDao {
	
	//________________________________________ 장바구니 결제 페이지
	
	//__________ order_tb 초기화 하기
	public void orderListDelete(String m_id);
	
	//__________ 선택한 회원권 저장하기
	public void orderListInsert(OrderDto oDto);
	
	//__________ 저장된 회원권 가져오기
	public List<MyCartDto> orderListSelect(String m_id);
	
	//________________________________________ 장바구니 결제 실행
	
	//__________ 총 결제 횟수 가져오기
	public int totalOrderSelect(String m_id);
	
	//__________ 장바구니 코드 가져오기
	public int cartCodeSelect(String m_id);
	
	//__________ 장바구니 코드 데이터 가져오기
	public CartDto cartListSelect(Integer c_code);
	
	//__________ 결제목록 삭제하기
	public void orderDelete(Integer c_code);
	
	//__________ 장바구니 삭제하기
	public void cartListDelete(Integer c_code);
	
	//________________________________________ 구매하기 결제 페이지
	
	//__________ 구매하기 상품 가져오기
	public MyCartDto directOrderSelect(Map<String, String> dMap);
		
} // interface end
