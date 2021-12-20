package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminSpotController {

	private final Logger logger = LoggerFactory.getLogger(AdminSpotController.class);
	
	//지점 관리로 이동
	@GetMapping("adSpotMove.ad")
	public String adSpotMove() {
		logger.info("adSpotMove()");
		
		return "admin/adSpotList";
	}
}
