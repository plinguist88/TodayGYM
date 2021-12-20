package com.project.todaygym.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MemberDto {
	private String m_id;
	private String m_pwd;
	private String m_name;
	private String m_email;
	private String m_phone;
	private String m_birth;
	private String m_joindate;
	private String m_point;
	
	
} // class end, 멤버테이블, mifo 뷰용 DTO
