package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/")
	public String home() {
		logger.info("home()");
		
		return "home";
	}
	
	// buyHome으로 이동
	@GetMapping("buyHome")
	public String buyHome() {
		logger.info("buyHome()");
		return "buy/buyHome";
	}
	
	// 관리자 메인으로 이동
	@GetMapping("/adMainMove.ad")
	public String adMainMove() {
		logger.info("adMainMove()");
		return "admin/adMain";
	}
	
	@GetMapping("/memberLogin")
	public String memberLogin() {
		logger.info("memberLogin()");
		return "member/memberLogin";
	}
	
	@GetMapping("/memberJoin")
	public String memberJoin() {
		logger.info("memberJoin()");
		return "member/memberJoin";
	}
} // class end
