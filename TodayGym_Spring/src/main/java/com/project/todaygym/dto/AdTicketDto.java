package com.project.todaygym.dto;

import lombok.Data;

@Data
public class AdTicketDto {
	private int t_no; //회원권 번호(PK)
	private String m_id; //구매자 아이디(FK)
	private String p_code;//상품 코드(FK)
	private String o_code;//가격 정보(FK)
	private char t_use; //사용 여부
}
