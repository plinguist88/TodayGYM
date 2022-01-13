package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.SpotDetailInfoService;
import com.project.todaygym.service.SpotListService;

@Controller
public class SpotHomeController{
	
	private static final Logger logger = LoggerFactory.getLogger(SpotHomeController.class);
	
	private ModelAndView mv;
	
@Autowired SpotListService spotListService;
@Autowired SpotDetailInfoService spotDetailInfoService;
// 이 형태가 뭐지? 물어보쟝 

	//spotHome 페이지로 이동
	@GetMapping("spotHome")
	public ModelAndView spotHome() {
		logger.info("spotHome()");
		
		mv = new ModelAndView();
		
		mv = spotListService.getSpotList();	
		return mv; 
	}
	//
	
	/*
	 * //spotDetail 페이지로 이동
	 * 
	 * @GetMapping("spotDetail") public String spotDetail() {
	 * logger.info("spotDetail()");
	 * 
	 * return "spot/spotDetail"; }
	 */
	
	@GetMapping("/spotDetail") //URL 주소로 이동~ 
	public ModelAndView spotDetail(String s_code) {
		
		logger.info("spotDetail()");
		
		mv = new ModelAndView();
		//ModelAndView라는 빈깡통을 mv로 변수 지정. 
		mv = spotDetailInfoService.getSpotDetailInfo(s_code);
		//mv라는 곳에 spotDetailInfoService에 있는
		//s_code를 참고한 getSpotDetailInfo(); 메서드를 사용하겠다. 
		//-->빈깡통에 내용물을 채워 놓은 코드 
		return mv; 
		// 결과 값으로 빈깡통에 채워 놓은 jsp와 데이터를 답은 값을 출력 
	}//spotDetail end 
	
	
}//SpotHomeController end 