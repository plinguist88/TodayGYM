package com.project.todaygym.dto;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class MemberFormDto {
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_email;
	private String m_phone1;
	private String m_phone2;
	private String m_phone3;
	private String m_birth;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm",
			timezone = "Asia/Seoul")
	private Timestamp m_joindate;
	private String m_point;
}
