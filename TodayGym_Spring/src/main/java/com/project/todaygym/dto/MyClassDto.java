package com.project.todaygym.dto;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class MyClassDto {
	
	private String p_img;
	private String p_cate;
	private String p_subcate;
	private String o_month;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm",
			timezone = "Asia/Seoul")
	private Timestamp t_issuedate;
	private int t_use;
	
} // class end
