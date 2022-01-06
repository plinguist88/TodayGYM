package com.project.todaygym.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdMainDao {
	
	//회원 전체 인원수
	public int totalCnt();
	
	
}
