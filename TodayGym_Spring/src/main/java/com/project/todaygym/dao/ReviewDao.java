package com.project.todaygym.dao;

import java.util.List;
import java.util.Map;

import com.project.todaygym.dto.ReviewDto;

public interface ReviewDao {

	//게시글 저장 
	public void WriteInsert(ReviewDto tdto);
	//게시글 목록 가져오기
	public List<ReviewDto> getList(Map<String , Integer> pmap);
	//디테일 가져오기
	public ReviewDto getDetail(String r_title);
	//리뷰 게시글 삭제
	public boolean reviewsDelete(Integer r_no);
	
}
