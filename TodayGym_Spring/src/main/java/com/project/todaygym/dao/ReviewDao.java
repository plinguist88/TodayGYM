package com.project.todaygym.dao;

import com.project.todaygym.dto.ReviewDto;

public interface ReviewDao {

	//게시글 저장 
	public void WriteInsert(ReviewDto tdto);
}
