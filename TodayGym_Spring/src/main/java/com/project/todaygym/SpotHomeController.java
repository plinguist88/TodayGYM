package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.SpotListService;

@Controller
public class SpotHomeController{
	
	private final Logger logger = LoggerFactory.getLogger(SpotHomeController.class);
	
	private ModelAndView mv;
	
@Autowired SpotListService spotListService;

	//spotHome 페이지로 이동
	@GetMapping("spotHome")
	public ModelAndView spotHome() {
		logger.info("spotHome()");
		
		mv = new ModelAndView();
		
		mv = spotListService.getSpotList();	
		return mv; 
	}
	//
	
	//spotDetail 페이지로 이동
	@GetMapping("spotDetail")
	public String spotDetail() {
		logger.info("spotDetail()");
		
		return "spot/spotDetail";
	}
	
	
}