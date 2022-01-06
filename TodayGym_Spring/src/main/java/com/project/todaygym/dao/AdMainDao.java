package com.project.todaygym.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.todaygym.dto.AgeGroupDto;

@Mapper
public interface AdMainDao {
	
	//회원 총원수 출력
	public int totalCnt();
	//연령대 출력
	public List<AgeGroupDto> ageGroup();
}
