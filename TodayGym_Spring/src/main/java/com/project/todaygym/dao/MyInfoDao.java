package com.project.todaygym.dao;

import java.util.List;
import java.util.Map;

import com.project.todaygym.dto.MyClassDto;

public interface MyInfoDao {

	//________________________________________ 수강내역
	
	//__________ 수강내역 가져오기
	public List<MyClassDto> myClassListSelect(Map<String, Integer> myClassMap);
	
	//__________ 총 수강내역 갯수 가져오기
	public int myClassMaxSelect();
} // interface end
