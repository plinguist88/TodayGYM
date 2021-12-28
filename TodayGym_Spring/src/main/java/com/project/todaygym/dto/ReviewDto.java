package com.project.todaygym.dto;

import java.security.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class ReviewDto {
	private int r_no;
	private String r_cate;
	private String r_title;
	private String r_contents;
	private String m_id;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss" ,
			timezone = "Asia/Seoul")
	private Timestamp r_date;
	private int r_score;
}
