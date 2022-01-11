package com.project.todaygym.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.ReviewDao;
import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.ReviewDto;
import com.project.todaygym.util.rvPagingUtill;

import lombok.extern.java.Log;

@Service
@Log
public class ReviewService {

	@Autowired
	private ReviewDao rdao;

	@Autowired
	private HttpSession session;

	private ModelAndView mv;

	private int listCnt = 10;  //페이지당 게시글 개수

	public String WriteAct(ReviewDto rdto , RedirectAttributes rttr) {


		String view = null;
		String msg = null;

		MemberDto getMember = (MemberDto)session.getAttribute("mb");			
		String getLoginId = getMember.getM_id();

		rdto.setM_id(getLoginId);

		try {
			rdao.WriteInsert(rdto);
			msg = "글 작성 성공";
			view = "redirect:review";

		}catch(Exception e) {
			e.printStackTrace();
			msg = "글 작성 실패";
			view = "redirect:reviewsWrite";

		}
		rttr.addFlashAttribute("msg",msg);

		System.out.println(msg);
		return view;
	}

	public ModelAndView getReviewList(Integer pageNum) {	
		mv = new ModelAndView();

		//null 또는 페이지 번호가 pageNum 으로 넘어옴.
		int num = (pageNum == null)? 1 : pageNum;
		//로그인 후에는 null 이 넘어옴

		//게시글 목록 가져오기
		Map<String, Integer> pmap=
				new HashMap<String, Integer>();
		pmap.put("num", num);
		pmap.put("lcnt",listCnt);
		//차후 view(jsp)에서 페이지 당 글 개수를 입력받아서
		//설정하는 부분을 처리하여 10 대신 사용
		List<ReviewDto> rList = new ArrayList<ReviewDto>();
		System.out.println("rList : " + rList);
		rList = rdao.getList(pmap);

		//화면에 전송.
		mv.addObject("rList", rList);
		System.out.println("rList : " + rList);
		//페이징처리
		String pageHtml = rvgetPaging(num);
		mv.addObject("paging",pageHtml);


		mv.setViewName("reviews/reviewsHome");

		return mv;

	}
	private String rvgetPaging(int num) {
		String pageHtml = null;
		
		//전체 글 개수 구하기(DAO)
		int maxNum = rdao.reviewsCnt();
		//한 페이지에 보여질 페이지 번호 개수
		int pageCnt = 5;
		String listName = "list";
		
		rvPagingUtill paging = new rvPagingUtill(maxNum, num, listCnt, pageCnt, listName);
		
		pageHtml = paging.makePaging();
		
		return pageHtml;
	}
	
	public ModelAndView getReviewDetail(String r_title) {
		mv = new ModelAndView();

		ReviewDto rDto = new ReviewDto();
		rDto = rdao.getDetail(r_title);

		mv.addObject("rDto", rDto);
		mv.setViewName("reviews/reviewsDetail");



		return mv;
	}
	public String reviewsDelete(Integer r_no) {

		Boolean result = rdao.reviewsDelete(r_no);

		System.out.println(result);

		String msg;

		if(result) {
			msg = "삭제 성공!!";
		} else {
			msg = "삭제 실패!!";
		}

		return msg;
	}
	
	
	public ModelAndView updateFrm(String r_title, RedirectAttributes rttr) {
		mv = new ModelAndView();
		ReviewDto rdto = rdao.getDetail(r_title);
		
		mv.addObject("rdto", rdto);
		mv.setViewName("updateFrm");
		return mv;
	}
}