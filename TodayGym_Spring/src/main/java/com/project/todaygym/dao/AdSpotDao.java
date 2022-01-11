package com.project.todaygym.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.todaygym.dto.SpotDto;
import com.project.todaygym.dto.SpotImageDto;

@Mapper
public interface AdSpotDao {
	
	//지점 전체 목록
	public List<SpotDto> spotAllSelect();
	//지점 코드 검색 목록
	public List<SpotDto> spotCodeSearchSelect(String keyword);
	//지점 이름 검색 목록
	public List<SpotDto> spotNameSearchSelect(String keyword);
	//지점 등록 자동번호 검색
	public String spotNextNumber();
	//지점 등록
	public int spotInsert(SpotDto spotDto);
	//지점 이미지 등록
	public int spotImageInsert(SpotImageDto spotImageDto);
	//지점 이미지 목록
	public List<SpotImageDto> spotImageSelect(String s_code);
	//지점 하나 정보
	public SpotDto spotOneSelect(String s_code);
	//지점 수정
	public int spotUpdate(SpotDto spotDto);
	//지점 삭제
	public int spotDelete(String s_code);
	//해당지점 정보 출력 
	public SpotDto spotDetailInfo(String s_code);
	//해당 이미지 정보 출력 
	public List<SpotImageDto> spotDetailImg(String s_code);
	
	
	//해당지점 이미지 출력 
	public SpotImageDto spotHomeImg(String s_code);
}
