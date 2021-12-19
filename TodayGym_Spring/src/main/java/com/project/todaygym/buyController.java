package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class buyController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// 헬스구매상세페이지 이동
	@GetMapping("bHealthDetail")
	public String bHealthDetail() {
		logger.info("bHealthDetail()");
		return "buy/bHealthDetail";
	}
	// 수영구매상세페이지 이동
	@GetMapping("bSwimDetail")
	public String bSwimDetail() {
		logger.info("bSwimDetail()");
		return "buy/bSwimDetail";
	}
	// 클라이밍구매상세페이지 이동
	@GetMapping("bClimbDetail")
	public String bClimbDetail() {
		logger.info("bClimbDetail()");
		return "buy/bClimbDetail";
	}
	// 크로스핏구매상세페이지 이동
	@GetMapping("bCrossDetail")
	public String bCrossDetail() {
		logger.info("bCrossDetail()");
		return "buy/bCrossDetail";
	}
	
	
	
	
	
	
	
	
}
