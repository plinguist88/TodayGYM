package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dto.ReviewDto;
import com.project.todaygym.service.ReviewService;




@Controller
public class ReviewsController {	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@Autowired
	private ReviewService tServe;
	
	private ModelAndView mv;
	
	
	//글쓰기 이동 
	@GetMapping("reviewsWrite")
	public String reviewsWrite() {
		logger.info("reviewsWrite()");
		return "reviews/reviewsWrite";
	}
	
	
	//글작성 한것을 리스트로 넘기기
	@PostMapping("reviewWriteAct")
	public String reviewWriteAct(ReviewDto rdto, RedirectAttributes rttr) {
		logger.info("reviewWriteAct()");
		System.out.println("=====================" + rdto);
		String view = tServe.WriteAct(rdto , rttr);
		return view;		
	}
	
	
	//데이터베이스에 있는 목록을 가져오기  
	@GetMapping("review")
	public ModelAndView reviewList(Integer pageNum, String r_cate ) {
		
		logger.info("reviewList()");
		System.out.println("[목록] = " + r_cate);
		mv = tServe.getReviewList(pageNum, r_cate);
		
		return mv;
	}
	
	//detail 가져오기
	@GetMapping("reviewsDetail")
	public ModelAndView reviewsDetail(String r_title) {
		logger.info("reviewsDetail()");
	
		mv = tServe.getReviewDetail(r_title);
		
		return mv;
	}
	
	//delete 삭제하기
	@GetMapping("reviewsDelete")
	public ModelAndView reviewsDelete(Integer pageNum, String r_cate, Integer r_no) {
		logger.info("reviewsDelete()");
		String msg = tServe.reviewsDelete(r_no);
		mv = tServe.getReviewList(pageNum, r_cate);
		
		mv.addObject("msg", msg);
		return mv;
	}
	
}