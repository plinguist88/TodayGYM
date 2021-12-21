package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SpotHomeController{
	
	private final Logger logger = LoggerFactory.getLogger(SpotHomeController.class);

	//spotHome 페이지로 이동
	@GetMapping("spotHome")
	public String spotHome() {
		logger.info("spotHome()");
		
		return "spot/spotHome";
	}
	
	
}