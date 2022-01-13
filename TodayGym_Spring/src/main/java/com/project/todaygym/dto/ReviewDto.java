package com.project.todaygym.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewDto {
	private int ronum;
	private int r_no;
	private String r_cate;
	private String r_title;
	private String r_contents;
	private String m_id;
	private Date r_date;
	private int r_score;
}
