package com.project.todaygym.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.todaygym.dto.SpotDto;

@Mapper
public interface AdSpotDao {
	
	//지점 전체 목록
	public List<SpotDto> spotAllSelect();
	//지점 등록
	public int spotInsert(SpotDto spotDto);
}
