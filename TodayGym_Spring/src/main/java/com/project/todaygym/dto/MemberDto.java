package com.project.todaygym.dto;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class MemberDto {
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_email;
	private String m_phone;
	private String m_birth;
	@JsonFormat(pattern = "yyyy-MM-dd",
			timezone = "Asia/Seoul")
	private Timestamp m_joindate;
	private int m_level;
	
	//검색필터
	private String type;
	private String keyword;
	
} // class end, 멤버테이블, mifo 뷰용 DTO
