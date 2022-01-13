package com.project.todaygym.util;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public class rvPagingUtill {
	private int maxNum; //전체글 개수 저장 변수
	private int pageNum; //현재 보이는 페이지 번호 저장변수
	private int listCnt; // 한 페이지에 보일 게시글 개수 저장 변수
	private  int pageCnt; //뵤여질 페이지 번호 개수 저장 변수
	private String listName; //페이지 이름 저장 변수
	//생성자로 초기 데이터 입력
	//@AllArgsConstructor 어노테이션 사용
	
	//페이징용 html 코드 만드는 메소드
		public String makePaging() {
			String page = null;
			//listName= "review";
			
			//1. 전체 페이지 개수 구하기(페이지 당 10개 출력)
			//전체 게시글 9개 : 1페이지
			//전체 게시글 11개 : 2페이지
			int totalPage = (maxNum % listCnt) > 0 ?
					maxNum/listCnt + 1 :
					maxNum/listCnt;
			//2. 현재 페이지가 속해 있는 그룹 번호 구하기
			int curGroup = (pageNum % pageCnt) > 0 ?
					pageNum/pageCnt + 1 :
					pageNum/pageCnt;
			//3. 현재 보이는 페이지 그룹의 시작 번호 구하기
			int start = (curGroup * pageCnt) - (pageCnt - 1);
			
			//4. 현재 보이는 페이지 그룹의 마지막 번호 구하기
			int end = (curGroup * pageCnt) >= totalPage ?
					totalPage : curGroup * pageCnt;
			//각 그룹의 마지막 페이지 번호보다 전체 페이지 개수가 적으면
			//전체 페이지 개수의 번호를 마지막 페이지 번호로 사용.
			
			//html 코드를 저장할 변수
			StringBuffer sb = new StringBuffer();
			
			//이전 버튼 처리
			if(start != 1) {
				sb.append("<a class='pno' href='" + listName
						+ "&pageNum=" + (start - 1) + "'>");
				sb.append("&nbsp;이전&nbsp;</a>");
			}//<a class='pno' href='list?pageNum=4'> 이전 </a>
			//현재 페이지 그룹의 시작번호가 5인 경우(페이지 당 번호 수: 4)
			//현재 페이지 그룹의 시작번호가 1인 경우 위 코드는 생성되지 않음.
			
			//중간 번호 버튼 처리
			for(int i = start; i <= end; i++) {
				//현재 페이지 번호에는 링크를 걸지 않는다.
				if(pageNum != i) {//다른 페이지 번호
					sb.append("<a class='pno' href='" + listName
							+ "&pageNum=" + i + "'>");
					sb.append("&nbsp;" + i + "&nbsp;</a>");
				}//<a class='pno' href='list?pageNum=3'> 3 </a>
				else {//현재 페이지 번호
					sb.append("<font class='pno' style='color: red;'>");
					sb.append("&nbsp;" + i + "&nbsp;</font>");
				}//<font class='pno' style='color: red;'> 2 </font>
			}
			
			//다음 버튼 처리
			if(end != totalPage) {
				sb.append("<a class='pno' href='" + listName
						+ "&pageNum=" + (end + 1) + "'>");
				sb.append("&nbsp;다음&nbsp;</a>");
			}//<a class='pno' href='list?pageNum=5'> 다음 </a>
			
			//StringBuffer에 저장한 내용을 최종 문자열로 변환.
			page = sb.toString();
			
			return page;
		}
	}

