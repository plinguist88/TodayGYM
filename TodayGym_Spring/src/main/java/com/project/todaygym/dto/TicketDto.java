package com.project.todaygym.dto;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class TicketDto {
	
	private int t_no;
	private String m_id;
	private String p_code;
	private String o_code;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm",
			timezone = "Asia/Seoul")
	private Timestamp t_issuedate;
	private int t_use;
	
} // class end
