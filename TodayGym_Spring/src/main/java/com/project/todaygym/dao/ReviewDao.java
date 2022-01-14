package com.project.todaygym.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.todaygym.dto.ReviewDto;
import com.project.todaygym.dto.ReviewImageDto;

@Mapper
public interface ReviewDao {

	//전체 리뷰 게시글 개수 구하기
	public int reviewsCnt();
	//리뷰 홈 페이지 카테고리 별 넘버
	public int rvCateCnt(String r_cate);
	//게시글 저장 
	public void WriteInsert(ReviewDto rdto);
	//최근 게시글 번호
	public int nextNum();
	//게시글 이미지 저장
	public void reviewImageInsert(ReviewImageDto reviewImageDto);
	//게시글 목록 가져오기
	public List<ReviewDto> getList(Map<String, String> pmap);
	//게시글 Cate 목록 가져오
	public List<ReviewDto> getCateList(Map<String, String> pmap);
	//디테일 가져오기
	public ReviewDto getDetail(int r_no);
	//디테일 이미지 가져오기
	public ReviewImageDto getImage(int r_no);
	//게시글 업데이트
	public boolean reviewsUpdate(ReviewDto tdto);
	//게시글 수정 엑트
	public int reviewsUpdateAct(ReviewDto rdto);
	//리뷰 게시글 삭제
	public int reviewsDelete(Integer r_no);

}
