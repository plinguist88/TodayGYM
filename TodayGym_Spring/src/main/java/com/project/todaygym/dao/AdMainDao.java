package com.project.todaygym.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.todaygym.dto.SpotOverviewDto;

@Mapper
public interface AdMainDao {
	
	//회원 전체 인원수
	public int totalCnt();
	
	//회원권 전체 수
	public int totalTicket();
	
	//지점 전체 수
	public int totalSpot();
	
	//지점 오버뷰 리스트
	public List<SpotOverviewDto> spotOverviewSelect();
	
	//리뷰 전체 수
	public int totalReview();
	
}
