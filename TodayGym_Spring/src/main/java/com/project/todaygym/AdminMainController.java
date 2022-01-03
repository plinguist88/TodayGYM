package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.todaygym.service.AdMainService;

@Controller
public class AdminMainController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(AdminMainController.class);
	
	@Autowired
	private AdMainService adMainServ;
	
	@GetMapping("/adMainCnt")
	public String adMainCnt(Integer num) {
		
		logger.info("adMainCnt()");
		
		String cnt = adMainServ.adMemCnt(num);
		
		return cnt;
	}
}
