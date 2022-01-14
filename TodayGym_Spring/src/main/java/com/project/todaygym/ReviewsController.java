package com.project.todaygym;

import java.util.Collection;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
	public String reviewWriteAct(ReviewDto rdto, RedirectAttributes rttr, MultipartHttpServletRequest mhr) {
		logger.info("reviewWriteAct()");
		//int number = Integer.parseInt(r_score);
		//rdto.setR_score(number);
		System.out.println(rdto.getR_score());

		String view = tServe.WriteAct(rdto , rttr, mhr);
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
	public ModelAndView reviewsDetail(int r_no) {
		logger.info("reviewsDetail()");

		mv = tServe.getReviewDetail(r_no);

		return mv;
	}

	//게시글 업데이트 
	@GetMapping("reviewsUpdate")
	public ModelAndView reviewsUpdate(int r_no,
			RedirectAttributes rttr) {
		logger.info("reviewsUpdate() - r_no: " + r_no);

		mv = tServe.reviewsUpdate(r_no, rttr);

		return mv;
	}


	@PostMapping("reviewsUpdateAct")
	public ModelAndView reviewsUpdateAct(Integer pageNum, String r_cate, ReviewDto rdto) {
		logger.info("reviewsUpdateAct()");
		System.out.println(rdto);

		mv = new ModelAndView();

		String msg = tServe.reviewsUpdateAct(rdto);
		mv = tServe.getReviewList(pageNum, r_cate);

		mv.addObject("msg", msg);
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