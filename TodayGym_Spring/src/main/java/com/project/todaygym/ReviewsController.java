package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dto.ReviewDto;
import com.project.todaygym.service.ReviewService;




@Controller
public class ReviewsController {	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@Autowired
	ReviewService tServe;
	
	private ModelAndView mv;
	
	@GetMapping("reviewsWrite")
	public String reviewsWrite() {
		logger.info("reviewsWrite()");
		return "reviews/reviewsWrite";
	}
	
	
	@PostMapping("reviewWriteAct")
	public String reviewWriteAct(ReviewDto rdto, RedirectAttributes rttr) {
		logger.info("reviewWriteAct()");
		
		rdto.setM_id("test0312");
		rdto.setR_score(3);
		System.out.println(rdto);
		
		
		
		String view = tServe.WriteAct(rdto , rttr);
		return view;
	}
	@GetMapping("review")
	public ModelAndView reviewList(Integer pageNum) {
		
		logger.info("reviewList()");
		
		mv = tServe.getReviewList(pageNum);
		
		return mv;
	}
}