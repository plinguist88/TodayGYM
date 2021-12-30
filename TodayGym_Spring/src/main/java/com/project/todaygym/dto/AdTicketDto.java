package com.project.todaygym.dto;

import lombok.Data;

@Data
public class AdTicketDto {
	private int t_no;
	private String p_no;
	private char t_use;
	
	public int getT_no() {
		return t_no;
	}
	public void setT_no(int t_no) {
		this.t_no = t_no;
	}
	public String getP_no() {
		return p_no;
	}
	public void setP_no(String p_no) {
		this.p_no = p_no;
	}
	public char getT_use() {
		return t_use;
	}
	public void setT_use(char t_use) {
		this.t_use = t_use;
	}
}
