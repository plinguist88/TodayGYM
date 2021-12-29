package com.project.todaygym.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.ReviewDao;
import com.project.todaygym.dto.ReviewDto;

@Service
public class ReviewService {

	@Autowired
	private ReviewDao rdao;
	
	private ModelAndView mv;
	
	private int listCnt = 10;  //페이지당 게시글 개수
	
	public String WriteAct(ReviewDto rdto , RedirectAttributes rttr) {


		String view = null;
		String msg = null;


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
		
		List<ReviewDto> rList = rdao.getList(pmap);
		
		//화면에 전송.
		mv.addObject("rList", rList);
		
		
		mv.setViewName("reviews/reviewsHome");
		
		return mv;
		
		
	}
	

	
}