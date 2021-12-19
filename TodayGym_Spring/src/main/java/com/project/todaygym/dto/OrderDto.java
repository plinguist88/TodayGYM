package com.project.todaygym.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class OrderDto {
	
	private int p_no;
	private String c_code;
	private int p_total;
	private Timestamp p_date;
	
} // class end
