package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.buyService;



@Controller
public class buyController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private buyService bServ;
	private ModelAndView mv;


	//1. buyHome으로 이동(구매메인페이지)
	@GetMapping("buyHome")
	public ModelAndView buyHome() {
		logger.info("buyHome()");
		mv = bServ.getBuyList();
		return mv;
	}
	//2. 구매상세페이지정보넘기기
	@GetMapping("buyDetail")
	public ModelAndView buyDetail(String b_code) {
		logger.info("buyDetail()");
		mv = bServ.getDetail(b_code);
		return mv;
	}
	
	@GetMapping("cartHome")
	public String cartHome(String type, String price) {
		logger.info("cartHome() - t:" + type + ", p:" + price);
		
		return "cart/cartHome";
	}
}

















