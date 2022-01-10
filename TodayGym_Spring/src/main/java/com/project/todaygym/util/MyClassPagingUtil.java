package com.project.todaygym.util;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public class MyClassPagingUtil {
	
	private int maxNum;
	private int pageNum;
	private int listCnt;
	private int pageCnt;
	private String listName;
	
	public String makePaging() {
		
		String page = null;
		
		int totalPage = (maxNum % listCnt) > 0 ? maxNum/listCnt + 1 : maxNum/listCnt;
		
		int curGroup = (pageNum % pageCnt) > 0 ? pageNum/pageCnt + 1 : pageNum/pageCnt;
		
		int start = (curGroup * pageCnt) - (pageCnt - 1);
		
		int end = (curGroup * pageCnt) >= totalPage ? totalPage : curGroup * pageCnt;
		
		StringBuffer sb = new StringBuffer();
		
		
		if (start != 1) {
			sb.append("<a class='pageHtml-pno' href='" + listName + "?pageNum=" + (start - 1) + "'>");
			sb.append("&nbsp;이전&nbsp;</a>");
		}
		
		for(int i = start; i <= end; i++) {
			if(pageNum != i) {
				sb.append("<a class='pageHtml-pno' href='" + listName + "?pageNum=" + i + "'>");
				sb.append("&nbsp;" + i + "&nbsp;</font>");
			}
			
			else {
				sb.append("<font class='pageHtml-pno' style='color: red;'>");
				sb.append("&nbsp;" + i + "&nbsp;</font>");
			}
		}
		
		if (end != totalPage) {
			sb.append("<a class='pageHtml-pno' href='" + listName + "?pageNum=" + (end + 1) + "'>");
			sb.append("&nbsp;다음&nbsp;</a>");
		}
		
		page = sb.toString();
		
		return page;
	} // makePaging
	
} // class end
