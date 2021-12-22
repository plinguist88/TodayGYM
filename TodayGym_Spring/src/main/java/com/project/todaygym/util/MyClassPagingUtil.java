package com.project.todaygym.util;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public class MyClassPagingUtil {
	
	private int myClassMaxNum;
	private int pageNum;
	private int listCnt;
	private int pageCnt;
	private String urlName;
	
	public String makeMyClassPaging() {
		String page = null;
		
		//__________ 1. 전체 페이지 개수
		int totalPage = (myClassMaxNum % listCnt) > 0 ?
				myClassMaxNum/listCnt + 1 : myClassMaxNum/listCnt;
		
		//__________ 2. 페이지 그룹 개수
		int curGroup = (pageNum % pageCnt) > 0 ?
				pageNum/pageCnt + 1 : pageNum/pageCnt;
		
		//__________ 3. 현재 페이지 그룹 시작 번호
		
		//__________ 4. 현재 페이지 그룹 마지막 번호
		
		return null;
	} // makeMyClassPaging end
	
} // class end
